# Internal functions used for the pre-processing of 'rd_transform' function:
#'
#' Recalculate REDCap calculated fields
#' @description
#' Function that recalculates every calculated field if the logic can be transcribed to R. Recall that calculated fields with smart-variables in the logic or variables in other events cannot be transcribed.
#'
#' The function will return the dataset and dictionary with the added recalculated variables (the name of the calculated field + `_recalc`) along with a table that shows the summary of the results.
#' @param data Dataset containing the REDCap data.
#' @param dic Dataset containing the REDCap dictionary.
#' @importFrom rlang :=
#'
############Calculated functions############
recalculate <- function(data, dic){

  field_type <- choices_calculations_or_slider_labels <- field_name <- trans <- recalc <- is_equal <- trans2 <- n <- N <- text1 <- text2 <- results <- NULL

  #Calculate for each calculated field the transcribed logic and if possible to transcribe recalculate it

  calc <- tibble::tibble(dic) %>%
    dplyr::filter(field_type == "calc") %>%
    dplyr::mutate(
      trans = purrr::map_chr(choices_calculations_or_slider_labels, function(x) {
        rlogic <- try(rd_rlogic(x, data), silent = TRUE)

        if (!inherits(rlogic, "try-error")) {
          rlogic
        } else{
          NA
        }

      }),
      calc = purrr::map2(field_name, trans, function(x, y) {
        if (!is.na(y)) {
          val <- data[, x]
          if(is.numeric(val)){
            as.numeric(val)
          }
        } else{
          NA
        }
      }),
      recalc = purrr::map(trans, function(x) {
        if (!is.na(x)) {
          val <- eval(parse(text = x))
          if(is.numeric(val)){
            as.numeric(val)
          }
        } else{
          NA
        }
      }),
      is_equal = purrr::map2_lgl(calc, recalc, identical),
      is_equal = ifelse(is.na(trans), NA, is_equal)
    )


  #Add this recalculated variables to data and dictionary and return both datasets

  calc_change <- calc %>%
    dplyr::filter(!is.na(trans))

  if(nrow(calc_change) > 0){

    for(i in 1:nrow(calc_change)){

      name <- stringr::str_glue("{calc_change$field_name[i]}_recalc")

      data <- data %>%
        tibble::add_column("{name}" := calc_change$recalc[[i]], .after = calc_change$field_name[i])

      add_row <- dic %>%
        dplyr::filter(field_name == calc_change$field_name[i]) %>%
        dplyr::mutate(field_name = stringr::str_glue("{field_name}_recalc"),
               field_label = stringr::str_glue("{field_label} (Recalculate)")
        )

      dic <- rbind(dic, add_row)

    }

  }

  #Summary of the results

  report1 <- calc %>%
    dplyr::mutate(n = 1) %>%
    dplyr::summarise(trans = sum(!is.na(trans)),
              N = sum(n),
              no_trans = N - trans,
              no_equal = sum(!is_equal, na.rm = TRUE),
    ) %>%
    dplyr::mutate(text1 = stringr::str_glue("{no_trans} ({round(no_trans*100/N, 2)}%)"),
           text2 = stringr::str_glue("{no_equal} ({round(no_equal*100/trans, 2)}%)")
    ) %>%
    dplyr::select("Total calculated fields" = N, "Non-transcribed fields" = text1, "Recalculated different fields" = text2)

  results <- knitr::kable(report1, "pipe", align = "ccc")

  report2 <- calc %>%
    dplyr::mutate(trans2 = ifelse(!is.na(trans), "Yes", "No")) %>%
    dplyr::arrange(trans2, is_equal) %>%
    dplyr::select(field_name, "Transcribed?" = trans2, "Is equal?" = is_equal)

  results <- c(results, "\n", knitr::kable(report2, "pipe", align = "ccc"))

  list(
    data = data,
    dic = dic,
    results = results
  )

}


############Checkbox functions############

