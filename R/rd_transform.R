#' Transformation of the raw data
#'
#' Function that transforms the raw data from REDCap read by the function `redcap_data`. It returns the transformed data and dictionary along with the summary of the results of each step.
#'
#' @param data Database containing data from REDCap.
#' @param dic Database containing the dictionary read from REDCap.
#' @param event_path Character string with the path name of the instrument mapping (can be downloaded in the `Designate Instruments for My Events` section of REDCap).
#' @param checkbox_labels Character vector with the names that will have the two options of every checkbox variable. Default is `c('No', 'Yes')`.
#' @param exclude_to_factor Character vector with the names of the variables that do not have to be transformed to factors.
#' @param keep_labels Logical indicating if the labels have to be kept or not.
#' @param delete_vars Character vector specifying the pattern that will contain variables to exclude. By default, variables ending up with `_complete` will be removed.
#' @param final_format Character string indicating the final arrangement format of the data that the function will return. Choose one of `raw`, `by_event` or `by_form`. `raw` (default) will return the transformed data with the original structure. `by_event` will return the transformed data as a nested data frame by event. `by_form` will return the transformed data as a nested data frame by form.
#' @param which_event Character string indicating if only one event has to be returned if the final format selected is `by_event`.
#' @param which_form Character string indicating if only one form has to be returned if the final format selected is `by_form`.
#' @param wide Logical indicating if the data split by form (if selected) has to be in a wide format or in a long one.
#' @return List with the transformed dataset, dictionary and the results
#'
#' @examples
#' rd_transform(data = covican$data,
#'              dic = covican$dictionary)
#'
#' # For customization of checkbox labels
#' rd_transform(data = covican$data,
#'              dic = covican$dictionary,
#'              checkbox_labels = c("Not present", "Present"))
#'
#' @export

