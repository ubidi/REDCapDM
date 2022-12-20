## ----message=FALSE, warning=FALSE, include=FALSE------------------------------
rm(list = ls())
library(REDCapDM)
library(kableExtra)

## ----message=FALSE, warning=FALSE, comment=NA, eval=FALSE---------------------
#  datos <- redcap_data(data_path="C:/Users/username/example.r",
#                       dic_path="C:/Users/username/example_dictionary.csv")

## ----eval=FALSE, message=FALSE, warning=FALSE, comment=NA---------------------
#  datos_api <- redcap_data(uri ="https://redcap.idibell.cat/api/",
#                           token = "55E5C3D1E83213ADA2182A4BFDEA")

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
datos_redcap <- covican

## ----echo=FALSE, message=FALSE, warning=FALSE, comment=NA---------------------
str(datos_redcap, max.level = 1)

## ----echo=FALSE, message=FALSE, warning=FALSE, comment=NA---------------------
head(datos_redcap$data[,1:3])

## ----echo=FALSE, message=FALSE, warning=FALSE, comment=NA---------------------
head(datos_redcap$dictionary[,1:3])

## ----message=FALSE, warning=FALSE, include=FALSE------------------------------
RutinesLocals<-'S:/5_CodiR/1_Funcions/rutines'
source(file.path(RutinesLocals,'table2.R'))

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
datos <- rd_transform(
  data = datos_redcap$data, 
  dic = datos_redcap$dictionary
)

data <- datos$data

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
data %>% 
  dplyr::select(d_birth, d_ingreso, age, age_recalc) %>% 
  dplyr::filter(age != age_recalc)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
#Checkbox no gatekeeper

table(data$type_underlying_disease_haematological_cancer)

#Checkbox with gatekeeper: [type_underlying_disease(0)]='1'

#In the original data set:
table(datos_redcap$data$type_underlying_disease___0, datos_redcap$data$underlying_disease_hemato___1)

#In the transformed data set:
table(data$type_underlying_disease_haematological_cancer, data$underlying_disease_hemato_acute_myeloid_leukemia)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
str(data$dm)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------

datos <- rd_transform(
             data = datos_redcap$data, 
             dic = datos_redcap$dictionary,
             event_path = "S:/5_CodiR/2_CodiR/Queries/202027COVICAN_InstrumentDesignations_2022-12-13.csv",
             final_format = "by_event"
             )


## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
datos$data

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------

datos <- rd_transform(data = datos_redcap$data, 
             dic = datos_redcap$dictionary,
             event_path = "S:/5_CodiR/2_CodiR/Queries/202027COVICAN_InstrumentDesignations_2022-12-13.csv",
             final_format = "by_form"
             )

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
datos$data

## ----results = 'hide', echo = TRUE, message=FALSE, warning=FALSE, comment=NA----
datos <- rd_transform(
  data = datos_redcap$data, 
  dic = datos_redcap$dictionary,
  checkbox_labels = c("N", "Y")
)

data <- datos$data

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
table(data$type_underlying_disease_haematological_cancer)

## ----results = 'hide', echo = TRUE, message=FALSE, warning=FALSE, comment=NA----
datos <- rd_transform(
  data = datos_redcap$data, 
  dic = datos_redcap$dictionary,
  exclude_to_factor = "dm"
)

data <- datos$data

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
table(data$dm)

## ----echo=TRUE, message=FALSE, warning=FALSE, comment=NA, results = 'hide'----
datos <- rd_transform(
  data = datos_redcap$data, 
  dic = datos_redcap$dictionary,
  keep_labels = TRUE
)

data <- datos$data

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
str(data[,1:5])

## ----results = 'hide', echo = TRUE, message=FALSE, warning=FALSE, comment=NA----
datos <- rd_transform(
  data = datos_redcap$data, 
  dic = datos_redcap$dictionary,
  delete_vars = c("inc_", "exc_")
)

data <- datos$data


## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
names(data)

## ----results = 'hide', echo = TRUE, message=FALSE, warning=FALSE, comment=NA----

