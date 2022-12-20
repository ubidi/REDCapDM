#' Insert missing using a filter
#'
#' Function that allows you to manually input a missing to some variables (`vars`) when some filters (`filter`) are satisfied. Useful for checkboxes without a gatekeeper question in the branching logic. Advert that the variables present in the filter have to be in the same event as the variables we want to convert.
#' @param data Database containing data from REDCap.
#' @param filter Character vector containing the logic to be directly evaluated.
#' @param vars Character vector containing the names of those variables to transform. When the previous evaluated logic is `TRUE` the variables in the same event will be transformed to missing. So, remember that the variables in the filter have to be in the same event as the othe variables.
#' @return transformed data with the specified variables converted.
#' @examples
#' data <- rd_transform(data = covican$data,
#'                      dic = covican$dictionary)$data
#'
#' rd_insert_na(data = data,
#'              filter = rep("age < 65", 2),
#'              vars = grep("type_underlying_disease", names(data), value = TRUE))
#' @export


rd_insert_na <- function(data, filter, vars){

  if(length(filter) != length(vars)){

    stop("The number of filter variables specified doesn't match with the number of variables specified", call. = FALSE)

  }else{

    for(i in 1:length(vars)){

      id <- data %>%
        dplyr::mutate(id = dplyr::row_number()) %>%
        dplyr::filter(eval(parse(text = filter[i]))) %>%
        dplyr::pull(id)

      data[id, vars[i]] <-  NA

    }

    data

  }


}