#' Transformation of checkboxes in case of depending on a gatekeeping question
#'
#' @description
#' Inspects all the checkboxes of the study and looks if there is a question door linked to them (a branching logic evaluating another variable). If there is one, when this variable is missing it directly inputs a missing to the checkbox. If a gatekeeper question variable cannot be found or the logic in the branching logic cannot be transcribed because of the presence of some smart variables, the variable is added in the list of the reviewable ones that will be printed.
#'
#' The function will return the dataset with the transformed checkboxes along with a table that shows a summary of the results.
#' @param data Dataset containing the REDCap data.
#' @param dic Dataset containing the REDCap dictionary.
#' @param checkbox_labels Character vector with the names that will have the two options of every checkbox variable. Default is `c('No', 'Yes')`.

transform_checkboxes <- function(data, dic, checkbox_labels = c("No", "Yes")){

  vars <- dic$field_name[dic$field_type=="checkbox"]
  results <- results1 <- results2 <- NULL
  caption <- "Checkbox variables advisable to be reviewed"

  if(length(vars) > 0){

    review <- NULL
    review2 <- NULL
    for(i in 1:length(vars)){

      #Identify all the variables in the database that belong to this checkbox (one for each one of the options)
      vars_data <- names(data)[grep(stringr::str_glue("{vars[i]}___"),names(data))]

      #Get the branching logic
      logic <- dic$branching_logic_show_field_only_if[dic$field_name==vars[i]]

      #If there is one
      if(logic!=""){

        #Translate the REDCap logic to r language using rd_rlogic function

        rlogic <- try(rd_rlogic(logic,data), silent = TRUE)

        if(!inherits(rlogic, "try-error")){

          for(j in 1:length(vars_data)){
            data[,vars_data[j]] <- ifelse(eval(parse(text=rlogic)),as.character(data[,vars_data[j]]),NA)
          }

        }else{
          review2 <- c(review2, vars[i])
        }

      }else{

        #If there isn't a branching logic we put the variable to be reviewed
        review <- c(review,vars[i])

      }

    }

    #Summary with the results
    if(!is.null(review)){
      results1 <- tibble::tibble("Variables without any branching logic" = review)
      results <- knitr::kable(results1, "pipe", align = c("ccc"), caption = caption)
      if(!is.null(review2)){
        results <- c(results, "\n")
        caption <- NULL
      }
    }

    if(!is.null(review2)){
      results2 <- tibble::tibble("Variables with a logic that can't be transcribed" = review2)
      results <- c(results, knitr::kable(results2, "pipe", align = c("ccc"), caption = caption))
    }

  }else{
    warning("There isn't any checkbox variable in the dataset", call. = FALSE)
  }

  list(data = data,
       results = results)
}

#' Change checkboxes names into the name of their options
#' @description
#' Function that returns both data and dictionary with the name of the checkboxes transformed by the name of their options.
#' @param data Dataset containing the REDCap data.
#' @param dic Dataset containing the REDCap dictionary.
#' @param labels Named character vector with the name of the variables in the data and the REDCap label in its name.
#' @param checkbox_labels Character vector with the names that will have the two options of every checkbox variable. Default is c('No', 'Yes').

checkbox_names <- function(data,dic,labels, checkbox_labels = c("No", "Yes")){

  #Identify checkbox variables:
  var_check<-names(data)[grep("___",names(data))]

  #Add to dictionary all variables from checkbox found in the data and remove the original one (dic_checkboxes is an auxiliary function defined afterwards)
  dic <- dic_checkboxes(var_check,dic,labels, checkbox_labels)

  #Transform name in the bbdd and in the dictionary (transform_name is another auxiliary function defined afterwards)
  names(data) <- make.unique(purrr::map_chr(names(data),~transform_name(var_check,.x,labels)))
  dic$field_name <- make.unique(purrr::map_chr(dic$field_name,~transform_name(var_check,.x,labels)))

  out <- list(
    data=data,
    dic=dic
  )

  out

}

#' Change the names of checkboxes variables in the REDCap dictionary
#' @description
#' Auxiliary function to checkbox_names. Adds to the dictionary all variables that correspond to all the options of checkbox (with the name as it is in the data) and remove the original general checkbox variable.
#' @param var_check Character vector containing the names of those variables that are checkboxes.
#' @param dic  Dataset containing the REDCap dictionary.
#' @param labels Named character vector with the name of the variables in the data and the REDCap label in its name.
#' @param checkbox_labels Character vector with the names that will have the two options of every checkbox variable. Default is c('No', 'Yes').

