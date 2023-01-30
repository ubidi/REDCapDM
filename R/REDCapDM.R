#' REDCapDM: A package to create queries reports of a determined REDCap dataset.
#'
#' @description
#' The REDCapDM package provides three main functions that allow us to read a dataset exported from REDCap, identify a variety of queries, check over time which of the old queries were resolved and even do a pre-processing of the data. This package was built and tested with databases created using REDCap v12.4.17.
#'
#' @details
#' REDCapDM functions:
#'
#' - redcap_data: used to read data exported from REDCap or through an API connection.
#'
#' - rd_expression: identification of queries.
#'
#' - rd_event: identification of missing events per record identifier.
#'
#' - check_queries: used to compare current queries with an old report to determine which ones have been modified, which remain unchanged, and if there are any new queries.
#'
#' - rd_transform: pre-processing a dataset.
#'
#' - rd_rlogic: transcribes redcap logic to R logic.
#'
#' - rd_insert_na: manually input a missing value for specified variables using a filter.
#'
#'
#' @docType package
#' @name REDCapDM
NULL
