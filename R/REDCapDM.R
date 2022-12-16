#' REDCapDM: A package to create queries reports of a determined REDCap dataset.
#'
#' @description
#' The REDCapDM package provides three main functions that allow us to read a dataset downloaded from REDCap, identify a variety of queries, check over time which of the old queries were resolved and even do a pre-processing of the data. This package was built and tested with databases created using REDCap v12.4.17.
#'
#' @details
#' REDCapDM functions:
#'
#' - redcap_data: used to read data exported from REDCap or through an API connection.
#'
#' - rd_expression: identification of queries.
#'
#' - rd_event: identification of missing events in a determined observation.
#'
#' - check_queries: used to check current queries with an old report to see which of them are corrected, uncorrected or if there are new queries.
#'
#' - rd_transform: pre-processing of the dataset.
#'
#' - rd_rlogic: transcribes redcap logic to R logic.
#'
#' - rd_insert_na: manually put a missing value in specified variables using a filter.
#'
#'
#' @docType package
#' @name REDCapDM
NULL