datos <- rd_transform(
             data = datos_redcap$data, 
             dic = datos_redcap$dictionary,
             event_path = "S:/5_CodiR/2_CodiR/Queries/202027COVICAN_InstrumentDesignations_2022-12-13.csv",
             final_format = "by_event",
             which_event = "initial_visit_arm_1"
             )

data <- datos$data

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
table(data$redcap_event_name)

## ----results = 'hide', echo = TRUE, message=FALSE, warning=FALSE, comment=NA----

datos <- rd_transform(
             data = datos_redcap$data, 
             dic = datos_redcap$dictionary,
             event_path = "S:/5_CodiR/2_CodiR/Queries/202027COVICAN_InstrumentDesignations_2022-12-13.csv",
             final_format = "by_form",
             which_form = "demographics"
             )

data <- datos$data

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
names(data)

## ----results = 'hide', echo = TRUE, message=FALSE, warning=FALSE, comment=NA----

datos <- rd_transform(
             data = datos_redcap$data, 
             dic = datos_redcap$dictionary,
             event_path = "S:/5_CodiR/2_CodiR/Queries/202027COVICAN_InstrumentDesignations_2022-12-13.csv",
             final_format = "by_form",
             which_form = "laboratory_findings",
             wide = TRUE
             )

data <- datos$data


## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
head(data)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
#screening failure
rd_rlogic(logic = "if([exc_1]='1' or [inc_1]='0' or [inc_2]='0' or [inc_3]='0',1,0)",
          data = datos_redcap$data)

#age
rd_rlogic(logic = 'rounddown(datediff([d_birth],[d_ingreso],"y","dmy"),0)',
          data = datos_redcap$data)

## ----results = 'hide', echo = TRUE, message=FALSE, warning=FALSE, comment=NA----

datos <- rd_transform(
    data = datos_redcap$data, 
    dic = datos_redcap$dictionary
)

data <- datos$data


## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
#Before inserting missings
table2(data$type_underlying_disease_haematological_cancer)

data2 <- rd_insert_na(
  data = data,
  filter = rep("age < 65", 2),
  vars = grep("type_underlying_disease", names(data), value = TRUE)
)

#After inserting missings
table2(data2$type_underlying_disease_haematological_cancer)


## ----message=FALSE, warning=FALSE, include=FALSE------------------------------
example <- rd_query(variables = c("copd", "age"),
                         expression = c("%in%NA", "%in%NA"),
                         event = "initial_visit_arm_1",
                         dic = datos_redcap$dictionary,
                         data = datos_redcap$data)
library(knitr)

## ----echo=FALSE, message=FALSE, warning=FALSE, comment=NA---------------------
kable(head(example)) %>% kableExtra::row_spec(0,bold=TRUE) %>% kableExtra::kable_styling()

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
example <- rd_query(variables = c("copd", "age"),
                         expression = c("%in%NA", "%in%NA"),
                         event = "initial_visit_arm_1",
                         dic = datos_redcap$dictionary,
                         data = datos_redcap$data)

## ----message=FALSE, warning=FALSE, comment=NA, results='hide'-----------------
example<- rd_query(variables = c("age", "copd"),
                        variables_names = c("Age", "Chronic obstructive pulmonary disease"),#### OPCIONAL
                        expression = c("%in%NA", "%in%NA"),
                        query_name = c("Age is missing at baseline visit", "COPD"), #### OPCIONAL
                        instrument = c("Inclusión del paciente","Inclusión"),  #### OPCIONAL
                        event = "initial_visit_arm_1",
                        dic = datos_redcap$dictionary,
                        data = datos_redcap$data)

## ----message=FALSE, warning=TRUE, comment=NA----------------------------------
example <- rd_query(variables = c("age", "copd", "potassium"),
                          expression = c("%in%NA", "%in%NA", "%in%NA"),
                          event = "initial_visit_arm_1",
                          dic = datos_redcap$dictionary,
                          data=datos_redcap$data)

