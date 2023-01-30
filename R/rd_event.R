#' Identification of missing event/s
#'
#' When working with a longitudinal REDCap project, the exported data has a structure where each row represents one event per record. However, by default, REDCap will not export events that do not have information.
#' This function allows you to point out which record identifiers do not have information of a determined event.
#'
#' @param event Vector with the REDCap's events names to be analyzed.
#' @param filter A filter to apply to the dataset. This argument can be used to identify the missing events on a subgroup of the dataset.
#' @param query_name Description of the query. It can be defined as the same one for all events or you can define one for each event By default, the function will define the description as `The event [event] is missing' for each event`.
#' @param dic R object corresponding to the dictionary of the dataset.
#' @param data R object corresponding to the dataset.
#' @param addTo Data frame corresponding to a prior report of queries to which you can add the new data frame of queries. By default, the function will always generate a new data frame without taking into account former reports.
#' @param report_title Character string with the report's title.
#' @param report_zeros Logical. If `TRUE`, it returns a report including events with zero queries.
#' @return A dataframe with 9 columns meant to help the user identify each missing event and a table with the total of queries per variable.
#' @examples
#' example <- rd_event(event = "follow_up_visit_da_arm_1",
#'                     dic = covican$dictionary,
#'                     data = covican$data)
#' example
#' @export