dic_checkboxes <- function(var_check,dic,labels, checkbox_labels = c("No", "Yes")){

  field_name <- NULL
  names_trim <- NULL

  for(i in 1:length(var_check)){

    label <- labels[var_check[i]]
    label <- gsub(".*choice=","",label)
    label <- gsub("\\)","",label)

    names_trim[i] <- gsub("___.*$","",var_check[i])

    #Add rows with the name of all the variables for all the options
    new_row <- dic %>%
      dplyr::filter(field_name==names_trim[i]) %>%
      dplyr::mutate(field_name=var_check[i],
             field_label=label,
             choices_calculations_or_slider_labels=stringr::str_glue("0, {checkbox_labels[1]} | 1, {checkbox_labels[2]}"))

    dic <- dic %>%
      tibble::add_row(new_row, .before = which(dic$field_name==names_trim[i]))


  }

  dic %>%
    #Remove the original checkbox variable that was present in the beginning
    dplyr::filter(!field_name%in%names_trim)

}

#' Auxiliary function to `checkbox_names`
#' @description
#' Auxiliary function to checkbox_names. It changes the name of the checkbox variable to the name of the option it corresponds
#' @param var_check a character vector containing the names of those variables that are checkboxes
#' @param name a character element with the original name of the checkbox variable that has to be changed
#' @param labels a named character vector with the name of the variables in the data and the REDCap label in its name
transform_name <- function(var_check,name,labels){

  #It only transforms the name if the variable is a checkbox
  if(name%in%var_check){
    #Look the variable label and obtain the name of the corresponding option
    label <- labels[name]
    label <- gsub(".*choice=","",label)
    label <- janitor::make_clean_names(label)
    label <- gsub("^x(\\d)","\\1",label)

    #Replace the original number corresponding on the option to the name of the choice
    out <-  gsub("___.*","",name)
    out <- stringr::str_glue("{out}_{label}")

    #Trim name if it has more than 60 characters (if the option name is very large)
    strtrim(out, 60)
  }else{
    name
  }

}

############Structural functions##################

