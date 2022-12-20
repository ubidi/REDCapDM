#' REDCap logic into R logic
#'
#' This function allows you to transcribe REDCap logic to R logic. WARNING: If the REDCap logic has smart-variables this function will not be able to transform it.
#'
#' @param logic String containing a logic in REDCap format.
#' @param data R object corresponding to the dataset.
#' @return String containing the logic in R format.
#' @examples
#' rd_rlogic(logic = "if([exc_1]='1' or [inc_1]='0' or [inc_2]='0' or [inc_3]='0',1,0)",
#'           data = covican$data)
#' @export

rd_rlogic <- function(logic, data){

  rlogic <- logic

  #We look first if there is some checkbox evaluated in the logic
  if(grepl("\\)\\]",rlogic)){
    num_vars <- stringr::str_count(rlogic,"]")
    for(i in 1:num_vars){
      rlogic <- gsub("\\[(.+)\\((\\d+)\\)\\]","[\\1___\\2]",rlogic)
    }
  }

  #If we find [event-name][var] is the same as [var]
  rlogic <- gsub("\\[event\\-name\\]\\[","[", rlogic)

  #Change event-name, user-dag-name, record-dag-name
  rlogic <- gsub("\\[event\\-name\\]","[redcap_event_name]", rlogic)
  rlogic <- gsub("\\[user\\-dag\\-name\\]","[redcap_data_access_group]", rlogic)
  rlogic <- gsub("\\[record\\-dag\\-name\\]","[redcap_data_access_group]", rlogic)

  #Get the variables that are being evaluated

  #Get all variables evaluated
  rlogic_var <- unlist(stringr::str_extract_all(rlogic, "\\[[\\w,\\-]+\\]"))

  #Check if each variable is present in the data
  check_lgl <- purrr::map_lgl(rlogic_var,function(x){
    out <- gsub("^\\[","",x)
    out <- gsub("\\]$","",out)
    out%in%names(data)
  })

  #If there are some that are not in the dataframe it will give an error

  if(any(!check_lgl)){
    stop("Redcap logic contains some redcap variable that it isn't found in the database (it can be a smart-variable)")
  }else{
    #If all the variables are contained in the data we can transcribe the redcap logic to r logic
    #When in redcap we had " now we have \". Change "" to '':
    rlogic <-  gsub('"', "'", rlogic)


    #Change variable specification from [] to data$

    #Change first [.] = '' for is.na(data$.) and [.] <>'' for !is.na(data$.)

    rlogic <- gsub("\\[(\\w+)\\]<>''", "!is.na(data$\\1)", rlogic)
    rlogic <- gsub("\\[(\\w+)\\]=''", "is.na(data$\\1)", rlogic)
    rlogic <- gsub("\\[(\\w+)\\]","data$\\1",rlogic)

    #Change the redcap operators into r operators
    rlogic <- gsub("=","==",rlogic)
    rlogic <- gsub("<==","<=",rlogic)
    rlogic <- gsub(">==",">=",rlogic)
    rlogic <- gsub("<>","!=",rlogic)
    rlogic <- gsub(" and "," & ",rlogic)
    rlogic <- gsub(" or "," | ",rlogic)

    #Change the redcap functions into r functions
    rlogic <- gsub("if\\(", "ifelse(", rlogic)
    rlogic <- gsub("rounddown(.*),0\\)", "floor\\1)", rlogic)
    rlogic <- gsub("datediff\\s?", "lubridate::time_length(lubridate::interval", rlogic)
    rlogic <- gsub("\\,\\s?true", "", rlogic)
    rlogic <- gsub("\\,\\s?'y'\\,\\s?'dmy'", "), 'year'", rlogic)
    rlogic <- gsub("\\,\\s?'d'\\,\\s?'dmy'", "), 'day'", rlogic)
    rlogic <- gsub("\\,\\s?'m'\\,\\s?'dmy'", "), 'month'", rlogic)

    #Let's see if it can be evaluated after the transformation. If not it will give an error
    rlogic_eval <- try(eval(parse(text = rlogic)), silent = TRUE)
    if(inherits(rlogic_eval, "try-error") | length(rlogic_eval) == 0){
      stop("The logic can't be evaluated after the translation")
    }else{
      rlogic
    }

  }

}