rd_event <- function(event, filter = NA, query_name = NA, dic, data, addTo = NA, report_title = NA, report_zeros = FALSE)
  {
    Code <- NULL
    Identifier <- NULL
    var <- NULL

    # Making sure that the object data is a data.frame
    data <- as.data.frame(data)

    # Creation of the structure of the queries
    queries <- as.data.frame(matrix(ncol = 9, nrow = 0))
    colnames(queries) <- c("Identifier", "DAG", "Event", "Instrument", "Field", "Repetition", "Description", "Query", "Code")

    # Naming the first column of the REDCap's database as record_id
    if (all(!names(data) == "record_id")) {
      names(data)[1] <- "record_id"
    }

    # Filtering the data using the information of the argument 'filter'
    if (!filter %in% NA) {
      command <- paste0("data0", "<-subset(data,", filter, ")")
      eval(parse(text = command))
      data0 <- subset(data, data$record_id %in% data0$record_id)
      data <- data0
      if (nrow(data0)==0) {
        stop("The filter applied results in no observations, please change it.", call. = FALSE)
      }
    } else {
      data0 <- data
    }

    # Applying a filter of the chosen events to the database
    if (all(!event %in% NA)) {
      # Error: one of the specified events does not exist in the database
      if (any(!event %in% data$redcap_event_name)) {
        if (any(names(data) == "redcap_event_name.factor")) {
          if (any(!event %in% data$redcap_event_name.factor))
            stop("One of the events mentioned does not exist in the database, please verify the argument 'event'.")
        } else {
          stop("One of the events mentioned does not exist in the database, please verify the argument 'event'.")
        }
      }

      for (k in 1:length(event)) {

        if (any(names(data) == "redcap_event_name.factor")) {
          if (all(event %in% data$redcap_event_name.factor)) {
            data2 <- subset(data, data$redcap_event_name.factor %in% event[k])
          }
        }

        if (all(event %in% data$redcap_event_name)) {
          data2 <- subset(data, data$redcap_event_name %in% event[k])
        }


        # Identification of the record_ids that do not present the events specified
        raw <- subset(data0, !data0$record_id%in%data2$record_id)
        raw <- raw %>% dplyr::slice(rep(1:dplyr::n(), each = length(event[k])))

        # Identification of queries, using the structure built before
        if (nrow(raw) > 0) {
          if (any(utils::head(names(raw)) == "redcap_event_name")) {
            raw$redcap_event_name <- rep(event[k], length(event[k]))
          }

          if (any(names(raw) == "redcap_data_access_group.factor")) {
            for (i in 1:nrow(raw)) {
              raw$redcap_event_name.factor[i] <- unique(data0$redcap_event_name.factor[data0$redcap_event_name %in% raw$redcap_event_name[i]])
            }
          }
          x <- raw[, c("record_id", names(raw)[stringr::str_detect(names(raw), "redcap")])]
          excel <- data.frame(
            Identifier = x[, "record_id"],
            DAG = if (any(utils::head(names(x)) == "redcap_data_access_group")) {
              ifelse(any(names(x) == "redcap_data_access_group.factor"),
                     as.character(x[, "redcap_data_access_group.factor"]),
                     as.character(x[, "redcap_data_access_group"]))
            } else {
              "-"
            },
            Event = rep(event[k], length(event[k])),
            Instrument = "-",
            Field = "-",
            Repetition = "-",
            Description = if (any(names(x) == "redcap_event_name.factor")) {
              as.character(x[i, "redcap_event_name.factor"])
            } else{
              "-"
            },
            Query = if (!query_name %in% NA) {
              if (length(query_name) > 1) {
                query_name[i]
              } else {
                query_name
              }
            } else {
              paste0("The event '", ifelse(any(names(x) == "redcap_event_name.factor"),
                                           as.character(x[i, "redcap_event_name.factor"]),
                                           as.character(x[i, "redcap_event_name"])), "' is missing.")
            },
            Code = "",
            stringsAsFactors = FALSE
          )
          queries <- rbind(queries, excel)
        }
      }
    }

    # If the argument 'addTo' is specified, combine the queries generated with another ones
    if (all(!addTo %in% NA)) {
      queries <- rbind(queries, addTo)
    }

    # Classify each query with it's own code
    if (nrow(queries) != 0) {
      if (any(stringr::str_detect(queries$Identifier, "-"))) {
        queries <- queries %>% tidyr::separate("Identifier", c("center", "id"), sep = "([-])", remove = FALSE)
        queries[, "center"] <- as.numeric(queries[, "center"])
        queries[, "id"] <- as.numeric(queries[, "id"])
        queries <- queries[order(queries[, "center"], queries[, "id"]), ]
        rownames(queries) <- NULL
        queries <- queries[, names(queries)[which(!names(queries) %in% c("center", "id"))]]
      } else {
        queries$Identifier <- as.numeric(queries$Identifier)
        queries <- queries[order(queries$Identifier), ]
      }
      queries <- unique(subset(queries, select = -Code))
      queries <- data.frame(queries %>% dplyr::group_by(Identifier) %>% dplyr::mutate(cod = 1:dplyr::n()))
      queries$Code <- paste0(as.character(queries$Identifier), "-", queries$cod)
      queries <- queries[, names(queries)[which(!names(queries) %in% c("cod"))]]

      # Creation of the report indicating the variables checked and the total of queries generated for each one
      report <- data.frame("var" = queries$Event, "descr" = queries$Description)
      if (all(addTo %in% NA)) {
        report$var <- factor(report$var, levels = c(unique(event)))
        report$descr <- factor(report$descr)
      }
      if (report_zeros == FALSE) {
        report <- report %>% dplyr::group_by(var, .drop = TRUE) %>% dplyr::summarise("total" = dplyr::n())
      }
      if (report_zeros == TRUE) {
        report <- report %>% dplyr::group_by(var, .drop = FALSE) %>% dplyr::summarise("total" = dplyr::n())
      }
      report <- data.frame(report$var, unique(data0$redcap_event_name.factor[data0$redcap_event_name %in% report$var]), report$total)
      report <- report[order(report[,3], decreasing = TRUE),]
      names(report) <- c("Events", "Description", "Total")
      rownames(report) <- NULL
      if (all(report_title %in% NA)) {
        result <- knitr::kable(report, "pipe", align = c("ccc"), caption = "Report of queries")
      }
      if (all(!report_title %in% NA) & length(report_title) == 1) {
        result <- knitr::kable(report, "pipe", align = c("ccc"), caption = report_title)
      }
      if (all(!report_title %in% NA) & length(report_title) > 1) {
        stop("There is more than one title for the report, please choose only one.", call. = FALSE)
      }

    } else {
      # If there is none query, the function still creates a report with the different events showing zeros as the total number of queries.
      # Warning: if there is none query to be identified
      warning("There is no query to be identified.", call. = FALSE)

        report <- data.frame("var" = queries$Event, "descr" = queries$Description)
        if (all(addTo %in% NA)) {
          report$var <- factor(report$var, levels = c(unique(event)))
          report$descr <- factor(report$descr)
        }
        if(report_zeros == TRUE) {
          report <- report %>% dplyr::group_by(var, .drop = FALSE) %>% dplyr::summarise("total" = dplyr::n())
        } else {
          report <- report %>% dplyr::group_by(var, .drop = TRUE) %>% dplyr::summarise("total" = dplyr::n())
        }
        report <- data.frame(report$var, unique(data0$redcap_event_name.factor[data0$redcap_event_name %in% report$var]), report$total)
        report <- report[order(report[,3], decreasing = TRUE),]
        names(report) <- c("Events", "Description", "Total")
        rownames(report) <- NULL
        if (all(report_title %in% NA)) {
          result <- knitr::kable(report, "pipe", align = c("ccc"), caption = "Report of queries")
        }
        if (all(!report_title %in% NA) & length(report_title) == 1) {
          result <- knitr::kable(report, "pipe", align = c("ccc"), caption = report_title)
        }
        if (all(!report_title %in% NA) & length(report_title) > 1) {
          stop("There is more than one title for the report, please choose only one.", call. = FALSE)
        }
    }
    # Return the final product
    list(queries = queries,
         results = result)
  }