rd_transform <- function(data, dic, event_path = NULL, checkbox_labels = c("No", "Yes"), exclude_to_factor = NULL, keep_labels = FALSE, delete_vars = "_complete", final_format = "raw", which_event = NULL, which_form = NULL, wide = NULL){

  form <- NULL
  record_id <- NULL
  redcap_event_name.factor <- NULL
  field_name <- NULL
  results <- NULL

  if(final_format == "by_event" & is.null(event_path)){
    stop("To split the data by event the event_path has to be provided", call. = FALSE)
  }

  if(final_format == "by_form" & is.null(event_path)){
    stop("To split the data by form the event_path has to be provided", call. = FALSE)
  }

  if(!is.null(which_event) & final_format != "by_event"){
    stop("Which event has been specified but the final format is not to split the data by event", call. = FALSE)
  }

  if(!is.null(which_form) & final_format != "by_form"){
    stop("Which form has been specified but the final format is not to split the data by form", call. = FALSE)
  }

  if(!is.null(wide) & final_format != "by_form"){
    stop("The argument wide has been specified but the final format is not to split the data by form", call. = FALSE)
  }

  if(!final_format %in% c("raw", "by_event", "by_form")){
    stop("final_format argument has to be one of the following: 'raw', 'by_event', 'by_form'", call. = FALSE)
  }

  #If an event_path is provided, read the event file
  if(!is.null(event_path)){
    event <- utils::read.csv(paste(event_path), encoding="UTF-8")
  }


  labels <- Hmisc::label(data)

  #Remove all variable labels:
  data <- data %>%
    dplyr::mutate_all(function(x){
      class(x) <- setdiff(class(x), "labelled")
      attr(x,"label") <- NULL
      x
    })

  #Recalculate calculated fields (previous to transforming factors and other preprocessing)
  #It wil create duplicate variables of each calculated field with "_recalc" in the end and the recalculated value

  results <- c(results, "1. Recalculating calculated fields and saving them as '[field_name]_recalc'\n")

  recalc <- recalculate(data, dic)

  data <- recalc$data
  dic <- recalc$dic

  results <- c(results, recalc$results)

  results <- c(results, "\n2. Transforming checkboxes: changing their values to No/Yes and changing their names to the names of its options. For checkboxes that have a question door specified in the branching logic, converting some of their values to missing\n")

  #Identify checkbox variables:
  var_check<-names(data)[grep("___",names(data))]
  #Remove .factor:
  var_check_factors <- var_check[grep(".factor$",var_check)]

  data <- data %>%
    dplyr::select(-tidyselect::all_of(var_check_factors))

  var_check <- var_check[!grepl(".factor$",var_check)]

  #Transform missings of checkboxes with question doors:

  trans <- transform_checkboxes(data,dic,checkbox_labels)

  data <- trans$data

  results <- c(results, trans$results)

  #Transform them to No/Yes:

  data <- data %>%
    dplyr::mutate(dplyr::across(tidyselect::all_of(var_check),~factor(.x,levels=0:1,labels=checkbox_labels)))

  #Change the names:

  data_dic <- checkbox_names(data,dic,labels,checkbox_labels)

  data <- data_dic$data
  dic <- data_dic$dic

  #Replace original variables with their factor version except for redcap_event_name and redcap_data_access_group
  #If we dont want to convert another additional variable to factor we can specify it with the exclude argument: to_factor(data, exclude = "var")

  results <- c(results,"\n3. Replacing original variables for their factor version")

  data <- to_factor(data, exclude = exclude_to_factor)

  #Fix variables that instead of missing have an empty field (text variables, etc.):
  data <- data %>%
    #Fix characters:
    dplyr::mutate_if(is.character,~gsub("^$",NA,.x)) %>%
    #Fix factors:
    dplyr::mutate_if(is.factor,function(x){levels(x)[levels(x)==""] <- NA; x})

  #Convert dates (dates to as.date and dates & hours to posicxt):

  names_d <- names(data)[grepl("^d_", names(data))]
  names_posicxt <- names_d[purrr::map_lgl(names_d, function(x){
    if(any(grepl(":00", data[,x]))){
      TRUE
    }else{
      FALSE
    }
  })]
  names_d <- names_d[!names_d %in% names_posicxt]

  data <- data %>%
    dplyr::mutate_at(names_d, as.Date) %>%
    dplyr::mutate_at(names_posicxt, as.POSIXct)

  #Only if we would want a labelled dataset:
  if(keep_labels){
    #Restore labels:
    change_lab<-function(i){
     labels[i]
    }
    Hmisc::label(data)<-purrr::map(1:ncol(data),change_lab)
  }


  results <- c(results, "4. Deleting variables that contain some patterns")

  ind <- 5
  if(!is.null(delete_vars)){

    for(i in 1:length(delete_vars)){

      if(delete_vars[i] == "_complete"){
        data <- data %>%
          dplyr::select(!tidyselect::ends_with("_complete"))
      }else{
        data <- data %>%
          dplyr::select(!tidyselect::contains(delete_vars[i]))
      }

    }

  }

  #Arrange our dataset by record_id and event (will keep the same order of events as in redcap)
  data <- data %>%
    dplyr::arrange(record_id, redcap_event_name.factor)

  if(!is.null(event_path)){

    var_noevent <- dic$field_name[! dic$form_name %in% event$form]

    if(length(var_noevent) > 0){

      results <- c(results, stringr::str_glue("{ind}. Erasing variables from forms that are not linked to any event"))
      ind <- ind + 1

      var_noevent <- var_noevent[var_noevent %in% names(data)]
      data <- data %>%
        dplyr::select(-var_noevent)
      dic <- dic %>%
        dplyr::filter(! field_name %in% var_noevent)
    }

    #Final arrangment

    if(final_format == "by_event"){

      results <- c(results,stringr::str_glue("{ind}. Final arrangment of the data by event"))
      ind <- ind + 1

      if(is.null(which_event)){

        data <- split_event(data,dic,event)

      }else{

        data <- split_event(data,dic,event,which=which_event)

      }

    }else if(final_format == "by_form"){

      results <- c(results, stringr::str_glue("{ind}. Final arrangment of the data by form"))
      ind <- ind + 1

      if(is.null(wide)){
        wide <- FALSE
      }

      if(is.null(which_form)){

        data <- split_form(data, dic, event, which = NULL, wide)

      }else{

        data <- split_form(data, dic, event, which=which_form, wide)

      }

    }

    list(
      data = data,
      dictionary = dic,
      results = stringr::str_glue("{results}")
    )

  }else{
    list(
      data = data,
      dictionary = dic,
      results = stringr::str_glue("{results}")
    )
  }


}