#' Creation of a data frame with variables of all the forms of a specified event
#' @description
#' Function that given the data, the dictionary and the mapping between forms and events it creates a dataset with the variables of all the forms that are in this event. It can be chosen to return only the data from the specified event.
#' @param data Preprocessed data.
#' @param dic Preprocessed dictionary.
#' @param event Downloaded instrument-event mapping from REDCap.
#' @param which Specify an event if only data for the desired event is wanted.
split_event <- function(data,dic,event,which=NULL){

  form <- unique_event_name <- field_type <- field_name <- branching_logic_show_field_only_if <- filtre_events <- no_filtre_events <- redcap_event_name <- vars_clau <- logic <- l <- events <- vars <- NULL

  #We create event-variable correspondence::
  var_event <- event %>%
    dplyr::select(form_name=form,redcap_event_name=unique_event_name) %>%
    dplyr::right_join(dic[,c("form_name","field_name","field_type","branching_logic_show_field_only_if")],by="form_name") %>%
    #Remove variables that we don't need (type descriptive and borrar/complete)
    dplyr::filter(field_type!="descriptive",!(grepl("borrar_",field_name) | grepl("_complete$",field_name))) %>%
    tibble::as_tibble() %>%
    #Remove variables with event filters
    dplyr::mutate(
      # To be included:
      filtre_events = purrr::map(branching_logic_show_field_only_if, ~unlist(stringr::str_extract_all(.x, "\\[event-name\\]='[\\w,\\-]+"))),
      filtre_events = purrr::map(filtre_events, ~gsub("\\[event-name\\]='", "", .x)),
      # To be excluded:
      no_filtre_events = purrr::map(branching_logic_show_field_only_if, ~unlist(stringr::str_extract_all(.x, "\\[event-name\\]<>'[\\w,\\-]+"))),
      no_filtre_events = purrr::map(no_filtre_events, ~gsub("\\[event-name\\]<>'", "", .x)),
      #create variable for filtering
      logic = purrr::pmap_lgl(list(redcap_event_name,branching_logic_show_field_only_if, filtre_events, no_filtre_events), ~((length(..3) == 0 & length(..4) == 0) | (..1 %in% ..3) | (length(..4) > 0 & !..1 %in% ..4))),
      #extra logic to look for variables that is not event-name and has an or
      vars_clau = purrr::map(branching_logic_show_field_only_if, ~unlist(stringr::str_extract_all(.x, "\\[[\\w,\\-]+\\]"))),
      logic = ifelse(grepl(" or ", branching_logic_show_field_only_if) & !all(vars_clau == "[event-name]"), TRUE, logic)
    ) %>%
    #If the variable only is found in one event we keep it
    dplyr::group_by(field_name) %>%
    dplyr::mutate(l = length(field_name)) %>%
    dplyr::ungroup() %>%
    dplyr::mutate(
      logic = ifelse(!logic & l == 1, TRUE, logic)
    ) %>%
    #Apply the filter generated before
    dplyr::filter(logic) %>%
    dplyr::select(redcap_event_name, field_name)

  var_event_add <- data.frame(redcap_event_name=unique(var_event$redcap_event_name)[-1],field_name="record_id")
  var_event <- rbind(var_event, var_event_add)%>%
    dplyr::mutate(redcap_event_name=factor(redcap_event_name, levels=unique(var_event$redcap_event_name)))%>%
    dplyr::arrange(redcap_event_name)

  #Add basic REDCap variables that by default aren't in the dictionary:

  basic_redcap_vars <- c("redcap_event_name","redcap_repeat_instrument","redcap_repeat_instance","redcap_data_access_group","redcap_event_name.factor", "redcap_data_access_group.factor")

  #It can happen that one of these variables are not in the database for some projects
  basic_redcap_vars <- basic_redcap_vars[basic_redcap_vars%in%names(data)]
  var_event_redcap <- data.frame(redcap_event_name=NA,field_name=basic_redcap_vars)

  var_event <- rbind(var_event_redcap,var_event)

  vars_more <- var_event$field_name[!var_event$field_name%in%names(data)]

  if(length(vars_more)>0){
    stop("There're more variables in the dictionary than in the data base. Transformation stops", call. = FALSE)
  }

  vars_less <- names(data)[!names(data)%in%var_event$field_name]

  if(length(vars_less)>0){
    stop("There're more variables in the data base than in the dictionary. Transformation stops", call. = FALSE)
  }

  #Let's create a database for every event filtering variables found in every event

  list_events <- stats::na.exclude(unique(var_event$redcap_event_name))

  ndata <- tibble::tibble("events"=list_events) %>%
    dplyr::mutate(vars=purrr::map(events,~var_event %>%
                      dplyr::filter(redcap_event_name==.x | is.na(redcap_event_name)) %>%
                      dplyr::pull(field_name)),
           df=purrr::map2(events,vars,~data %>%
                     dplyr::filter(redcap_event_name==.x) %>%
                     dplyr::select(tidyselect::all_of(.y))%>% dplyr::relocate(record_id)))


  if(!is.null(which)){
    ndata$df[[which(ndata$events==which)]]
  }else{
    ndata
  }


}

#' Creation of a data frame with variables of a specified form
#' @description
#' Function that given the data, the dictionary and the mapping between forms and events it creates a dataset with the variables that are in this form for all events. It can be chosen to return only the data from the specified form.
#' @param data Preprocessed data.
#' @param dic Preprocessed dictionary.
#' @param event Downloaded instrument-event mapping from REDCap.
#' @param which Specify a form if only data for the desired form is wanted.
#' @param wide If the dataset needs to be in a wide format or not (long).

