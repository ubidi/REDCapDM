# compareGroups 0.2-0

2023-02-17

## Changes to functions

- New _event_path_ argument of the function _redcap_data()_ to read the event-form mapping of the REDCap project.
- For all functions except _redcap_data()_ we can now pass a list with the data, dictionary and event in the first argument of the function.
- _rd_transform()_ will now take into account the different events that might be present in the variables of the logic for the recalculation of calculated fields and the evaluation of branching logics. This also applies for _rd_rlogic()_.
- As a consequence of this last improvement that applies in longitudinal REDCap projects (with more than one event) now we have to specify not only the data and dictionary but also the event-form mapping.
- New _checkbox_na_ argument in _rd_transform()_ to specify if the values of the checkbox will be converted to missing not only when the branching logic is missing but also when it's not fullfilled (if _TRUE_).
- New _by_dag_ argument in _rd_query()_ to filter the output by each Data Access Group (DAG).
- Summary of the generated queries ( _$results_ ) will now include the event and the type of query and will be displayed in the RStudio viewer tab.

## Bug fixes

- The output of the _redcap_data()_ function was not consistent if we read the data using the files exported from REDCap or the API connection. [Solves Issue #1 in github]
- We changed the use of the _subset()_ function by the _filter()_ function because of undesired behaviours of this function when applying a non-existent expression.

# compareGroups 0.1-1

2023-01-30

- Help documentation has been altered.
- Improvement of the vignette.

# REDCapDM 0.1-0

2022-12-20
