#' Read REDCap data
#'
#' @description
#' This function allows users to read datasets from a REDCap project, through exported data or an API connection, into R for analysis.
#'
#' The REDCap API is an interface that allows communication with REDCap and server without going through the interactive REDCap interface.
#'
#' @note If you will give further use to the package, we advise you to use the argument 'dic_path' to read your dictionary, since all other functions need it in order to run properly.
#'
#' @param data_path Character string with the pathname of the R file to read the dataset from.
#' @param dic_path Character string with the pathname of the dictionary.
#' @param event_path Character string with the pathname of the file with the correspondence between each event and each form (it can be downloaded in `Designate Instruments for My Events` inside the `Project Setup` section of REDCap)
#' @param uri The URI (uniform resource identifier) of the REDCap project.
#' @param token Character vector with the code of the token.
#' @return List with the dataset and the dictionary of the corresponding REDCap project. If the event_path is specified it will also contain a third element with the correspondence of the events & forms of the project.
#'
#' @note To read exported data you have to first use REDCap's 'Export Data' function and select the format 'R Statistical Software', then it will generate one CSV file with all observations and an R file with the necessary code to complete each variable information.
#'
#' @export

redcap_data<-function(data_path = NA, dic_path = NA, event_path = NA, uri = NA, token = NA)
  {
  oldwd <- getwd()
  on.exit(setwd(oldwd))

  if(all(!c(data_path, dic_path)%in%NA)&any(!c(token,uri)%in%NA)){
    stop("Too many arguments, if you want to read exported data from REDCap use only the arguments data_path and dic_path", call. = FALSE)
  }
  if(all(!c(token, uri)%in%NA)&any(!c(data_path,dic_path)%in%NA)){
    stop("Too many arguments, if you want to read data from REDCap through an API connection use only the arguments uri and token.", call. = FALSE)
  }

  if(all(!c(data_path, dic_path)%in%NA)&all(c(token,uri)%in%NA)){
    tmp_env <- new.env()
    file.lines <- scan(data_path, what=character(), skip=2, sep='\n', quiet = TRUE)
    file.lines.collapsed <- paste(file.lines, collapse='\n')
    command <- paste0("dirname(parent.frame(2)$","data_path",")")
    setwd(eval(parse(text=command)))
    source(textConnection(file.lines.collapsed), local = tmp_env, encoding="UTF-8")
    data <- get("data", envir = tmp_env)
    if (names(data)[1]!="record_id") {
      names(data)[1] <- "record_id"
    }
    dic <- utils::read.csv(paste(dic_path), encoding="UTF-8")
    names(dic) <- janitor::make_clean_names(names(dic))
    names(dic)[1] <- "field_name"
    if (dic[1,1]!="record_id") {
      dic[1,1] <- "record_id"
    }

    #Read event file
    if(!is.na(event_path)){

      setwd(oldwd)
      event_form <- utils::read.csv(paste(event_path), encoding="UTF-8")
      data_def <- list(data=data, dictionary=dic, event_form = event_form)
      return(data_def)

    }else{

      #If no event is specified and the project is longitudinal
      if(length(unique(data$redcap_event_name)) > 1){
        warning("The project contains more than one event. You might want to load the event-form correspondence using the argument event_path.")
      }

      data_def <- list(data=data, dictionary=dic)
      return(data_def)
    }

  }

  if(all(!c(token, uri)%in%NA)&all(c(data_path,dic_path)%in%NA)){
    data_api <- REDCapR::redcap_read_oneshot(redcap_uri=uri, token=token, verbose = FALSE)$data
    if (names(data_api)[1]!="record_id") {
      names(data_api)[1] <- "record_id"
    }

    #Read event file
    if(!is.na(event_path)){

      setwd(oldwd)
      event_form <- utils::read.csv(paste(event_path), encoding="UTF-8")
      data_def <- list(data=data_api, dictionary=REDCapR::redcap_metadata_read(redcap_uri=uri, token=token, verbose = FALSE)$data, event_form = event_form)

    }else{

      #If no event is specified and the project is longitudinal
      if(length(unique(data_api$redcap_event_name)) > 1){
        warning("The project contains more than one event. You might want to load the event-form correspondence using the argument event_path", call. = FALSE)
      }

      # Import dictionary of the project using the API connection
      dic_api <- REDCapR::redcap_metadata_read(redcap_uri = uri, token = token, verbose = FALSE)$data

      ## Making sure the names of both dictionaries match
      names(dic_api)[names(dic_api) %in% c("select_choices_or_calculations", "branching_logic", "question_number")] <- c("choices_calculations_or_slider_labels", "branching_logic_show_field_only_if", "question_number_surveys_only")

      data_def <- list(data = data_api[, !(grepl("_complete", names(data_api)))], dictionary = dic_api)

    }

    for (i in 1:length(data_def$data)) {
      suppressWarnings(data_def$data[,i] <- stringr::str_conv(data_def$data[,i], "UTF-8"))
    }
    return(data_def)
  }

}
