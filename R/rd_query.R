#' Identification of queries
#'
#' This function allows you to identify queries by using a specific expression.
#' It can be used to identify missing values or values that fall outside the lower and upper limit of a variable.
#'
#' @param ... List containing the data and the dictionary and the event if it's needed. Can be the output of the function `redcap_data`.
#' @param data Data frame containing data from REDCap. If the list is specified this argument is not needed.
#' @param dic Data frame containing the dictionary read from REDCap. If the list is specified this argument is not needed.
#' @param variables Vector with variables names from the database that will be checked. If this argument alongside with the argument `expression` are unspecified, this function will look for abnormal values using the minimum and maximum of each variable in the dataset (information contained in the dictionary).
#' @param expression Expression that will be applied to the chosen variables, for example, "<170". If this argument is unspecified, this function will look for abnormal values using the minimum and maximum of each variable in the dataset (information contained in the dictionary).
#' @param negate Logical value indicating whether or not to negate the defined expression. Defaults to `FALSE`.
#' @param variables_names Vector with the description of each variable. By default, the function will automatically pick the description of each variable from the dictionary of the dataset.
#' @param query_name Description of the query. It can be defined as the same one for all variables or you can define one for each variable. By default, the function will define the description as `The value is [value] and it should not be [expression]' for each one of the variables`.
#' @param instrument REDCap's instrument to which the variables belong. It can be defined as the same one for all variables or you can define one for each variable. By default, the function will automatically pick the corresponding instrument of each variable from the dictionary of the dataset.
#' @param event REDCap's event name to be analyzed. If your REDCap project has events, you should use this argument in order to name the event to which the defined variables belong.
#' @param filter A filter to apply to the dataset. This argument can be used to, for example, apply the branching logic of a determined variable.
#' @param addTo Data frame corresponding to a prior report of queries to which you can add the new data frame of queries. By default, the function will always generate a new data frame without taking into account former reports.
#' @param report_title Character string with the report's title.
#' @param report_zeros Logical. If `TRUE`, it returns a report including variables with zero queries.
#' @param by_dag Logical. If `TRUE`, both elements of the output will be grouped by the data access groups (DAGs) of the REDCap project.
#' @return A list with a data frame with 9 columns meant to help the user identify each query and a table with the total of queries per variable.
#' @examples
#' # Missings
#' example <- rd_query(covican,
#'                     variables = c("copd", "age"),
#'                     expression = c("%in%NA", "%in%NA"),
#'                     event = "baseline_visit_arm_1")
#' example
#'
#' # Expression
#' example <- rd_query(covican,
#'                     variables="age",
#'                     expression=">20",
#'                     event="baseline_visit_arm_1")
#' example
#'
#' # Using a filter
#' example <- rd_query(covican,
#'                     variables = "potassium",
#'                     expression = "%in%NA",
#'                     event = "baseline_visit_arm_1",
#'                     filter = "available_analytics=='1'")
#' example
#' @importFrom rlang .data
#' @export