## ----message=FALSE, warning=TRUE, comment=NA----------------------------------
example <- rd_query(variables = c("potassium"),
                         expression = c("%in%NA"),
                         event = "initial_visit_arm_1",
                         dic = datos_redcap$dictionary,
                         data = datos_redcap$data,
                         filter = c("analitica_disponible=='1'"))

## ----message=FALSE, warning=TRUE, comment=NA----------------------------------
example <- rd_query(variables=c("age"),
                         expression=c(">20"),
                         event="initial_visit_arm_1",
                         dic=datos_redcap$dictionary,
                         data=datos_redcap$data)

## ----message=FALSE, warning=TRUE, comment=NA----------------------------------
example <- rd_query(variables=c("age", "copd"),
                         expression=c("(>20 & <70) | %in%NA", "==1"),
                         event="initial_visit_arm_1",
                         dic=datos_redcap$dictionary,
                         data=datos_redcap$data)

## ----message=FALSE, warning=TRUE, comment=NA----------------------------------
exemple <- rd_query(variables = c("copd","age","dm"),
                         expression = c("%in%NA"),
                         event = "initial_visit_arm_1",
                         dic = datos_redcap$dictionary,
                         data = datos_redcap$data)

## ----message=FALSE, warning=TRUE, comment=NA----------------------------------
exemple <- rd_query(variables = c("copd"),
                         expression = c("%in%NA"),
                         dic = datos_redcap$dictionary,
                         data = datos_redcap$data)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
exemple <- rd_query(variables = c("copd"),
                         expression = c("%in%NA"),
                         negate = TRUE,
                         event = "initial_visit_arm_1",
                         dic = datos_redcap$dictionary,
                         data = datos_redcap$data)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
exemple2 <- rd_query(variables = c("age"),
                         expression = c("%in%NA"),
                         event = "initial_visit_arm_1",
                         dic = datos_redcap$dictionary,
                         data=datos_redcap$data,
                         addTo = example)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
example <- rd_query(variables = c("copd"),
                         expression = c("%in%NA"),
                         event = "initial_visit_arm_1",
                         dic = datos_redcap$dictionary,
                         data = datos_redcap$data,
                         silent = TRUE)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
example <- rd_query(variables = c("copd", "age"),
                         expression = c("%in%NA", "<20"),
                         event = "initial_visit_arm_1",
                         dic = datos_redcap$dictionary,
                         data = datos_redcap$data,
                         report_title = "Missing COPD values in the baseline event")

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
example <- rd_query(variables = c("copd", "age"),
                         expression = c("%in%NA", "<20"),
                         event = "initial_visit_arm_1",
                         dic = datos_redcap$dictionary,
                         data = datos_redcap$data,
                         report_zeros = TRUE)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
example <- rd_event(event = "follow_up_visit_da_arm_1",
                    dic = datos_redcap$dictionary,
                    data = datos_redcap$data)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
example <- rd_event(event = "follow_up_visit_da_arm_1",
                    filter = "screening_fail_crit==0",
                    dic = datos_redcap$dictionary,
                    data = datos_redcap$data)

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
example <- rd_event(event = c("initial_visit_arm_1","follow_up_visit_da_arm_1"),
                    filter = "screening_fail_crit==0",
                    dic = datos_redcap$dictionary,
                    data = datos_redcap$data,
                    report_zeros = TRUE)

## ----message=FALSE, warning=FALSE, include=FALSE------------------------------
queries_nuevas <- example[c(1:5, 10:20),] # We take only some of the previously created queries
queries_nuevas[nrow(queries_nuevas)+1,] <- c("649-20",rep("abc",8)) # we create a new query

## ----message=FALSE, warning=FALSE, comment=NA---------------------------------
check <- check_queries(old = example, new = queries_nuevas)

## ----echo=FALSE, message=FALSE, warning=FALSE, comment=NA---------------------
kable(head(check)) %>% kableExtra::row_spec(0,bold=TRUE) %>% kableExtra::kable_styling()

