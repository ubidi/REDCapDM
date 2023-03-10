% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rd_transform.R
\name{rd_transform}
\alias{rd_transform}
\title{Transformation of the raw data}
\usage{
rd_transform(
  ...,
  data = NULL,
  dic = NULL,
  event_form = NULL,
  event_path = NULL,
  checkbox_labels = c("No", "Yes"),
  checkbox_na = FALSE,
  exclude_to_factor = NULL,
  keep_labels = FALSE,
  delete_vars = c("_complete", "_timestamp"),
  final_format = "raw",
  which_event = NULL,
  which_form = NULL,
  wide = NULL
)
}
\arguments{
\item{...}{List containing the data and the dictionary and the event_form if it's needed. Can be the output of the function `redcap_data`.}

\item{data}{Data frame containing data from REDCap. If the list is specified this argument is not needed.}

\item{dic}{Data frame  containing the dictionary read from REDCap. If the list is specified this argument is not needed.}

\item{event_form}{Data frame  containing the correspondence of each event with each form. If the list is specified this argument is not needed.}

\item{event_path}{Character string with the pathname of the file with the correspondence between each event and each form (it can be downloaded in `Designate Instruments for My Events` inside the `Project Setup` section of REDCap).}

\item{checkbox_labels}{Character vector with the names that will have the two options of every checkbox variable. Default is `c('No', 'Yes')`.}

\item{checkbox_na}{Logical indicating if values of checkboxes that have a branching logic have to set to missing only when the branching logic is missing (meaning that some of the variables specified in it are missing) or also when the branching logic isn't satisfied (true).}

\item{exclude_to_factor}{Character vector with the names of the variables that do not have to be transformed to factors.}

\item{keep_labels}{Logical indicating if the labels have to be kept or not.}

\item{delete_vars}{Character vector specifying the pattern that will contain variables to exclude. By default, variables ending up with `_complete` will be removed.}

\item{final_format}{Character string indicating the final arrangement format of the data that the function will return. Choose one of `raw`, `by_event` or `by_form`. `raw` (default) will return the transformed data with the original structure. `by_event` will return the transformed data as a nested data frame by event. `by_form` will return the transformed data as a nested data frame by form.}

\item{which_event}{Character string indicating if only one event has to be returned if the final format selected is `by_event`.}

\item{which_form}{Character string indicating if only one form has to be returned if the final format selected is `by_form`.}

\item{wide}{Logical indicating if the data split by form (if selected) has to be in a wide format or in a long one.}
}
\value{
List with the transformed dataset, dictionary and the results
}
\description{
Function that transforms the raw data from REDCap read by the function `redcap_data`. It returns the transformed data and dictionary along with the summary of the results of each step.
}
\examples{
rd_transform(covican)

# For customization of checkbox labels
rd_transform(covican,
             checkbox_labels = c("Not present", "Present"))

}
