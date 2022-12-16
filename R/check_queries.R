#' Check modifications between two dataset of queries
#'
#' This function compares a former dataset of queries with a new one and allows you to check which of the old queries were resolved, which are yet to be resolved and which of them are new.
#' @param old Old version of the dataset of queries.
#' @param new New version of the dataset of queries. This object will be used to determine the status of each query.
#' @keywords check, queries
#' @return A data frame with a merge of all queries plus a column indicating which queries were resolved or are new comparing to the old queries dataset.
#' @export

check_queries <-function(old, new)
  {
  Identifier <- NULL
  Modification <- NULL

  # Creation of the merged dataset
  new <- new[,names(new)[which(!names(new)%in%c("Code"))]]
  check <- merge(old, new, by=names(old)[names(old)%in%names(new)], all = TRUE)
  old[,"comp"] <- paste0(old$Identifier, old$Description, old$Query)
  new[,"comp"] <- paste0(new$Identifier, new$Description, new$Query)

  # Checking each type of query
  check[,"comp"] <- paste0(check$Identifier, check$Description, check$Query)
  check[,"Modification"] <- "Unmodified"
  check[,"Modification"][!check$comp%in%new$comp] <- "Modified"
  check[,"Modification"][!check$comp%in%old$comp] <- "New"
  check <- check[,names(check)[which(!names(check)%in%c("comp"))]]

  # We update the code of each query in order to match the old dataset
  if (any(stringr::str_detect(check$Identifier,"-"))) {
    check <- check %>% tidyr::separate("Identifier", c("center","id"), sep = "([-])",remove = FALSE)
    check[,"center"] <- as.numeric(check[,"center"])
    check[,"id"] <- as.numeric(check[,"id"])
    check <- check[order(check[,"center"],check[,"id"], check[,"Code"], na.last = TRUE),]
    rownames(check) <- NULL
    check <- check[,names(check)[which(!names(check)%in%c("center","id"))]]
  } else {
    check$Identifier <- as.numeric(check$Identifier)
    check <- check[order(check$Identifier, check$Code),]
  }
  check <- data.frame(check %>%dplyr::group_by(Identifier)%>%dplyr::mutate(cod =1:dplyr::n()))
  check$Code <- paste0(as.character(check$Identifier),"-",check$cod)
  check <- check[,names(check)[which(!names(check)%in%c("cod"))]]

  # Creation of the report indicating the variables checked
  report <- check %>% dplyr::group_by(Modification, .drop = FALSE) %>% dplyr::summarise("total" = dplyr::n())
  report <- as.data.frame(report)
  report <- report[order(as.numeric(report[,2]), decreasing = TRUE),]
  names(report) <- c("State", "Total")
  rownames(report) <- NULL
  print(knitr::kable(report, "pipe", align = c("cc"), caption = "Report of modifications"))

  return(check)
}