rd_query <- function(..., data = NULL, dic = NULL, variables = NA, expression = NA, negate = FALSE, variables_names = NA, query_name = NA, instrument = NA, event = NA, filter = NA, addTo = NA, report_title = NA, report_zeros = FALSE, by_dag = FALSE)
  {
    old_options <- options()
    on.exit(options(old_options))

    # If the entire list resulting from the 'redcap_data' function is used
    project <- c(...)
    if(!is.null(project)){
      if(!is.null(data)){
        warning("Data has been specified twice so the function will not use the information in the data argument.")
      }
      if(!is.null(dic)){
        warning("Dictionary has been specified twice so the function will not use the information in the dic argument.")
      }
      data <- project$data
      dic <- project$dic
    }

    # Making sure that the object data is a data.frame
    data <- as.data.frame(data)

    # Creation of the structure of the queries
    queries <- as.data.frame(matrix(ncol = 9, nrow = 0))
    colnames(queries) <- c("Identifier", "DAG", "Event", "Instrument", "Field", "Repetition", "Description", "Query", "Code")

    # Naming the first column of the REDCap's database as record_id
    if (all(!names(data) == "record_id")) {
      names(data)[1] <- "record_id"
    }

    # Applying a filter of the chosen events to the database
    if (all(!event %in% NA)) {
      data0 <- data
        # Error: one of the specified events does not exist in the database
        if (any(!event %in% data$redcap_event_name)) {
          if (any(names(data) == "redcap_event_name.factor")) {
            if (any(!event %in% data$redcap_event_name.factor))
              stop("One of the events mentioned does not exist in the database, please verify the argument 'event'.")
          } else {
            stop("One of the events mentioned does not exist in the database, please verify the argument 'event'.")
          }
        }
      if (any(names(data) == "redcap_event_name.factor")) {
        if (all(event %in% data$redcap_event_name.factor)) {
          data <- dplyr::filter(data, data$redcap_event_name.factor %in% event)
        }
      }
      if (all(event %in% data$redcap_event_name)) {
        data <- dplyr::filter(data, data$redcap_event_name %in% event)
      }

      # Warning: there are identifiers that do not present the specified event (it only appears when checking for missings - %in%NA)
      if (length(unique(data0$record_id))!=length(unique(data$record_id)) & any(stringr::str_detect(string = gsub(" ", "", expression), pattern = c("%in%NA")))) {
        warning("There are certain identifiers without observations in one of the events. \nUse the function 'rd_event' to check which ones are missing.", call. = FALSE)
      }
    }


    # Filtering the data using the information of the argument 'filter'
    if (all(!filter %in% NA)) {
      if (length(filter) == 1) {
        command <- paste0("data", "<-dplyr::filter(data,", filter, ")")
        eval(parse(text = command))
        if (nrow(data)==0) {
          stop("The filter applied results in no observations, please change it.", call. = FALSE)
        }
      }
    }

    # Warning: some of the variables present a branching logic (just for cases where they are being checked for missings)
    if (any(gsub("___.*$", "", variables[stringr::str_detect(string = gsub(" ", "", expression), pattern = c("%in%NA"))]) %in% dic[!dic$branching_logic_show_field_only_if %in% c(NA, ""), "field_name"])) {
      var_logic <- dic[!dic$branching_logic_show_field_only_if%in%c(NA,""),"field_name"]
      var_miss <- variables[stringr::str_detect(string = gsub(" ", "", expression), pattern = c("%in%NA"))]
      # Identification of the variables with a branching logic
      vars <- var_miss[gsub("___.*$", "", var_miss) %in% var_logic]

      if (any(stringr::str_detect(unique(dic$branching_logic_show_field_only_if), "\\(\\d\\)"))==FALSE) {
        # Future report of the variables with a branching logic
        branch <- data.frame(
          var = dic$field_name[dic$field_name %in% gsub("___.*$", "", vars)],
          label = gsub("<.*?>", "", dic$field_label[dic$field_name %in% gsub("___.*$", "", vars)]),
          branch = dic$branching_logic_show_field_only_if[dic$field_name %in% gsub("___.*$", "", vars)]
        )

        # Adaptation of the REDCap's branching logic to R's logic
        branch$branch <- gsub("\\[(.+)\\((\\d+)\\)\\]", "[\\1___\\2]", branch$branch)
        branch$branch <- gsub("\\[event\\-name\\]", "[redcap_event_name]", branch$branch)
        branch$branch <- gsub("\\[user\\-dag\\-name\\]", "[redcap_data_access_group]", branch$branch)
        branch$branch <- gsub("\\[record\\-dag\\-name\\]", "[redcap_data_access_group]", branch$branch)
        branch$branch <- gsub("=", "==", branch$branch)
        branch$branch <- gsub("<>", "!=", branch$branch)
        branch$branch <- gsub(" and ", " & ", branch$branch)
        branch$branch <- gsub(" or ", " | ", branch$branch)
        branch$branch <- gsub(" ", "", branch$branch)
        branch$vars <- gsub("\\[(\\w+)\\]==.(\\w+).", "\\1",
                            gsub("\\[(\\w+)\\]==(\\w+)", "\\1",
                                 gsub("\\[(\\w+)\\]!=(\\w+)", "\\1",
                                      gsub("\\[(\\w+)\\]!=''", "\\1",
                                           gsub("\\[(\\w+)\\]!=.(\\w+).", "\\1",
                                                gsub("\\(", "",
                                                     gsub("\\)", "",branch$branch)))))))

        branch2 <- as.data.frame(branch)

        # In case the branching logic presents multiple conditions, we create a data frame with every single condition
        for (i in 1:10) {
          vars_branch <- data.frame(cbind(
            stringr::str_split_fixed(branch2$vars, "&", i),
            stringr::str_split_fixed(branch2$vars, "\\|", i)
          ))
        }
        vars_branch[,11] <- ifelse(vars_branch[, 11] %in% vars_branch[, 1], NA, vars_branch[, 11])
        vars_branch$var_ori <- branch2$var
        for (i in 1:20) {
          vars_branch[,i] <- ifelse(stringr::str_detect(string = vars_branch[, i], pattern = "&"), NA, vars_branch[, i])
          vars_branch[,i] <- ifelse(stringr::str_detect(string = vars_branch[, i], pattern = "\\|"), NA, vars_branch[, i])
          vars_branch[,i][vars_branch[, i] %in% c("")] <- NA
          vars_branch[,i] <- gsub(" ", "", vars_branch[, i])
          vars_branch[,i] <- gsub("\\[(\\w+)\\]==.(\\w+).", "\\1", vars_branch[, i])
        }
        cmd <- paste0("!vars_branch[,", 1:(length(vars_branch) - 1), "]", "%in%c(names(data),NA)")
        cmd <- paste(cmd, collapse = "|")
        cmd <- paste0("vars_branch$var_ori[", cmd, "]")
        branch2 <- dplyr::filter(branch2, !branch2$var %in% eval(parse(text = cmd)))
        branch2$branch <- gsub("\\[(\\w+)\\]", "data$\\1", branch2$branch)
        invalid <- dplyr::filter(branch2, branch2$var %in% eval(parse(text = cmd)))
        var <- branch2$var

        # Construction of the data frame with the branching logic
        for (q in 1:nrow(branch2)) {
          vars_dep <- c(stringr::str_split_fixed(branch2$vars[q], "&", 10),stringr::str_split_fixed(branch2$vars[q], "\\|", 10))
          vars_dep[11] <- ifelse(vars_dep[11] %in% vars_dep[1], NA, vars_dep[11])
          vars_dep <- dplyr::filter(vars_dep, vars_dep %in% c(vars_dep[!stringr::str_detect(vars_dep, "&")]))
          vars_dep <- dplyr::filter(vars_dep, vars_dep %in% c(vars_dep[!stringr::str_detect(vars_dep, "\\|")]))
          vars_dep <- dplyr::filter(vars_dep, vars_dep %in% c(vars_dep[!vars_dep %in% c(NA, "")]))
          vars_dep <- gsub(" ", "", vars_dep)

          branch2$branch[q] <- gsub(" ", "", branch2$branch[q])

          # If one of the variables in the branching logic is a factor, we change the condition to present the level of the factor
          for (z in 1:length(vars_dep)) {
            if (any(class(data[, vars_dep[z]]) == "factor")){
              value_dep[z] <- (gsub(paste0(".*", vars_dep[z], "==.(\\w+).*"), "\\1",
                                    gsub(paste0(".*", vars_dep[z], "==(\\w+)"), "\\1", branch2$branch[q])))
              if (value_dep[z] %in% value_dep[stringr::str_detect(string = value_dep, pattern = "^\\d*$")]){
                branch2$branch[q] <- gsub(paste0(vars_dep[z],"==(\\w+)"),
                                          paste0(vars_dep[z], "=='", levels(data[, vars_dep[z]])[as.numeric(value_dep[z]) + 1], "'"),
                                          gsub(paste0(vars_dep[z], "==.(\\w+)."),
                                               paste0(vars_dep[z], "=='", levels(data[, vars_dep[z]])[as.numeric(value_dep[z]) + 1], "'"),
                                               branch2$branch[q]))
              }
            }
          }
        }

        # Improvements made to the data frame
        branch2$branch <- gsub("data[$]", "", branch2$branch)
        branch2$branch <- gsub("&", " & ", branch2$branch)
        branch2$branch <- gsub("\\|", " | ", branch2$branch)
        branch2 <- branch2 %>% dplyr::select(-vars)
        branch <- as.data.frame(branch2)
      } else {
        # Future report of the variables with a branching logic
        branch <- data.frame(matrix(ncol=3))
        names(branch) <- c("var", "label", "branch")
        for (i in 1:length(vars)) {
          branch[i,] <- c(vars[i], gsub("<.*?>", "", dic$field_label[dic$field_name %in% gsub("___.*$", "", vars[i])]), dic$branching_logic_show_field_only_if[dic$field_name %in% gsub("___.*$", "", vars[i])])
        }
      }
      rownames(branch) <- NULL
      names(branch) <- c("Variable", "Label", "Branching logic")
    }

    # Warning: selecting more than one event can lead to identify missings in variables that are not collected in those events
    if (length(event)>1) {
      warning("You have selected queries from more than one event. \nThis could lead to a larger number of queries, for example missings. \nPlease verify if you really want to check all the events provided.", call. = FALSE)
    }

    # Warning: detecting that the data has events, but there is none specified
    if (all(event %in% NA) & any(names(data) %in% "redcap_event_name") & length(unique(data$redcap_event_name)) > 1) {
      warning("event = NA, but the dataset presents a variable that indicates the presence of events, please specify the event.", call. = FALSE)
    }

    # Warning: detecting more variables than expressions, so the function applies the same expression to all of them
    if (length(variables) > length(expression)) {
      expression <- rep(expression[1], length(variables))
      warning("There are more variables than expressions, so the same expression was applied to all variables", call. = FALSE)
    }

    # Since the argument 'expression' is unspecified, the minimum and maximum of each variable are considered as the expression to check
    if (all(expression %in% NA)) {
      # If there are no variables specified, check the dictionary for all of those who have minimum and maximum
      if (all(variables %in% NA)) {
        min <- dic[!dic$text_validation_min %in% NA & dic$text_validation_type_or_show_slider_number %in% c("number", "integer"), "field_name"]
        min <- min[min %in% names(data)]
        max <- dic[!dic$text_validation_max %in% NA & dic$text_validation_type_or_show_slider_number %in% c("number", "integer"), "field_name"]
        max <- max[max %in% names(data)]
        variables <- c(min, max)
      } else {
        # If there are variables specified, fetch minimum and maximum for those variables
        min <- dic[!dic$text_validation_min %in% NA & dic$text_validation_type_or_show_slider_number %in% c("number", "integer") & dic$field_name%in%variables, "field_name"]
        min <- min[min %in% names(data)]
        max <- dic[!dic$text_validation_max %in%NA & dic$text_validation_type_or_show_slider_number %in% c("number", "integer") & dic$field_name%in%variables, "field_name"]
        max <- max[max %in% names(data)]
        variables <- c(min, max)
      }
      for (q in 1:length(min)) {
        expression[q] <- paste0("<", dic[dic$field_name %in% variables[q], "text_validation_min"])
      }
      for (q in length(min):length(variables)) {
        expression[q] <- paste0(">", dic[dic$field_name %in% variables[q], "text_validation_max"])
      }
    }

    # We make sure the order of the variables chosen remains the same as the original
    if (any(variables[stringr::str_detect(string = gsub(" ", "", expression), pattern = c("%in%NA"))] %in% dic[!dic$branching_logic_show_field_only_if%in%c(NA,""),"field_name"])) {
      if (all(variables != vars)) {
      variables <- vars
      }
    }

    for (i in 1:length(expression)) {
      # If there is a large expression using '|' or '&', convert into a filter and apply it
      if (any(stringr::str_detect(string = expression[i], pattern  = c("[|]", "&"))) == TRUE) {
        split <- unlist(stringr::str_split(expression[i], "& | [|]"))
        split <- paste(variables[i], split)
        split <- gsub(" ", "", split)
        if (any(stringr::str_detect(split, "[(?]")) == TRUE) {
          split[stringr::str_detect(split, "[(?]")] <- paste0("(", gsub("[(]", "", split[stringr::str_detect(split, "[(?]")]))
        }
        vec <- unlist(stringr::str_extract_all(expression, "& | [|]"))
        vec <- gsub(" ", "", vec)
        expre <- c(split[1], paste(vec, split[2:length(split)]))
        expre <- paste(expre, collapse = " ")

        command <- paste0("raw", "<-dplyr::filter(data,", expre, ")")
      } else {
        command <- paste0("raw", "<-dplyr::filter(data,", variables[i], expression[i], ")")
      }
      eval(parse(text = command))

      # If the argument negate is TRUE, reverse the filters apllied so far
      if (negate == TRUE) {
        raw <- suppressMessages(dplyr::anti_join(data, raw))
      }

      if (all(!filter %in% NA)) {
        if (length(filter) > 1) {
          command <- paste0("definitive", "<-dplyr::filter(raw,", filter[i], ")")
          eval(parse(text = command))
          if (nrow(data)==0) {
            stop("One of the filters applied results in no observations, please change it.", call. = FALSE)
          }
        } else {
          definitive <- raw
        }
      } else {
        definitive <- raw
      }

      # Identification of queries, using the structure built before
      if (nrow(definitive) > 0) {
        x <- definitive[, c("record_id", names(definitive)[stringr::str_detect(names(definitive), "redcap")], variables[i])]
        excel <- data.frame(
          Identifier = x[, "record_id"],
          DAG = if (any(utils::head(names(x)) == "redcap_data_access_group")) {
            if (any(names(x) == "redcap_data_access_group.factor")) {
              as.character(x[, "redcap_data_access_group.factor"])
            } else {
              as.character(x[, "redcap_data_access_group"])
            }
          } else {
            "-"
          },
          Event = if (any(utils::head(names(x)) == "redcap_event_name")) {
            if (any(names(x) == "redcap_event_name.factor")) {
              as.character(x[, "redcap_event_name.factor"])
            } else {
              as.character(x[, "redcap_event_name"])
            }
          } else {
            "-"
          },
          Instrument = if (unique(instrument %in% NA)) {
            if (gsub("___.*$", "", variables[i]) %in% dic$field_name) {
              gsub("_", " ", Hmisc::capitalize(dic[dic[, "field_name"] %in% gsub("___.*$", "", variables[i]), "form_name"]))
            } else{
              "-"
            }
          } else {
            if (length(instrument) > 1) {
              instrument[i]
            } else {
              instrument
            }
          },
          Field = variables[i],
          Repetition = if (any(utils::head(names(x)) == "redcap_repeat_instrument") & any(utils::head(names(x)) == "redcap_repeat_instance")) {
            if (all(is.na(x[, "redcap_repeat_instrument"]))) {
              paste0(x[, "redcap_repeat_instance"])
            } else {
              paste0(x[, "redcap_repeat_instrument"], "-", x[, "redcap_repeat_instance"])
            }
          } else {
            "-"
          },
          Description = if (unique(variables_names %in% NA)) {
            if (gsub("___.*$", "", variables[i]) %in% dic$field_name) {
              dic[dic[, "field_name"] %in% gsub("___.*$", "", variables[i]), "field_label"]
            } else{
              "-"
            }
          } else {
            variables_names[i]
          },
          Query = if (all(!query_name %in% NA)) {
            if (length(query_name) > 1) {
              query_name[i]
            } else {
              query_name
            }
          } else {
            if (negate == TRUE) {
              paste0("The value is ", x[, variables[i]], " and it should be ", gsub(pattern = "==", "equal to ", x = gsub(pattern = "!=", "not equal to ", x = gsub(pattern = "%in%NA", replacement = "missing", x = gsub(" ", "", expression[i])))))
            } else {
              paste0("The value is ", x[, variables[i]], " and it should not be ", gsub(pattern = "==", "equal to ", x = gsub(pattern = "!=", "not equal to ", x = gsub(pattern = "%in%NA", replacement = "missing", x = gsub(" ", "", expression[i])))))
            }
          },
          Code = "",
          stringsAsFactors = FALSE
        )
        queries <- rbind(queries, excel)
      } else {
        # If there are no queries to be identified, we still need this information to build the report
        excel <- list(
          DAG = if (any(utils::head(names(data)) == "redcap_data_access_group")) {
            if (any(names(data) == "redcap_data_access_group.factor")) {
              unique(as.character(data[data$redcap_event_name %in% event | data$redcap_event_name.factor %in% event, "redcap_data_access_group.factor"]))
            } else {
              unique(as.character(data[data$redcap_event_name %in% event | data$redcap_event_name.factor %in% event, "redcap_data_access_group"]))
            }
          } else {
            "-"
          },
          Variables = variables[i],
          Description = if (unique(variables_names %in% NA)) {
            if (gsub("___.*$", "", variables[i]) %in% dic$field_name) {
              dic[dic[, "field_name"] %in% gsub("___.*$", "", variables[i]), "field_label"]
            } else{
              "-"
            }
          } else {
            variables_names[i]
          },
          Event = if (any(utils::head(names(data)) == "redcap_event_name")) {
            if (any(names(data) == "redcap_event_name.factor")) {
              as.character(data[, "redcap_event_name.factor"])
            } else {
              as.character(data[, "redcap_event_name"])
            }
          } else {
            "-"
          },
          Query = if (all(!query_name %in% NA)) {
            if (length(query_name) > 1) {
              query_name[i]
            } else {
              query_name
            }
          } else {
            if (negate == TRUE) {
              paste0("The value should be ", gsub(pattern = "==", "equal to ", x = gsub(pattern = "!=", "not equal to ", x = gsub(pattern = "%in%NA", replacement = "missing", x = gsub(" ", "", expression[i])))))
            } else {
              paste0("The value should not be ", gsub(pattern = "==", "equal to ", x = gsub(pattern = "!=", "not equal to ", x = gsub(pattern = "%in%NA", replacement = "missing", x = gsub(" ", "", expression[i])))))
            }
          }
        )
      }
    }

    # If the argument 'addTo' is specified, combine the queries generated with another ones
    if (all(!addTo %in% NA)) {
      queries <- rbind(queries, addTo$queries)
    }

    # Classify each query with it's own code
    if (nrow(queries) != 0) {
      if (any(stringr::str_detect(queries$Identifier, "-"))) {
        queries <- queries %>%
                      tidyr::separate("Identifier", c("center", "id"), sep = "([-])", remove = FALSE)
        queries[, "center"] <- as.numeric(queries[, "center"])
        queries[, "id"] <- as.numeric(queries[, "id"])
        queries <- queries[order(queries[, "center"], queries[, "id"]), ]
        rownames(queries) <- NULL
        queries <- queries[, names(queries)[which(!names(queries) %in% c("center", "id"))]]
      } else {
        queries$Identifier <- as.numeric(queries$Identifier)
        queries <- queries[order(queries$Identifier), ]
      }
      queries <- unique(queries %>%
                          dplyr::select(-"Code"))
      queries <- data.frame(queries %>%
                              dplyr::group_by(.data$Identifier) %>%
                              dplyr::mutate(cod = 1:dplyr::n()))
      queries$Code <- paste0(as.character(queries$Identifier), "-", queries$cod)
      queries <- queries[, names(queries)[which(!names(queries) %in% c("cod"))]]


      report <- data.frame("var" = queries$Field,
                           "descr" = queries$Description,
                           "query_descr" = gsub(" is .* it", "", queries$Query),
                           "event" = queries$Event, "dag" = queries$DAG)
      if (all(addTo %in% NA & variables_names %in% NA)) {
        report$var <- factor(report$var,
                             levels = c(unique(variables)))
        report$descr <- factor(report$descr,
                               levels = c(unique(dic[dic[, "field_name"] %in% gsub("___.*$", "", variables), "field_label"])))
        report$event <- factor(report$event,
                               levels = if (any(names(data) == "redcap_event_name.factor")) {
                                 unique(as.character(data[, "redcap_event_name.factor"]))
                               } else {
                                 unique(as.character(data[, "redcap_event_name"]))
                               })
      }
      if (all(addTo %in% NA & !is.na(variables_names))) {
        report$var <- factor(report$var,
                             levels = c(unique(variables)))
        report$descr <- factor(report$descr,
                               levels = c(unique(variables_names)))
        report$event <- factor(report$event,
                               levels = if (any(names(data) == "redcap_event_name.factor")) {
                                 unique(as.character(data[, "redcap_event_name.factor"]))
                               } else {
                                 unique(as.character(data[, "redcap_event_name"]))
                               })
      }

      if (report_zeros == FALSE) {
        report <- report %>%
                    dplyr::group_by(.data$var, .data$event, .data$query_descr, .data$dag, .drop = TRUE) %>%
                    dplyr::summarise("total" = dplyr::n(), .groups = "keep")
      }
      if (report_zeros == TRUE) {
        report <- report %>%
                    dplyr::group_by(.data$var, .data$event, .data$query_descr, .data$dag, .drop = FALSE) %>%
                    dplyr::summarise("total" = dplyr::n(), .groups = "keep")

      if (any(report$dag %in% NA & report$total %in% 0)) {
        zero_vars <- as.character(report$var[report$total == 0])
        zero <- data.frame(matrix(ncol = 5, nrow = rep(length(unique(report$dag[report$total != 0])), length(zero_vars))))
        names(zero) <- c("var", "dag", "query_descr", "event", "total")
        zero$var <- rep(zero_vars, each = length(zero_vars))
        zero$dag <- rep(unique(report$dag[report$total != 0]), length(zero_vars))
        zero$total <- 0
        for (i in 1:length(zero_vars)) {
          zero$event[zero$var %in% zero_vars[i]] <- as.character(report$event[report$total %in% 0 & report$var %in% zero_vars[i]])
          if (length(which(variables %in% zero_vars[i])) > 1) {
            zero$query_descr[zero$var %in% zero_vars[i]] <-  "-"
          } else {
            zero$query_descr[zero$var %in% zero_vars[i]] <- paste0("This value should not be ", ifelse(gsub(" ", "", expression[which(variables %in% zero_vars[i])]) %in% "%in%NA", "missing", gsub(" ", "", expression[which(variables %in% zero_vars[i])])))
          }
        }
        report <- merge(report, zero, by = c(names(zero)), all = T)
        report <- report %>%
                    dplyr::filter(!is.na(.data$query_descr) & !is.na(.data$dag))
        }
      }

      report <- data.frame(report$var,
                           purrr::map_chr(gsub("___.*$","",report$var), function(x){
                             if(x %in% dic$field_name){
                               name <- gsub("<.*?>", "", dic$field_label[dic$field_name %in% x])
                               # Truncate description name if it exceeds 50 words
                               stringr::str_trunc(name, 50)
                               }else{
                                 "-"
                                 }}),
                           report$event,
                           report$query_descr,
                           report$total,
                           report$dag)
      report <- report[order(report[, "report.total"], decreasing = TRUE), ]
      # Truncate variable name if it exceeds 26 characters
      report$report.var <- as.character(report$report.var)
      report$report.var <- stringr::str_trunc(report$report.var, 26)

      names(report) <- c("Variables", "Description", "Event", "Query", "Total", "DAG")
      report[, "Query"] <- gsub("&", " & ", gsub("\\|", " \\| ", report[, "Query"]))
      rownames(report) <- NULL

      # Warning and Adding information about the variables with branching logic to the report
      if (any(gsub("___.*$","", variables[stringr::str_detect(string = gsub(" ", "", expression), pattern = c("%in%NA"))]) %in% dic[!dic$branching_logic_show_field_only_if%in%c(NA,""),"field_name"])) {
        if (!all(filter%in%branch$`Branching logic`)) {
          warning("Some of the variables that were checked for missings present a branching logic. \nCheck the results tab of output for more details (...$results).", call. = FALSE)
          branch$Variable <- stringr::str_trunc(branch$Variable, 26)
          report <- merge(report,
                          branch %>%
                            dplyr::select("Variable", "Branching logic"),
                          by.x = "Variables", by.y = "Variable", all.x = TRUE)
          report$`Branching logic`[is.na(report$`Branching logic`)] <- "-"
          report_dag <- merge(report,
                              branch %>%
                                dplyr::select("Variable", "Branching logic"),
                              by.x = "Variables", by.y = "Variable", all.x = TRUE)
          report_dag$`Branching logic`[is.na(report$`Branching logic`)] <- "-"
        }
      }


      if (by_dag %in% FALSE) {
        report <- report %>%
                    dplyr::select(-"DAG") %>%
                    dplyr::group_by(.data$Variables, .data$Description, .data$Event, .data$Query, .drop = FALSE) %>%
                    dplyr::summarise("Total" = sum(.data$Total), .groups = "keep")
        report <- report[order(report$Total, decreasing = T), ]
      if (all(report_title %in% NA)) {
        result <- knitr::kable(report, "pipe",
                               align = "ccccc",
                               caption = "Report of queries")
        viewer <- knitr::kable(report,
                               align = "ccccc",
                               row.names = FALSE,
                               caption = "Report of queries",
                               format = "html",
                               longtable = TRUE)
        viewer <- kableExtra::kable_styling(viewer,
                                            bootstrap_options = c("striped", "condensed"),
                                            full_width = FALSE)
        viewer <- kableExtra::row_spec(viewer, 0,
                                       italic = FALSE,
                                       extra_css = "border-bottom: 1px solid grey")
      }
      if (all(!report_title %in% NA) & length(report_title) == 1) {
        result <- knitr::kable(report, "pipe",
                               align = "ccccc",
                               caption = report_title)
        viewer <- knitr::kable(report,
                               align = c("ccccc"),
                               row.names = FALSE,
                               caption = report_title,
                               format = "html",
                               longtable = TRUE)
        viewer <- kableExtra::kable_styling(viewer,
                                            bootstrap_options = c("striped", "condensed"),
                                            full_width = FALSE)
        viewer <- kableExtra::row_spec(viewer, 0,
                                       italic = FALSE,
                                       extra_css = "border-bottom: 1px solid grey")
      }
      if (all(!report_title %in% NA) & length(report_title) > 1) {
        stop("There is more than one title for the report, please choose only one.", call. = FALSE)
      }

        def <- list(queries = queries,
                    results = viewer)
      }


      if (by_dag %in% TRUE) {
        report_dag <- split(report, f = report$DAG)
        report <- report %>%
                    dplyr::select(-"DAG") %>%
                    dplyr::group_by(.data$Variables, .data$Description, .data$Event, .data$Query, .drop = FALSE) %>%
                    dplyr::summarise("Total" = sum(.data$Total), .groups = "keep")
        report <- report[order(report$Total, decreasing = T), ]

        if (all(report_title %in% NA)) {
          for (i in 1:length(report_dag)) {
            report_dag[[i]] <- report_dag[[i]] %>%
                                  dplyr::select("DAG", "Variables", "Description", "Event", "Query", "Total")
            report_dag[[i]] <- knitr::kable(report_dag[[i]],
                                            align = "ccccc",
                                            row.names = FALSE,
                                            caption = "Report of queries",
                                            format = "html",
                                            longtable = TRUE)
            report_dag[[i]] <- kableExtra::kable_styling(report_dag[[i]],
                                                         bootstrap_options = c("striped", "condensed"),
                                                         full_width = FALSE)
            report_dag[[i]] <- kableExtra::row_spec(report_dag[[i]], 0,
                                                    italic = FALSE,
                                                    extra_css = "border-bottom: 1px solid grey")
          }
        }
        if (all(!report_title %in% NA) & length(report_title) == 1) {
          for (i in 1:length(report_dag)) {
            report_dag[[i]] <- knitr::kable(report_dag[[i]],
                                            align = c("ccccc"),
                                            row.names = FALSE,
                                            caption = report_title,
                                            format = "html",
                                            longtable = TRUE)
            report_dag[[i]] <- kableExtra::kable_styling(report_dag[[i]],
                                                         bootstrap_options = c("striped", "condensed"),
                                                         full_width = FALSE)
            report_dag[[i]] <- kableExtra::row_spec(report_dag[[i]], 0,
                                                    italic = FALSE,
                                                    extra_css = "border-bottom: 1px solid grey")
          }
        }
        if (all(!report_title %in% NA) & length(report_title) > 1) {
          stop("There is more than one title for the report, please choose only one.", call. = FALSE)
        }

        def <- list(queries = split(queries, f = queries$DAG),
                    results = report_dag)
      }
    } else {
      # If there is none query, the function still creates a report with the different variables showing zeros as the total number of queries.

      ## Warning: if there is none query to be identified
      options(warn = 1)
      message("There is no query to be identified in the dataset.")

      max_length <- max(lengths(excel))
      excel <- lapply(excel, function(x) {length(x) <- max_length; x})
      no_queries <- data.frame(excel)

      no_queries <- no_queries %>%
                      tidyr::fill(.data$Event, .data$Variables, .data$Description, .data$Query, .direction = "down")
      no_queries$Description <- stringr::str_trunc(no_queries$Description, 50)
      no_queries$Variables <- stringr::str_trunc(no_queries$Variables, 26)

      report <- no_queries
      report$Total <- 0
      rownames(report) <- NULL

      ## Warning and Adding information about the variables with branching logic to the report
      if (any(gsub("___.*$","", variables[stringr::str_detect(string = gsub(" ", "", expression), pattern = c("%in%NA"))]) %in% dic[!dic$branching_logic_show_field_only_if%in%c(NA,""),"field_name"])) {
        if (!all(filter%in%branch$`Branching logic`)) {
          warning("Some of the variables that were checked for missings present a branching logic. \nCheck the results tab of output for more details (...$results).", call. = FALSE)
          branch$Variable <- stringr::str_trunc(branch$Variable, 26)
          report <- merge(report,
                          branch %>%
                            dplyr::select("Variable", "Branching logic"),
                          by.x = "Variables", by.y = "Variable", all.x = TRUE)
          report$`Branching logic`[is.na(report$`Branching logic`)] <- "-"
        }
      }

      if (by_dag %in% FALSE) {
        report <- report %>%
                      dplyr::select(-"DAG") %>%
                      dplyr::distinct(.keep_all = T)
        if (all(report_title %in% NA)) {
          result <- knitr::kable(report,
                                 "pipe",
                                 align = "ccccc",
                                 caption = "Report of queries")
          viewer <- knitr::kable(report,
                                 align = c("ccccc"),
                                 row.names = FALSE,
                                 caption = "Report of queries",
                                 format = "html",
                                 longtable = TRUE)
          viewer <- kableExtra::kable_styling(viewer,
                                              bootstrap_options = c("striped", "condensed"),
                                              full_width = FALSE)
          viewer <- kableExtra::row_spec(viewer, 0,
                                         italic = FALSE,
                                         extra_css = "border-bottom: 1px solid grey")
        }
        if (all(!report_title %in% NA) & length(report_title) == 1) {
          result <- knitr::kable(report,
                                 "pipe",
                                 align = "ccccc",
                                 caption = report_title)
          viewer <- knitr::kable(report,
                                 align = "ccccc",
                                 row.names = FALSE,
                                 caption = report_title,
                                 format = "html",
                                 longtable = TRUE)
          viewer <- kableExtra::kable_styling(viewer,
                                              bootstrap_options = c("striped", "condensed"),
                                              full_width = FALSE)
          viewer <- kableExtra::row_spec(viewer, 0,
                                         italic = FALSE,
                                         extra_css = "border-bottom: 1px solid grey")
        }
        def <- list(queries = queries,
                    results = viewer)
      }

      if (by_dag %in% TRUE) {
        report_dag <- split(report, f = report$DAG)
        report <- report %>%
                    dplyr::select(-"DAG") %>%
                    dplyr::distinct(.keep_all = T)
        if (all(report_title %in% NA)) {
          for (i in 1:length(report_dag)) {
            report_dag[[i]] <- report_dag[[i]] %>%
                                  dplyr::select("DAG", "Variables", "Description", "Event", "Query", "Total")
            report_dag[[i]] <- knitr::kable(report_dag[[i]],
                                            align = "ccccc",
                                            row.names = FALSE,
                                            caption = "Report of queries",
                                            format = "html",
                                            longtable = TRUE)
            report_dag[[i]] <- kableExtra::kable_styling(report_dag[[i]],
                                                         bootstrap_options = c("striped", "condensed"),
                                                         full_width = FALSE)
            report_dag[[i]] <- kableExtra::row_spec(report_dag[[i]], 0,
                                                    italic = FALSE,
                                                    extra_css = "border-bottom: 1px solid grey")
          }
        }
        if (all(!report_title %in% NA) & length(report_title) == 1) {
          for (i in 1:length(report_dag)) {
            report_dag[[i]] <- knitr::kable(report_dag[[i]],
                                            align = "ccccc",
                                            row.names = FALSE,
                                            caption = report_title,
                                            format = "html",
                                            longtable = TRUE)
            report_dag[[i]] <- kableExtra::kable_styling(report_dag[[i]],
                                                         bootstrap_options = c("striped", "condensed"),
                                                         full_width = FALSE)
            report_dag[[i]] <- kableExtra::row_spec(report_dag[[i]], 0,
                                                    italic = FALSE,
                                                    extra_css = "border-bottom: 1px solid grey")
          }
        }
        def <- list(queries = queries,
                    results = report_dag)
      }

      if (all(!report_title %in% NA) & length(report_title) > 1) {
        stop("There is more than one title for the report, please choose only one.", call. = FALSE)
      }

    }
    # Return the final product
    def
  }