split_form <- function(data, dic, event, which = NULL, wide=FALSE){

  field_type <- field_name <- vars <- events <- vars_esp <- df <- NULL

  #Find basic REDCap variables found in the database
  basic_redcap_vars <- c("record_id","redcap_event_name","redcap_repeat_instrument","redcap_repeat_instance","redcap_data_access_group","redcap_event_name.factor", "redcap_data_access_group.factor")

  basic_redcap_vars <- basic_redcap_vars[basic_redcap_vars%in%names(data)]

  #Previous to begin with the transformation let's find if there're the same variables in the data base than in the dictionary
  #But first we have to remove from the dictionary the descriptive variables that are found in the dictionary but not in the data
  dic <- dic %>%
    dplyr::filter(field_type!="descriptive",!(grepl("borrar_",field_name) | grepl("_complete$",field_name)))

  vars_more <- dic$field_name[!dic$field_name%in%names(data)]

  if(length(vars_more)>0){
    stop("There're more variables in the dictionary than in the data base. Transformation stops", call. = FALSE)
  }

  vars_less <- names(data)[!names(data)%in%dic$field_name]
  #Remove the REDCap basic variables that are found in the database but not in the dictionary
  vars_less <- vars_less[!vars_less %in% basic_redcap_vars]

  if(length(vars_less)>0){
    stop("There're more variables in the data base than in the dictionary. Transformation stops", call. = FALSE)
  }

  form <- unique(dic$form_name)

  ndata <- tibble::tibble("form"=form) %>%
    dplyr::mutate(events = purrr::map(form, ~event$unique_event_name[event$form == .x]),
           vars = purrr::map(form, ~dic$field_name[dic$form_name == .x]),
           #Add to vars the basic REDCap variables not found in the dictionary:
           vars = purrr::map(vars, ~unique(c(basic_redcap_vars, .x)))
    ) %>%
    #Collect variables from every event
    dplyr::mutate(df = purrr::map2(events,vars,~data %>%
                       dplyr::filter(redcap_event_name==.x) %>%
                       dplyr::select(tidyselect::all_of(.y))%>% dplyr::relocate(record_id)))

  if(wide){

    #We will add it with the order that repeated measures happen for every patient

    ndata <- ndata %>%
      dplyr::mutate(vars_esp = purrr::map(vars, ~.x[!.x %in% basic_redcap_vars]),
             df = purrr::map2(vars_esp, df, ~ .y %>%
                         dplyr::select(record_id, .x) %>%
                         dplyr::group_by(record_id) %>%
                         dplyr::mutate(id = 1:length(record_id)) %>%
                         dplyr::ungroup() %>%
                         tidyr::pivot_wider(names_from = id, values_from = -c(record_id, id))
             )
      )
  }

  if(!is.null(which)){

    ndata$df[[which(ndata$form==which)]]

  }else{

    ndata

  }


}

###############Other functions###############

#' Convert variables to factors
#' @description
#' Function that converts every variable except those specified to factor.
#' @param data Dataset containing the REDCap data.
#' @param exclude Character vector containing the names of those variables that will not be converted to factors. If `NULL`, all variables will be converted.
to_factor <- function(data, exclude = NULL){

  #We need redcap_event_name to have the original values so we exclude of the conversion the variable redcap_event_name.factor. Also for redcap_data_access_group if present

  keep <- c("redcap_event_name.factor", "redcap_data_access_group.factor")
  keep_factors <- data %>%
    dplyr::select(keep[keep %in% names(data)])

  data$redcap_event_name.factor <- NULL
  data$redcap_data_access_group.factor <- NULL

  factors <- names(data)[grep(".factor$",names(data))]
  factors <- gsub(".factor$","",factors)

  #Exclude those variables that we don't want to convert to factors
  factors <- factors[!factors %in% exclude]

  data <- data %>%
    #Assign to the non factor variable the factor one and remove the later
    dplyr::mutate(dplyr::across(tidyselect::all_of(factors), ~ get(stringr::str_glue("{dplyr::cur_column()}.factor")))) %>%
    dplyr::select(-tidyselect::ends_with(".factor")) %>%
    tibble::add_column("redcap_event_name.factor" = keep_factors$redcap_event_name.factor, .after = "redcap_event_name")

  if("redcap_data_access_group" %in% names(data)){
    data %>%
      tibble::add_column("redcap_data_access_group.factor" = keep_factors$redcap_data_access_group.factor, .after = "redcap_data_access_group")
  }else{
    data
  }

}

