#Clear existing data and graphics

graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('Example1_DATA.csv')
#Setting Labels

label(data$record_id)="Identification number"
label(data$redcap_event_name)="Event Name"
label(data$redcap_repeat_instrument)="Repeat Instrument"
label(data$redcap_repeat_instance)="Repeat Instance"
label(data$redcap_data_access_group)="Data Access Group"
label(data$redcap_survey_identifier)="Survey Identifier"
label(data$gender)="Gender"
label(data$dob)="Date of birth"
label(data$upload)="upload"
label(data$tabla3)="abcv"
label(data$weight)="Weight"
label(data$height)="Height"
label(data$bmi)="Body mass index"
label(data$ethnicity)="Ethnicity"
label(data$ethnicity_2)="Ethnicity"
label(data$d_naixement)="Data de naixement"
label(data$edat)="edat"
label(data$demographic_information_complete)="Complete?"
label(data$a)="a"
label(data$a_9)="a_9"
label(data$a_8)="a_8"
label(data$a_7)="a_7"
label(data$a_6)="a_6"
label(data$a_5)="a_5"
label(data$a_4)="a_4"
label(data$a_3)="a_3"
label(data$a_2)="a_2"
label(data$inclusion_criteria_complete)="Complete?"
label(data$aa)="aa"
label(data$aa_2)="aa_2"
label(data$aa_3)="aa_3"
label(data$aa_4)="aa_4"
label(data$aa_5)="aa_5"
label(data$background_information_complete)="Complete?"
label(data$erythrocytes)="Erythrocytes"
label(data$haemoglobin)="Haemoglobin"
label(data$hematocrit)="Hematocrit"
label(data$continua_tratamiento)="Plan del tratamiento"
label(data$aaa_9)="aaa_9"
label(data$aaa_8)="aaa_8"
label(data$aaa_7)="aaa_7"
label(data$aaa_6)="aaa_6"
label(data$aaa_5)="aaa_5"
label(data$aaa_4)="aaa_4"
label(data$aaa_3)="aaa_3"
label(data$analytical_data_complete)="Complete?"
label(data$b)="b"
label(data$b_5)="b_5"
label(data$b_4)="b_4"
label(data$b_3)="b_3"
label(data$b_2)="b_2"
label(data$followup_assessment_complete)="Complete?"
label(data$borrar_suma)="borrar_suma"
label(data$reinicio_motivo)="Motivo de reinicio"
label(data$reinicio_motivo_otro)="Especifique motivo de reinicio"
label(data$switch_motivo)="Motivo de switch"
label(data$switch_motivo_otro)="Especifique motivo de switch"
label(data$fecha_suspension)="Fecha de suspensión"
label(data$suspension_motivo)="Motivo de suspensión"
label(data$suspension_motivo_otro)="Especifique motivo de suspensión"
label(data$fecha_administracion)="Fecha de administración "
label(data$num_administracion_anti)="Número de administración"
label(data$efectos_adversos_anti)="Efectos adversos"
label(data$efectos_adversos_tipo_anti___0)="Tipo de efectos adversos (choice=Estreñimiento)"
label(data$efectos_adversos_tipo_anti___1)="Tipo de efectos adversos (choice=Prurito)"
label(data$efectos_adversos_tipo_anti___2)="Tipo de efectos adversos (choice=Reacción en el lugar de inyección)"
label(data$efectos_adversos_tipo_anti___3)="Tipo de efectos adversos (choice=Cuadro catarral)"
label(data$efectos_adversos_tipo_anti___4)="Tipo de efectos adversos (choice=Dolor muscular)"
label(data$efectos_adversos_tipo_anti___5)="Tipo de efectos adversos (choice=Astenia)"
label(data$efectos_adversos_tipo_anti___6)="Tipo de efectos adversos (choice=Mareo o vértigo)"
label(data$efectos_adversos_tipo_anti___7)="Tipo de efectos adversos (choice=Cambios en la tensión arterial)"
label(data$efectos_adversos_tipo_anti___8)="Tipo de efectos adversos (choice=Dolor torácico)"
label(data$efectos_adversos_tipo_anti___9)="Tipo de efectos adversos (choice=Otro {efectos_adversos_tipo_otro_anti})"
label(data$efectos_adversos_tipo_otro_anti)="Especifique otro efecto adverso"
label(data$seguimiento_trat_oral_anti)="Sigue con tratamiento oral asociado"
label(data$anticgrp_tipo_anti)="Seleccionar anti-CGRP"
label(data$anticgrp_dosis_eren)="Seleccionar dosis"
label(data$anticgrp_dosis_fremanez)="Seleccionar dosis"
label(data$tratamiento_previo)="Tratamiento preventivo previo"
label(data$topiramato___1)="Topiramato (choice=Topiramato)"
label(data$topiramato_trat)="Continua con el tratamiento"
label(data$topiramato_motivo)="Motivo de retirada"
label(data$topiramato_motivo_otro)="Especifique"
label(data$propranolol___1)="Propranolol (choice=Propranolol)"
label(data$propranolol_trat)="Continua con el tratamiento"
label(data$propranolol_motivo)="Motivo de retirada"
label(data$propranolol_motivo_otro)="Especifique"
label(data$metoprolol___1)="Metoprolol (choice=Metoprolol)"
label(data$metoprolol_trat)="Continua con el tratamiento"
label(data$metoprolol_motivo)="Motivo de retirada"
label(data$metoprolol_motivo_otro)="Especifique"
label(data$nadolol___1)="Nadolol (choice=Nadolol)"
label(data$nadolol_trat)="Continua con el tratamiento"
label(data$nadolol_motivo)="Motivo de retirada"
label(data$nadolol_motivo_otro)="Especifique"
label(data$atenolol___1)="Atenolol (choice=Atenolol)"
label(data$atenolol_trat)="Continua con el tratamiento"
label(data$atenolol_motivo)="Motivo de retirada"
label(data$atenolol_motivo_otro)="Especifique"
label(data$timolol___1)="Timolol (choice=Timolol)"
label(data$timolol_trat)="Continua con el tratamiento"
label(data$timolol_motivo)="Motivo de retirada"
label(data$timolol_motivo_otro)="Especifique"
label(data$nevibolol___1)="Nevibolol (choice=Nevibolol)"
label(data$nevibolol_trat)="Continua con el tratamiento"
label(data$nevibolol_motivo)="Motivo de retirada"
label(data$nevibolol_motivo_otro)="Especifique"
label(data$amitriptilina___1)="Amitriptilina (choice=Amitriptilina)"
label(data$amitriptilina_trat)="Continua con el tratamiento"
label(data$amitriptilina_motivo)="Motivo de retirada"
label(data$amitriptilina_motivo_otro)="Especifique"
label(data$venlafaxina___1)="Venlafaxina (choice=Venlafaxina)"
label(data$venlafaxina_trat)="Continua con el tratamiento"
label(data$venlafaxina_motivo)="Motivo de retirada"
label(data$venlafaxina_motivo_otro)="Especifique"
label(data$zonisamida___1)="Zonisamida (choice=Zonisamida)"
label(data$zonisamida_trat)="Continua con el tratamiento"
label(data$zonisamida_motivo)="Motivo de retirada"
label(data$zonisamida_motivo_otro)="Especifique"
label(data$flunarizina___1)="Flunarizina (choice=Flunarizina)"
label(data$flunarizina_trat)="Continua con el tratamiento"
label(data$flunarizina_motivo)="Motivo de retirada"
label(data$flunarizina_motivo_otro)="Especifique"
label(data$lisinopril___1)="Lisinopril (choice=Lisinopril)"
label(data$lisinopril_trat)="Continua con el tratamiento"
label(data$lisinopril_motivo)="Motivo de retirada"
label(data$lisinopril_motivo_otro)="Especifique"
label(data$candesartan___1)="Candesartan (choice=Candesartan)"
label(data$candesartan_trat)="Continua con el tratamiento"
label(data$candesartan_motivo)="Motivo de retirada"
label(data$candesartan_motivo_otro)="Especifique"
label(data$valproato___1)="Valproato (choice=Valproato)"
label(data$valproato_trat)="Continua con el tratamiento"
label(data$valproato_motivo)="Motivo de retirada"
label(data$valproato_motivo_otro)="Especifique"
label(data$lamotrigina___1)="Lamotrigina (choice=Lamotrigina)"
label(data$lamotrigina_trat)="Continua con el tratamiento"
label(data$lamotrigina_motivo)="Motivo de retirada"
label(data$lamotrigina_motivo_otro)="Especifique"
label(data$botox___1)="Botox (choice=Botox)"
label(data$botox_trat)="Continua con el tratamiento"
label(data$botox_motivo)="Motivo de retirada"
label(data$botox_motivo_otro)="Especifique"
label(data$erenumab___1)="Erenumab (choice=Erenumab)"
label(data$erenumab_trat)="Continua con el tratamiento"
label(data$erenumab_motivo)="Motivo de retirada"
label(data$erenumab_motivo_otro)="Especifique"
label(data$galcanezumab___1)="Galcanezumab (choice=Galcanezumab)"
label(data$galcanezumab_trat)="Continua con el tratamiento"
label(data$galcanezumab_motivo)="Motivo de retirada"
label(data$galcanezumab_motivo_otro)="Especifique"
label(data$fremanezumab___1)="Fremanezumab (choice=Fremanezumab)"
label(data$fremanezumab_trat)="Continua con el tratamiento"
label(data$fremanezumab_motivo)="Motivo de retirada"
label(data$fremanezumab_motivo_otro)="Especifique"
label(data$eptinezumab___1)="Eptinezumab (choice=Eptinezumab)"
label(data$eptinezumab_trat)="Continua con el tratamiento"
label(data$eptinezumab_motivo)="Motivo de retirada"
label(data$eptinezumab_motivo_otro)="Especifique"
label(data$otro___1)="Otro (choice=Otro {otro_descripcion})"
label(data$otro_descripcion)="Otro descripción"
label(data$otro_trat)="Continua con el tratamiento"
label(data$otro_motivo)="Motivo de retirada"
label(data$otro_motivo_otro)="Especifique"
label(data$criterios_abuso_medicacion_anti)="Cumple criterios de abuso de medicación"
label(data$anticgrp_complete)="Complete?"
label(data$enero_timestamp)="Survey Timestamp"
label(data$cefalea_dia1_m1)="Cefalea"
label(data$intensidad_dia1_m1)="Intensidad"
label(data$horas_dia1_m1)="Horas"
label(data$analgesicos_dia1_m1)="Analgésicos"
label(data$aines_dia1_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia1_m1)="Número de comprimidos"
label(data$triptanes_dia1_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia1_m1)="Número de comprimidos"
label(data$simples_dia1_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia1_m1)="Número de comprimidos"
label(data$opioides_dia1_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia1_m1)="Número de comprimidos"
label(data$ergo_dia1_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia1_m1)="Número de comprimidos"
label(data$benzo_dia1_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia1_m1)="Número de comprimidos"
label(data$combin_dia1_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia1_m1)="Número de comprimidos"
label(data$cefalea_dia2_m1)="Cefalea"
label(data$intensidad_dia2_m1)="Intensidad"
label(data$horas_dia2_m1)="Horas"
label(data$analgesicos_dia2_m1)="Analgésicos"
label(data$aines_dia2_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia2_m1)="Número de comprimidos"
label(data$triptanes_dia2_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia2_m1)="Número de comprimidos"
label(data$simples_dia2_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia2_m1)="Número de comprimidos"
label(data$opioides_dia2_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia2_m1)="Número de comprimidos"
label(data$ergo_dia2_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia2_m1)="Número de comprimidos"
label(data$benzo_dia2_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia2_m1)="Número de comprimidos"
label(data$combin_dia2_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia2_m1)="Número de comprimidos"
label(data$cefalea_dia3_m1)="Cefalea"
label(data$intensidad_dia3_m1)="Intensidad"
label(data$horas_dia3_m1)="Horas"
label(data$analgesicos_dia3_m1)="Analgésicos"
label(data$aines_dia3_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia3_m1)="Número de comprimidos"
label(data$triptanes_dia3_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia3_m1)="Número de comprimidos"
label(data$simples_dia3_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia3_m1)="Número de comprimidos"
label(data$opioides_dia3_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia3_m1)="Número de comprimidos"
label(data$ergo_dia3_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia3_m1)="Número de comprimidos"
label(data$benzo_dia3_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia3_m1)="Número de comprimidos"
label(data$combin_dia3_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia3_m1)="Número de comprimidos"
label(data$cefalea_dia4_m1)="Cefalea"
label(data$intensidad_dia4_m1)="Intensidad"
label(data$horas_dia4_m1)="Horas"
label(data$analgesicos_dia4_m1)="Analgésicos"
label(data$aines_dia4_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia4_m1)="Número de comprimidos"
label(data$triptanes_dia4_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia4_m1)="Número de comprimidos"
label(data$simples_dia4_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia4_m1)="Número de comprimidos"
label(data$opioides_dia4_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia4_m1)="Número de comprimidos"
label(data$ergo_dia4_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia4_m1)="Número de comprimidos"
label(data$benzo_dia4_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia4_m1)="Número de comprimidos"
label(data$combin_dia4_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia4_m1)="Número de comprimidos"
label(data$cefalea_dia5_m1)="Cefalea"
label(data$intensidad_dia5_m1)="Intensidad"
label(data$horas_dia5_m1)="Horas"
label(data$analgesicos_dia5_m1)="Analgésicos"
label(data$aines_dia5_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia5_m1)="Número de comprimidos"
label(data$triptanes_dia5_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia5_m1)="Número de comprimidos"
label(data$simples_dia5_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia5_m1)="Número de comprimidos"
label(data$opioides_dia5_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia5_m1)="Número de comprimidos"
label(data$ergo_dia5_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia5_m1)="Número de comprimidos"
label(data$benzo_dia5_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia5_m1)="Número de comprimidos"
label(data$combin_dia5_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia5_m1)="Número de comprimidos"
label(data$cefalea_dia6_m1)="Cefalea"
label(data$intensidad_dia6_m1)="Intensidad"
label(data$horas_dia6_m1)="Horas"
label(data$analgesicos_dia6_m1)="Analgésicos"
label(data$aines_dia6_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia6_m1)="Número de comprimidos"
label(data$triptanes_dia6_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia6_m1)="Número de comprimidos"
label(data$simples_dia6_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia6_m1)="Número de comprimidos"
label(data$opioides_dia6_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia6_m1)="Número de comprimidos"
label(data$ergo_dia6_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia6_m1)="Número de comprimidos"
label(data$benzo_dia6_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia6_m1)="Número de comprimidos"
label(data$combin_dia6_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia6_m1)="Número de comprimidos"
label(data$cefalea_dia7_m1)="Cefalea"
label(data$intensidad_dia7_m1)="Intensidad"
label(data$horas_dia7_m1)="Horas"
label(data$analgesicos_dia7_m1)="Analgésicos"
label(data$aines_dia7_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia7_m1)="Número de comprimidos"
label(data$triptanes_dia7_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia7_m1)="Número de comprimidos"
label(data$simples_dia7_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia7_m1)="Número de comprimidos"
label(data$opioides_dia7_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia7_m1)="Número de comprimidos"
label(data$ergo_dia7_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia7_m1)="Número de comprimidos"
label(data$benzo_dia7_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia7_m1)="Número de comprimidos"
label(data$combin_dia7_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia7_m1)="Número de comprimidos"
label(data$cefalea_dia8_m1)="Cefalea"
label(data$intensidad_dia8_m1)="Intensidad"
label(data$horas_dia8_m1)="Horas"
label(data$analgesicos_dia8_m1)="Analgésicos"
label(data$aines_dia8_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia8_m1)="Número de comprimidos"
label(data$triptanes_dia8_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia8_m1)="Número de comprimidos"
label(data$simples_dia8_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia8_m1)="Número de comprimidos"
label(data$opioides_dia8_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia8_m1)="Número de comprimidos"
label(data$ergo_dia8_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia8_m1)="Número de comprimidos"
label(data$benzo_dia8_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia8_m1)="Número de comprimidos"
label(data$combin_dia8_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia8_m1)="Número de comprimidos"
label(data$cefalea_dia9_m1)="Cefalea"
label(data$intensidad_dia9_m1)="Intensidad"
label(data$horas_dia9_m1)="Horas"
label(data$analgesicos_dia9_m1)="Analgésicos"
label(data$aines_dia9_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia9_m1)="Número de comprimidos"
label(data$triptanes_dia9_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia9_m1)="Número de comprimidos"
label(data$simples_dia9_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia9_m1)="Número de comprimidos"
label(data$opioides_dia9_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia9_m1)="Número de comprimidos"
label(data$ergo_dia9_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia9_m1)="Número de comprimidos"
label(data$benzo_dia9_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia9_m1)="Número de comprimidos"
label(data$combin_dia9_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia9_m1)="Número de comprimidos"
label(data$cefalea_dia10_m1)="Cefalea"
label(data$intensidad_dia10_m1)="Intensidad"
label(data$horas_dia10_m1)="Horas"
label(data$analgesicos_dia10_m1)="Analgésicos"
label(data$aines_dia10_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia10_m1)="Número de comprimidos"
label(data$triptanes_dia10_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia10_m1)="Número de comprimidos"
label(data$simples_dia10_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia10_m1)="Número de comprimidos"
label(data$opioides_dia10_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia10_m1)="Número de comprimidos"
label(data$ergo_dia10_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia10_m1)="Número de comprimidos"
label(data$benzo_dia10_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia10_m1)="Número de comprimidos"
label(data$combin_dia10_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia10_m1)="Número de comprimidos"
label(data$cefalea_dia11_m1)="Cefalea"
label(data$intensidad_dia11_m1)="Intensidad"
label(data$horas_dia11_m1)="Horas"
label(data$analgesicos_dia11_m1)="Analgésicos"
label(data$aines_dia11_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia11_m1)="Número de comprimidos"
label(data$triptanes_dia11_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia11_m1)="Número de comprimidos"
label(data$simples_dia11_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia11_m1)="Número de comprimidos"
label(data$opioides_dia11_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia11_m1)="Número de comprimidos"
label(data$ergo_dia11_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia11_m1)="Número de comprimidos"
label(data$benzo_dia11_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia11_m1)="Número de comprimidos"
label(data$combin_dia11_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia11_m1)="Número de comprimidos"
label(data$cefalea_dia12_m1)="Cefalea"
label(data$intensidad_dia12_m1)="Intensidad"
label(data$horas_dia12_m1)="Horas"
label(data$analgesicos_dia12_m1)="Analgésicos"
label(data$aines_dia12_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia12_m1)="Número de comprimidos"
label(data$triptanes_dia12_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia12_m1)="Número de comprimidos"
label(data$simples_dia12_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia12_m1)="Número de comprimidos"
label(data$opioides_dia12_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia12_m1)="Número de comprimidos"
label(data$ergo_dia12_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia12_m1)="Número de comprimidos"
label(data$benzo_dia12_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia12_m1)="Número de comprimidos"
label(data$combin_dia12_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia12_m1)="Número de comprimidos"
label(data$cefalea_dia13_m1)="Cefalea"
label(data$intensidad_dia13_m1)="Intensidad"
label(data$horas_dia13_m1)="Horas"
label(data$analgesicos_dia13_m1)="Analgésicos"
label(data$aines_dia13_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia13_m1)="Número de comprimidos"
label(data$triptanes_dia13_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia13_m1)="Número de comprimidos"
label(data$simples_dia13_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia13_m1)="Número de comprimidos"
label(data$opioides_dia13_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia13_m1)="Número de comprimidos"
label(data$ergo_dia13_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia13_m1)="Número de comprimidos"
label(data$benzo_dia13_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia13_m1)="Número de comprimidos"
label(data$combin_dia13_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia13_m1)="Número de comprimidos"
label(data$cefalea_dia14_m1)="Cefalea"
label(data$intensidad_dia14_m1)="Intensidad"
label(data$horas_dia14_m1)="Horas"
label(data$analgesicos_dia14_m1)="Analgésicos"
label(data$aines_dia14_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia14_m1)="Número de comprimidos"
label(data$triptanes_dia14_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia14_m1)="Número de comprimidos"
label(data$simples_dia14_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia14_m1)="Número de comprimidos"
label(data$opioides_dia14_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia14_m1)="Número de comprimidos"
label(data$ergo_dia14_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia14_m1)="Número de comprimidos"
label(data$benzo_dia14_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia14_m1)="Número de comprimidos"
label(data$combin_dia14_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia14_m1)="Número de comprimidos"
label(data$cefalea_dia15_m1)="Cefalea"
label(data$intensidad_dia15_m1)="Intensidad"
label(data$horas_dia15_m1)="Horas"
label(data$aines_dia15_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$analgesicos_dia15_m1)="Analgésicos"
label(data$aines_compri_dia15_m1)="Número de comprimidos"
label(data$triptanes_dia15_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia15_m1)="Número de comprimidos"
label(data$simples_dia15_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia15_m1)="Número de comprimidos"
label(data$opioides_dia15_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia15_m1)="Número de comprimidos"
label(data$ergo_dia15_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia15_m1)="Número de comprimidos"
label(data$benzo_dia15_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia15_m1)="Número de comprimidos"
label(data$combin_dia15_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia15_m1)="Número de comprimidos"
label(data$cefalea_dia16_m1)="Cefalea"
label(data$intensidad_dia16_m1)="Intensidad"
label(data$horas_dia16_m1)="Horas"
label(data$analgesicos_dia16_m1)="Analgésicos"
label(data$aines_dia16_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia16_m1)="Número de comprimidos"
label(data$triptanes_dia16_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia16_m1)="Número de comprimidos"
label(data$simples_dia16_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia16_m1)="Número de comprimidos"
label(data$opioides_dia16_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia16_m1)="Número de comprimidos"
label(data$ergo_dia16_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia16_m1)="Número de comprimidos"
label(data$benzo_dia16_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia16_m1)="Número de comprimidos"
label(data$combin_dia16_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia16_m1)="Número de comprimidos"
label(data$cefalea_dia17_m1)="Cefalea"
label(data$intensidad_dia17_m1)="Intensidad"
label(data$horas_dia17_m1)="Horas"
label(data$analgesicos_dia17_m1)="Analgésicos"
label(data$aines_dia17_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia17_m1)="Número de comprimidos"
label(data$triptanes_dia17_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia17_m1)="Número de comprimidos"
label(data$simples_dia17_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia17_m1)="Número de comprimidos"
label(data$opioides_dia17_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia17_m1)="Número de comprimidos"
label(data$ergo_dia17_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia17_m1)="Número de comprimidos"
label(data$benzo_dia17_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia17_m1)="Número de comprimidos"
label(data$combin_dia17_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia17_m1)="Número de comprimidos"
label(data$cefalea_dia18_m1)="Cefalea"
label(data$intensidad_dia18_m1)="Intensidad"
label(data$horas_dia18_m1)="Horas"
label(data$analgesicos_dia18_m1)="Analgésicos"
label(data$aines_dia18_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia18_m1)="Número de comprimidos"
label(data$triptanes_dia18_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia18_m1)="Número de comprimidos"
label(data$simples_dia18_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia18_m1)="Número de comprimidos"
label(data$opioides_dia18_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia18_m1)="Número de comprimidos"
label(data$ergo_dia18_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia18_m1)="Número de comprimidos"
label(data$benzo_dia18_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia18_m1)="Número de comprimidos"
label(data$combin_dia18_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia18_m1)="Número de comprimidos"
label(data$cefalea_dia19_m1)="Cefalea"
label(data$intensidad_dia19_m1)="Intensidad"
label(data$horas_dia19_m1)="Horas"
label(data$analgesicos_dia19_m1)="Analgésicos"
label(data$aines_dia19_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia19_m1)="Número de comprimidos"
label(data$triptanes_dia19_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia19_m1)="Número de comprimidos"
label(data$simples_dia19_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia19_m1)="Número de comprimidos"
label(data$opioides_dia19_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia19_m1)="Número de comprimidos"
label(data$ergo_dia19_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia19_m1)="Número de comprimidos"
label(data$benzo_dia19_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia19_m1)="Número de comprimidos"
label(data$combin_dia19_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia19_m1)="Número de comprimidos"
label(data$cefalea_dia20_m1)="Cefalea"
label(data$intensidad_dia20_m1)="Intensidad"
label(data$horas_dia20_m1)="Horas"
label(data$analgesicos_dia20_m1)="Analgésicos"
label(data$aines_dia20_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia20_m1)="Número de comprimidos"
label(data$triptanes_dia20_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia20_m1)="Número de comprimidos"
label(data$simples_dia20_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia20_m1)="Número de comprimidos"
label(data$opioides_dia20_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia20_m1)="Número de comprimidos"
label(data$ergo_dia20_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia20_m1)="Número de comprimidos"
label(data$benzo_dia20_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia20_m1)="Número de comprimidos"
label(data$combin_dia20_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia20_m1)="Número de comprimidos"
label(data$cefalea_dia21_m1)="Cefalea"
label(data$intensidad_dia21_m1)="Intensidad"
label(data$horas_dia21_m1)="Horas"
label(data$analgesicos_dia21_m1)="Analgésicos"
label(data$aines_dia21_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia21_m1)="Número de comprimidos"
label(data$triptanes_dia21_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia21_m1)="Número de comprimidos"
label(data$simples_dia21_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia21_m1)="Número de comprimidos"
label(data$opioides_dia21_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia21_m1)="Número de comprimidos"
label(data$ergo_dia21_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia21_m1)="Número de comprimidos"
label(data$benzo_dia21_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia21_m1)="Número de comprimidos"
label(data$combin_dia21_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia21_m1)="Número de comprimidos"
label(data$cefalea_dia22_m1)="Cefalea"
label(data$intensidad_dia22_m1)="Intensidad"
label(data$horas_dia22_m1)="Horas"
label(data$analgesicos_dia22_m1)="Analgésicos"
label(data$aines_dia22_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia22_m1)="Número de comprimidos"
label(data$triptanes_dia22_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia22_m1)="Número de comprimidos"
label(data$simples_dia22_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia22_m1)="Número de comprimidos"
label(data$opioides_dia22_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia22_m1)="Número de comprimidos"
label(data$ergo_dia22_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia22_m1)="Número de comprimidos"
label(data$benzo_dia22_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia22_m1)="Número de comprimidos"
label(data$combin_dia22_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia22_m1)="Número de comprimidos"
label(data$cefalea_dia23_m1)="Cefalea"
label(data$intensidad_dia23_m1)="Intensidad"
label(data$horas_dia23_m1)="Horas"
label(data$analgesicos_dia23_m1)="Analgésicos"
label(data$aines_dia23_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia23_m1)="Número de comprimidos"
label(data$triptanes_dia23_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia23_m1)="Número de comprimidos"
label(data$simples_dia23_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia23_m1)="Número de comprimidos"
label(data$opioides_dia23_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia23_m1)="Número de comprimidos"
label(data$ergo_dia23_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia23_m1)="Número de comprimidos"
label(data$benzo_dia23_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia23_m1)="Número de comprimidos"
label(data$combin_dia23_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia23_m1)="Número de comprimidos"
label(data$cefalea_dia24_m1)="Cefalea"
label(data$intensidad_dia24_m1)="Intensidad"
label(data$horas_dia24_m1)="Horas"
label(data$analgesicos_dia24_m1)="Analgésicos"
label(data$aines_dia24_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia24_m1)="Número de comprimidos"
label(data$triptanes_dia24_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia24_m1)="Número de comprimidos"
label(data$simples_dia24_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia24_m1)="Número de comprimidos"
label(data$opioides_dia24_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia24_m1)="Número de comprimidos"
label(data$ergo_dia24_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia24_m1)="Número de comprimidos"
label(data$benzo_dia24_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia24_m1)="Número de comprimidos"
label(data$combin_dia24_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia24_m1)="Número de comprimidos"
label(data$cefalea_dia25_m1)="Cefalea"
label(data$intensidad_dia25_m1)="Intensidad"
label(data$horas_dia25_m1)="Horas"
label(data$analgesicos_dia25_m1)="Analgésicos"
label(data$aines_dia25_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia25_m1)="Número de comprimidos"
label(data$triptanes_dia25_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia25_m1)="Número de comprimidos"
label(data$simples_dia25_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia25_m1)="Número de comprimidos"
label(data$opioides_dia25_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia25_m1)="Número de comprimidos"
label(data$ergo_dia25_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia25_m1)="Número de comprimidos"
label(data$benzo_dia25_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia25_m1)="Número de comprimidos"
label(data$combin_dia25_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia25_m1)="Número de comprimidos"
label(data$cefalea_dia26_m1)="Cefalea"
label(data$intensidad_dia26_m1)="Intensidad"
label(data$horas_dia26_m1)="Horas"
label(data$analgesicos_dia26_m1)="Analgésicos"
label(data$aines_dia26_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia26_m1)="Número de comprimidos"
label(data$triptanes_dia26_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia26_m1)="Número de comprimidos"
label(data$simples_dia26_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia26_m1)="Número de comprimidos"
label(data$opioides_dia26_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia26_m1)="Número de comprimidos"
label(data$ergo_dia26_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia26_m1)="Número de comprimidos"
label(data$benzo_dia26_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia26_m1)="Número de comprimidos"
label(data$combin_dia26_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia26_m1)="Número de comprimidos"
label(data$cefalea_dia27_m1)="Cefalea"
label(data$intensidad_dia27_m1)="Intensidad"
label(data$horas_dia27_m1)="Horas"
label(data$analgesicos_dia27_m1)="Analgésicos"
label(data$aines_dia27_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia27_m1)="Número de comprimidos"
label(data$triptanes_dia27_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia27_m1)="Número de comprimidos"
label(data$simples_dia27_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia27_m1)="Número de comprimidos"
label(data$opioides_dia27_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia27_m1)="Número de comprimidos"
label(data$ergo_dia27_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia27_m1)="Número de comprimidos"
label(data$benzo_dia27_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia27_m1)="Número de comprimidos"
label(data$combin_dia27_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia27_m1)="Número de comprimidos"
label(data$cefalea_dia28_m1)="Cefalea"
label(data$intensidad_dia28_m1)="Intensidad"
label(data$horas_dia28_m1)="Horas"
label(data$analgesicos_dia28_m1)="Analgésicos"
label(data$aines_dia28_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia28_m1)="Número de comprimidos"
label(data$triptanes_dia28_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia28_m1)="Número de comprimidos"
label(data$simples_dia28_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia28_m1)="Número de comprimidos"
label(data$opioides_dia28_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia28_m1)="Número de comprimidos"
label(data$ergo_dia28_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia28_m1)="Número de comprimidos"
label(data$benzo_dia28_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia28_m1)="Número de comprimidos"
label(data$combin_dia28_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia28_m1)="Número de comprimidos"
label(data$cefalea_dia29_m1)="Cefalea"
label(data$intensidad_dia29_m1)="Intensidad"
label(data$horas_dia29_m1)="Horas"
label(data$analgesicos_dia29_m1)="Analgésicos"
label(data$aines_dia29_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia29_m1)="Número de comprimidos"
label(data$triptanes_dia29_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia29_m1)="Número de comprimidos"
label(data$simples_dia29_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia29_m1)="Número de comprimidos"
label(data$opioides_dia29_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia29_m1)="Número de comprimidos"
label(data$ergo_dia29_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia29_m1)="Número de comprimidos"
label(data$benzo_dia29_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia29_m1)="Número de comprimidos"
label(data$combin_dia29_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia29_m1)="Número de comprimidos"
label(data$cefalea_dia30_m1)="Cefalea"
label(data$intensidad_dia30_m1)="Intensidad"
label(data$horas_dia30_m1)="Horas"
label(data$analgesicos_dia30_m1)="Analgésicos"
label(data$aines_dia30_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia30_m1)="Número de comprimidos"
label(data$triptanes_dia30_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia30_m1)="Número de comprimidos"
label(data$simples_dia30_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia30_m1)="Número de comprimidos"
label(data$opioides_dia30_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia30_m1)="Número de comprimidos"
label(data$ergo_dia30_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia30_m1)="Número de comprimidos"
label(data$benzo_dia30_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia30_m1)="Número de comprimidos"
label(data$combin_dia30_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia30_m1)="Número de comprimidos"
label(data$cefalea_dia31_m1)="Cefalea"
label(data$intensidad_dia31_m1)="Intensidad"
label(data$horas_dia31_m1)="Horas"
label(data$analgesicos_dia31_m1)="Analgésicos"
label(data$aines_dia31_m1___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia31_m1)="Número de comprimidos"
label(data$triptanes_dia31_m1___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia31_m1)="Número de comprimidos"
label(data$simples_dia31_m1___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia31_m1)="Número de comprimidos"
label(data$opioides_dia31_m1___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia31_m1)="Número de comprimidos"
label(data$ergo_dia31_m1___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia31_m1)="Número de comprimidos"
label(data$benzo_dia31_m1___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia31_m1)="Número de comprimidos"
label(data$combin_dia31_m1___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia31_m1)="Número de comprimidos"
label(data$enero_complete)="Complete?"
label(data$febrero_timestamp)="Survey Timestamp"
label(data$cefalea_dia1_m2)="Cefalea"
label(data$intensidad_dia1_m2)="Intensidad"
label(data$horas_dia1_m2)="Horas"
label(data$analgesicos_dia1_m2)="Analgésicos"
label(data$aines_dia1_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia1_m2)="Número de comprimidos"
label(data$triptanes_dia1_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia1_m2)="Número de comprimidos"
label(data$simples_dia1_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia1_m2)="Número de comprimidos"
label(data$opioides_dia1_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia1_m2)="Número de comprimidos"
label(data$ergo_dia1_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia1_m2)="Número de comprimidos"
label(data$benzo_dia1_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia1_m2)="Número de comprimidos"
label(data$combin_dia1_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia1_m2)="Número de comprimidos"
label(data$cefalea_dia2_m2)="Cefalea"
label(data$intensidad_dia2_m2)="Intensidad"
label(data$horas_dia2_m2)="Horas"
label(data$analgesicos_dia2_m2)="Analgésicos"
label(data$aines_dia2_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia2_m2)="Número de comprimidos"
label(data$triptanes_dia2_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia2_m2)="Número de comprimidos"
label(data$simples_dia2_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia2_m2)="Número de comprimidos"
label(data$opioides_dia2_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia2_m2)="Número de comprimidos"
label(data$ergo_dia2_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia2_m2)="Número de comprimidos"
label(data$benzo_dia2_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia2_m2)="Número de comprimidos"
label(data$combin_dia2_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia2_m2)="Número de comprimidos"
label(data$cefalea_dia3_m2)="Cefalea"
label(data$intensidad_dia3_m2)="Intensidad"
label(data$horas_dia3_m2)="Horas"
label(data$analgesicos_dia3_m2)="Analgésicos"
label(data$aines_dia3_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia3_m2)="Número de comprimidos"
label(data$triptanes_dia3_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia3_m2)="Número de comprimidos"
label(data$simples_dia3_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia3_m2)="Número de comprimidos"
label(data$opioides_dia3_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia3_m2)="Número de comprimidos"
label(data$ergo_dia3_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia3_m2)="Número de comprimidos"
label(data$benzo_dia3_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia3_m2)="Número de comprimidos"
label(data$combin_dia3_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia3_m2)="Número de comprimidos"
label(data$cefalea_dia4_m2)="Cefalea"
label(data$intensidad_dia4_m2)="Intensidad"
label(data$horas_dia4_m2)="Horas"
label(data$analgesicos_dia4_m2)="Analgésicos"
label(data$aines_dia4_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia4_m2)="Número de comprimidos"
label(data$triptanes_dia4_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia4_m2)="Número de comprimidos"
label(data$simples_dia4_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia4_m2)="Número de comprimidos"
label(data$opioides_dia4_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia4_m2)="Número de comprimidos"
label(data$ergo_dia4_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia4_m2)="Número de comprimidos"
label(data$benzo_dia4_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia4_m2)="Número de comprimidos"
label(data$combin_dia4_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia4_m2)="Número de comprimidos"
label(data$cefalea_dia5_m2)="Cefalea"
label(data$intensidad_dia5_m2)="Intensidad"
label(data$horas_dia5_m2)="Horas"
label(data$analgesicos_dia5_m2)="Analgésicos"
label(data$aines_dia5_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia5_m2)="Número de comprimidos"
label(data$triptanes_dia5_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia5_m2)="Número de comprimidos"
label(data$simples_dia5_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia5_m2)="Número de comprimidos"
label(data$opioides_dia5_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia5_m2)="Número de comprimidos"
label(data$ergo_dia5_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia5_m2)="Número de comprimidos"
label(data$benzo_dia5_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia5_m2)="Número de comprimidos"
label(data$combin_dia5_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia5_m2)="Número de comprimidos"
label(data$cefalea_dia6_m2)="Cefalea"
label(data$intensidad_dia6_m2)="Intensidad"
label(data$horas_dia6_m2)="Horas"
label(data$analgesicos_dia6_m2)="Analgésicos"
label(data$aines_dia6_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia6_m2)="Número de comprimidos"
label(data$triptanes_dia6_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia6_m2)="Número de comprimidos"
label(data$simples_dia6_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia6_m2)="Número de comprimidos"
label(data$opioides_dia6_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia6_m2)="Número de comprimidos"
label(data$ergo_dia6_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia6_m2)="Número de comprimidos"
label(data$benzo_dia6_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia6_m2)="Número de comprimidos"
label(data$combin_dia6_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia6_m2)="Número de comprimidos"
label(data$cefalea_dia7_m2)="Cefalea"
label(data$intensidad_dia7_m2)="Intensidad"
label(data$horas_dia7_m2)="Horas"
label(data$analgesicos_dia7_m2)="Analgésicos"
label(data$aines_dia7_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia7_m2)="Número de comprimidos"
label(data$triptanes_dia7_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia7_m2)="Número de comprimidos"
label(data$simples_dia7_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia7_m2)="Número de comprimidos"
label(data$opioides_dia7_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia7_m2)="Número de comprimidos"
label(data$ergo_dia7_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia7_m2)="Número de comprimidos"
label(data$benzo_dia7_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia7_m2)="Número de comprimidos"
label(data$combin_dia7_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia7_m2)="Número de comprimidos"
label(data$cefalea_dia8_m2)="Cefalea"
label(data$intensidad_dia8_m2)="Intensidad"
label(data$horas_dia8_m2)="Horas"
label(data$analgesicos_dia8_m2)="Analgésicos"
label(data$aines_dia8_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia8_m2)="Número de comprimidos"
label(data$triptanes_dia8_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia8_m2)="Número de comprimidos"
label(data$simples_dia8_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia8_m2)="Número de comprimidos"
label(data$opioides_dia8_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia8_m2)="Número de comprimidos"
label(data$ergo_dia8_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia8_m2)="Número de comprimidos"
label(data$benzo_dia8_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia8_m2)="Número de comprimidos"
label(data$combin_dia8_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia8_m2)="Número de comprimidos"
label(data$cefalea_dia9_m2)="Cefalea"
label(data$intensidad_dia9_m2)="Intensidad"
label(data$horas_dia9_m2)="Horas"
label(data$analgesicos_dia9_m2)="Analgésicos"
label(data$aines_dia9_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia9_m2)="Número de comprimidos"
label(data$triptanes_dia9_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia9_m2)="Número de comprimidos"
label(data$simples_dia9_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia9_m2)="Número de comprimidos"
label(data$opioides_dia9_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia9_m2)="Número de comprimidos"
label(data$ergo_dia9_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia9_m2)="Número de comprimidos"
label(data$benzo_dia9_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia9_m2)="Número de comprimidos"
label(data$combin_dia9_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia9_m2)="Número de comprimidos"
label(data$cefalea_dia10_m2)="Cefalea"
label(data$intensidad_dia10_m2)="Intensidad"
label(data$horas_dia10_m2)="Horas"
label(data$analgesicos_dia10_m2)="Analgésicos"
label(data$aines_dia10_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia10_m2)="Número de comprimidos"
label(data$triptanes_dia10_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia10_m2)="Número de comprimidos"
label(data$simples_dia10_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia10_m2)="Número de comprimidos"
label(data$opioides_dia10_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia10_m2)="Número de comprimidos"
label(data$ergo_dia10_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia10_m2)="Número de comprimidos"
label(data$benzo_dia10_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia10_m2)="Número de comprimidos"
label(data$combin_dia10_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia10_m2)="Número de comprimidos"
label(data$cefalea_dia11_m2)="Cefalea"
label(data$intensidad_dia11_m2)="Intensidad"
label(data$horas_dia11_m2)="Horas"
label(data$analgesicos_dia11_m2)="Analgésicos"
label(data$aines_dia11_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia11_m2)="Número de comprimidos"
label(data$triptanes_dia11_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia11_m2)="Número de comprimidos"
label(data$simples_dia11_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia11_m2)="Número de comprimidos"
label(data$opioides_dia11_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia11_m2)="Número de comprimidos"
label(data$ergo_dia11_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia11_m2)="Número de comprimidos"
label(data$benzo_dia11_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia11_m2)="Número de comprimidos"
label(data$combin_dia11_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia11_m2)="Número de comprimidos"
label(data$cefalea_dia12_m2)="Cefalea"
label(data$intensidad_dia12_m2)="Intensidad"
label(data$horas_dia12_m2)="Horas"
label(data$analgesicos_dia12_m2)="Analgésicos"
label(data$aines_dia12_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia12_m2)="Número de comprimidos"
label(data$triptanes_dia12_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia12_m2)="Número de comprimidos"
label(data$simples_dia12_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia12_m2)="Número de comprimidos"
label(data$opioides_dia12_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia12_m2)="Número de comprimidos"
label(data$ergo_dia12_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia12_m2)="Número de comprimidos"
label(data$benzo_dia12_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia12_m2)="Número de comprimidos"
label(data$combin_dia12_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia12_m2)="Número de comprimidos"
label(data$cefalea_dia13_m2)="Cefalea"
label(data$intensidad_dia13_m2)="Intensidad"
label(data$horas_dia13_m2)="Horas"
label(data$analgesicos_dia13_m2)="Analgésicos"
label(data$aines_dia13_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia13_m2)="Número de comprimidos"
label(data$triptanes_dia13_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia13_m2)="Número de comprimidos"
label(data$simples_dia13_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia13_m2)="Número de comprimidos"
label(data$opioides_dia13_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia13_m2)="Número de comprimidos"
label(data$ergo_dia13_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia13_m2)="Número de comprimidos"
label(data$benzo_dia13_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia13_m2)="Número de comprimidos"
label(data$combin_dia13_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia13_m2)="Número de comprimidos"
label(data$cefalea_dia14_m2)="Cefalea"
label(data$intensidad_dia14_m2)="Intensidad"
label(data$horas_dia14_m2)="Horas"
label(data$analgesicos_dia14_m2)="Analgésicos"
label(data$aines_dia14_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia14_m2)="Número de comprimidos"
label(data$triptanes_dia14_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia14_m2)="Número de comprimidos"
label(data$simples_dia14_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia14_m2)="Número de comprimidos"
label(data$opioides_dia14_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia14_m2)="Número de comprimidos"
label(data$ergo_dia14_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia14_m2)="Número de comprimidos"
label(data$benzo_dia14_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia14_m2)="Número de comprimidos"
label(data$combin_dia14_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia14_m2)="Número de comprimidos"
label(data$cefalea_dia15_m2)="Cefalea"
label(data$intensidad_dia15_m2)="Intensidad"
label(data$horas_dia15_m2)="Horas"
label(data$aines_dia15_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$analgesicos_dia15_m2)="Analgésicos"
label(data$aines_compri_dia15_m2)="Número de comprimidos"
label(data$triptanes_dia15_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia15_m2)="Número de comprimidos"
label(data$simples_dia15_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia15_m2)="Número de comprimidos"
label(data$opioides_dia15_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia15_m2)="Número de comprimidos"
label(data$ergo_dia15_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia15_m2)="Número de comprimidos"
label(data$benzo_dia15_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia15_m2)="Número de comprimidos"
label(data$combin_dia15_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia15_m2)="Número de comprimidos"
label(data$cefalea_dia16_m2)="Cefalea"
label(data$intensidad_dia16_m2)="Intensidad"
label(data$horas_dia16_m2)="Horas"
label(data$analgesicos_dia16_m2)="Analgésicos"
label(data$aines_dia16_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia16_m2)="Número de comprimidos"
label(data$triptanes_dia16_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia16_m2)="Número de comprimidos"
label(data$simples_dia16_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia16_m2)="Número de comprimidos"
label(data$opioides_dia16_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia16_m2)="Número de comprimidos"
label(data$ergo_dia16_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia16_m2)="Número de comprimidos"
label(data$benzo_dia16_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia16_m2)="Número de comprimidos"
label(data$combin_dia16_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia16_m2)="Número de comprimidos"
label(data$cefalea_dia17_m2)="Cefalea"
label(data$intensidad_dia17_m2)="Intensidad"
label(data$horas_dia17_m2)="Horas"
label(data$analgesicos_dia17_m2)="Analgésicos"
label(data$aines_dia17_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia17_m2)="Número de comprimidos"
label(data$triptanes_dia17_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia17_m2)="Número de comprimidos"
label(data$simples_dia17_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia17_m2)="Número de comprimidos"
label(data$opioides_dia17_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia17_m2)="Número de comprimidos"
label(data$ergo_dia17_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia17_m2)="Número de comprimidos"
label(data$benzo_dia17_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia17_m2)="Número de comprimidos"
label(data$combin_dia17_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia17_m2)="Número de comprimidos"
label(data$cefalea_dia18_m2)="Cefalea"
label(data$intensidad_dia18_m2)="Intensidad"
label(data$horas_dia18_m2)="Horas"
label(data$analgesicos_dia18_m2)="Analgésicos"
label(data$aines_dia18_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia18_m2)="Número de comprimidos"
label(data$triptanes_dia18_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia18_m2)="Número de comprimidos"
label(data$simples_dia18_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia18_m2)="Número de comprimidos"
label(data$opioides_dia18_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia18_m2)="Número de comprimidos"
label(data$ergo_dia18_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia18_m2)="Número de comprimidos"
label(data$benzo_dia18_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia18_m2)="Número de comprimidos"
label(data$combin_dia18_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia18_m2)="Número de comprimidos"
label(data$cefalea_dia19_m2)="Cefalea"
label(data$intensidad_dia19_m2)="Intensidad"
label(data$horas_dia19_m2)="Horas"
label(data$analgesicos_dia19_m2)="Analgésicos"
label(data$aines_dia19_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia19_m2)="Número de comprimidos"
label(data$triptanes_dia19_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia19_m2)="Número de comprimidos"
label(data$simples_dia19_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia19_m2)="Número de comprimidos"
label(data$opioides_dia19_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia19_m2)="Número de comprimidos"
label(data$ergo_dia19_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia19_m2)="Número de comprimidos"
label(data$benzo_dia19_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia19_m2)="Número de comprimidos"
label(data$combin_dia19_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia19_m2)="Número de comprimidos"
label(data$cefalea_dia20_m2)="Cefalea"
label(data$intensidad_dia20_m2)="Intensidad"
label(data$horas_dia20_m2)="Horas"
label(data$analgesicos_dia20_m2)="Analgésicos"
label(data$aines_dia20_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia20_m2)="Número de comprimidos"
label(data$triptanes_dia20_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia20_m2)="Número de comprimidos"
label(data$simples_dia20_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia20_m2)="Número de comprimidos"
label(data$opioides_dia20_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia20_m2)="Número de comprimidos"
label(data$ergo_dia20_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia20_m2)="Número de comprimidos"
label(data$benzo_dia20_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia20_m2)="Número de comprimidos"
label(data$combin_dia20_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia20_m2)="Número de comprimidos"
label(data$cefalea_dia21_m2)="Cefalea"
label(data$intensidad_dia21_m2)="Intensidad"
label(data$horas_dia21_m2)="Horas"
label(data$analgesicos_dia21_m2)="Analgésicos"
label(data$aines_dia21_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia21_m2)="Número de comprimidos"
label(data$triptanes_dia21_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia21_m2)="Número de comprimidos"
label(data$simples_dia21_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia21_m2)="Número de comprimidos"
label(data$opioides_dia21_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia21_m2)="Número de comprimidos"
label(data$ergo_dia21_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia21_m2)="Número de comprimidos"
label(data$benzo_dia21_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia21_m2)="Número de comprimidos"
label(data$combin_dia21_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia21_m2)="Número de comprimidos"
label(data$cefalea_dia22_m2)="Cefalea"
label(data$intensidad_dia22_m2)="Intensidad"
label(data$horas_dia22_m2)="Horas"
label(data$analgesicos_dia22_m2)="Analgésicos"
label(data$aines_dia22_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia22_m2)="Número de comprimidos"
label(data$triptanes_dia22_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia22_m2)="Número de comprimidos"
label(data$simples_dia22_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia22_m2)="Número de comprimidos"
label(data$opioides_dia22_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia22_m2)="Número de comprimidos"
label(data$ergo_dia22_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia22_m2)="Número de comprimidos"
label(data$benzo_dia22_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia22_m2)="Número de comprimidos"
label(data$combin_dia22_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia22_m2)="Número de comprimidos"
label(data$cefalea_dia23_m2)="Cefalea"
label(data$intensidad_dia23_m2)="Intensidad"
label(data$horas_dia23_m2)="Horas"
label(data$analgesicos_dia23_m2)="Analgésicos"
label(data$aines_dia23_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia23_m2)="Número de comprimidos"
label(data$triptanes_dia23_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia23_m2)="Número de comprimidos"
label(data$simples_dia23_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia23_m2)="Número de comprimidos"
label(data$opioides_dia23_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia23_m2)="Número de comprimidos"
label(data$ergo_dia23_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia23_m2)="Número de comprimidos"
label(data$benzo_dia23_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia23_m2)="Número de comprimidos"
label(data$combin_dia23_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia23_m2)="Número de comprimidos"
label(data$cefalea_dia24_m2)="Cefalea"
label(data$intensidad_dia24_m2)="Intensidad"
label(data$horas_dia24_m2)="Horas"
label(data$analgesicos_dia24_m2)="Analgésicos"
label(data$aines_dia24_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia24_m2)="Número de comprimidos"
label(data$triptanes_dia24_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia24_m2)="Número de comprimidos"
label(data$simples_dia24_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia24_m2)="Número de comprimidos"
label(data$opioides_dia24_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia24_m2)="Número de comprimidos"
label(data$ergo_dia24_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia24_m2)="Número de comprimidos"
label(data$benzo_dia24_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia24_m2)="Número de comprimidos"
label(data$combin_dia24_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia24_m2)="Número de comprimidos"
label(data$cefalea_dia25_m2)="Cefalea"
label(data$intensidad_dia25_m2)="Intensidad"
label(data$horas_dia25_m2)="Horas"
label(data$analgesicos_dia25_m2)="Analgésicos"
label(data$aines_dia25_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia25_m2)="Número de comprimidos"
label(data$triptanes_dia25_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia25_m2)="Número de comprimidos"
label(data$simples_dia25_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia25_m2)="Número de comprimidos"
label(data$opioides_dia25_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia25_m2)="Número de comprimidos"
label(data$ergo_dia25_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia25_m2)="Número de comprimidos"
label(data$benzo_dia25_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia25_m2)="Número de comprimidos"
label(data$combin_dia25_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia25_m2)="Número de comprimidos"
label(data$cefalea_dia26_m2)="Cefalea"
label(data$intensidad_dia26_m2)="Intensidad"
label(data$horas_dia26_m2)="Horas"
label(data$analgesicos_dia26_m2)="Analgésicos"
label(data$aines_dia26_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia26_m2)="Número de comprimidos"
label(data$triptanes_dia26_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia26_m2)="Número de comprimidos"
label(data$simples_dia26_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia26_m2)="Número de comprimidos"
label(data$opioides_dia26_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia26_m2)="Número de comprimidos"
label(data$ergo_dia26_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia26_m2)="Número de comprimidos"
label(data$benzo_dia26_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia26_m2)="Número de comprimidos"
label(data$combin_dia26_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia26_m2)="Número de comprimidos"
label(data$cefalea_dia27_m2)="Cefalea"
label(data$intensidad_dia27_m2)="Intensidad"
label(data$horas_dia27_m2)="Horas"
label(data$analgesicos_dia27_m2)="Analgésicos"
label(data$aines_dia27_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia27_m2)="Número de comprimidos"
label(data$triptanes_dia27_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia27_m2)="Número de comprimidos"
label(data$simples_dia27_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia27_m2)="Número de comprimidos"
label(data$opioides_dia27_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia27_m2)="Número de comprimidos"
label(data$ergo_dia27_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia27_m2)="Número de comprimidos"
label(data$benzo_dia27_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia27_m2)="Número de comprimidos"
label(data$combin_dia27_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia27_m2)="Número de comprimidos"
label(data$cefalea_dia28_m2)="Cefalea"
label(data$intensidad_dia28_m2)="Intensidad"
label(data$horas_dia28_m2)="Horas"
label(data$analgesicos_dia28_m2)="Analgésicos"
label(data$aines_dia28_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia28_m2)="Número de comprimidos"
label(data$triptanes_dia28_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia28_m2)="Número de comprimidos"
label(data$simples_dia28_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia28_m2)="Número de comprimidos"
label(data$opioides_dia28_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia28_m2)="Número de comprimidos"
label(data$ergo_dia28_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia28_m2)="Número de comprimidos"
label(data$benzo_dia28_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia28_m2)="Número de comprimidos"
label(data$combin_dia28_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia28_m2)="Número de comprimidos"
label(data$cefalea_dia29_m2)="Cefalea"
label(data$intensidad_dia29_m2)="Intensidad"
label(data$horas_dia29_m2)="Horas"
label(data$analgesicos_dia29_m2)="Analgésicos"
label(data$aines_dia29_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia29_m2)="Número de comprimidos"
label(data$triptanes_dia29_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia29_m2)="Número de comprimidos"
label(data$simples_dia29_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia29_m2)="Número de comprimidos"
label(data$opioides_dia29_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia29_m2)="Número de comprimidos"
label(data$ergo_dia29_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia29_m2)="Número de comprimidos"
label(data$benzo_dia29_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia29_m2)="Número de comprimidos"
label(data$combin_dia29_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia29_m2)="Número de comprimidos"
label(data$cefalea_dia30_m2)="Cefalea"
label(data$intensidad_dia30_m2)="Intensidad"
label(data$horas_dia30_m2)="Horas"
label(data$analgesicos_dia30_m2)="Analgésicos"
label(data$aines_dia30_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia30_m2)="Número de comprimidos"
label(data$triptanes_dia30_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia30_m2)="Número de comprimidos"
label(data$simples_dia30_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia30_m2)="Número de comprimidos"
label(data$opioides_dia30_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia30_m2)="Número de comprimidos"
label(data$ergo_dia30_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia30_m2)="Número de comprimidos"
label(data$benzo_dia30_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia30_m2)="Número de comprimidos"
label(data$combin_dia30_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia30_m2)="Número de comprimidos"
label(data$cefalea_dia31_m2)="Cefalea"
label(data$intensidad_dia31_m2)="Intensidad"
label(data$horas_dia31_m2)="Horas"
label(data$analgesicos_dia31_m2)="Analgésicos"
label(data$aines_dia31_m2___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia31_m2)="Número de comprimidos"
label(data$triptanes_dia31_m2___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia31_m2)="Número de comprimidos"
label(data$simples_dia31_m2___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia31_m2)="Número de comprimidos"
label(data$opioides_dia31_m2___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia31_m2)="Número de comprimidos"
label(data$ergo_dia31_m2___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia31_m2)="Número de comprimidos"
label(data$benzo_dia31_m2___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia31_m2)="Número de comprimidos"
label(data$combin_dia31_m2___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia31_m2)="Número de comprimidos"
label(data$febrero_complete)="Complete?"
label(data$diciembre_timestamp)="Survey Timestamp"
label(data$cefalea_dia1_m12)="Cefalea"
label(data$intensidad_dia1_m12)="Intensidad"
label(data$horas_dia1_m12)="Horas"
label(data$analgesicos_dia1_m12)="Analgésicos"
label(data$aines_dia1_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia1_m12)="Número de comprimidos"
label(data$triptanes_dia1_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia1_m12)="Número de comprimidos"
label(data$simples_dia1_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia1_m12)="Número de comprimidos"
label(data$opioides_dia1_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia1_m12)="Número de comprimidos"
label(data$ergo_dia1_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia1_m12)="Número de comprimidos"
label(data$benzo_dia1_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia1_m12)="Número de comprimidos"
label(data$combin_dia1_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia1_m12)="Número de comprimidos"
label(data$cefalea_dia2_m12)="Cefalea"
label(data$intensidad_dia2_m12)="Intensidad"
label(data$horas_dia2_m12)="Horas"
label(data$analgesicos_dia2_m12)="Analgésicos"
label(data$aines_dia2_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia2_m12)="Número de comprimidos"
label(data$triptanes_dia2_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia2_m12)="Número de comprimidos"
label(data$simples_dia2_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia2_m12)="Número de comprimidos"
label(data$opioides_dia2_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia2_m12)="Número de comprimidos"
label(data$ergo_dia2_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia2_m12)="Número de comprimidos"
label(data$benzo_dia2_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia2_m12)="Número de comprimidos"
label(data$combin_dia2_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia2_m12)="Número de comprimidos"
label(data$cefalea_dia3_m12)="Cefalea"
label(data$intensidad_dia3_m12)="Intensidad"
label(data$horas_dia3_m12)="Horas"
label(data$analgesicos_dia3_m12)="Analgésicos"
label(data$aines_dia3_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia3_m12)="Número de comprimidos"
label(data$triptanes_dia3_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia3_m12)="Número de comprimidos"
label(data$simples_dia3_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia3_m12)="Número de comprimidos"
label(data$opioides_dia3_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia3_m12)="Número de comprimidos"
label(data$ergo_dia3_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia3_m12)="Número de comprimidos"
label(data$benzo_dia3_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia3_m12)="Número de comprimidos"
label(data$combin_dia3_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia3_m12)="Número de comprimidos"
label(data$cefalea_dia4_m12)="Cefalea"
label(data$intensidad_dia4_m12)="Intensidad"
label(data$horas_dia4_m12)="Horas"
label(data$analgesicos_dia4_m12)="Analgésicos"
label(data$aines_dia4_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia4_m12)="Número de comprimidos"
label(data$triptanes_dia4_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia4_m12)="Número de comprimidos"
label(data$simples_dia4_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia4_m12)="Número de comprimidos"
label(data$opioides_dia4_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia4_m12)="Número de comprimidos"
label(data$ergo_dia4_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia4_m12)="Número de comprimidos"
label(data$benzo_dia4_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia4_m12)="Número de comprimidos"
label(data$combin_dia4_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia4_m12)="Número de comprimidos"
label(data$cefalea_dia5_m12)="Cefalea"
label(data$intensidad_dia5_m12)="Intensidad"
label(data$horas_dia5_m12)="Horas"
label(data$analgesicos_dia5_m12)="Analgésicos"
label(data$aines_dia5_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia5_m12)="Número de comprimidos"
label(data$triptanes_dia5_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia5_m12)="Número de comprimidos"
label(data$simples_dia5_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia5_m12)="Número de comprimidos"
label(data$opioides_dia5_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia5_m12)="Número de comprimidos"
label(data$ergo_dia5_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia5_m12)="Número de comprimidos"
label(data$benzo_dia5_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia5_m12)="Número de comprimidos"
label(data$combin_dia5_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia5_m12)="Número de comprimidos"
label(data$cefalea_dia6_m12)="Cefalea"
label(data$intensidad_dia6_m12)="Intensidad"
label(data$horas_dia6_m12)="Horas"
label(data$analgesicos_dia6_m12)="Analgésicos"
label(data$aines_dia6_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia6_m12)="Número de comprimidos"
label(data$triptanes_dia6_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia6_m12)="Número de comprimidos"
label(data$simples_dia6_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia6_m12)="Número de comprimidos"
label(data$opioides_dia6_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia6_m12)="Número de comprimidos"
label(data$ergo_dia6_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia6_m12)="Número de comprimidos"
label(data$benzo_dia6_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia6_m12)="Número de comprimidos"
label(data$combin_dia6_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia6_m12)="Número de comprimidos"
label(data$cefalea_dia7_m12)="Cefalea"
label(data$intensidad_dia7_m12)="Intensidad"
label(data$horas_dia7_m12)="Horas"
label(data$analgesicos_dia7_m12)="Analgésicos"
label(data$aines_dia7_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia7_m12)="Número de comprimidos"
label(data$triptanes_dia7_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia7_m12)="Número de comprimidos"
label(data$simples_dia7_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia7_m12)="Número de comprimidos"
label(data$opioides_dia7_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia7_m12)="Número de comprimidos"
label(data$ergo_dia7_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia7_m12)="Número de comprimidos"
label(data$benzo_dia7_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia7_m12)="Número de comprimidos"
label(data$combin_dia7_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia7_m12)="Número de comprimidos"
label(data$cefalea_dia8_m12)="Cefalea"
label(data$intensidad_dia8_m12)="Intensidad"
label(data$horas_dia8_m12)="Horas"
label(data$analgesicos_dia8_m12)="Analgésicos"
label(data$aines_dia8_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia8_m12)="Número de comprimidos"
label(data$triptanes_dia8_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia8_m12)="Número de comprimidos"
label(data$simples_dia8_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia8_m12)="Número de comprimidos"
label(data$opioides_dia8_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia8_m12)="Número de comprimidos"
label(data$ergo_dia8_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia8_m12)="Número de comprimidos"
label(data$benzo_dia8_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia8_m12)="Número de comprimidos"
label(data$combin_dia8_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia8_m12)="Número de comprimidos"
label(data$cefalea_dia9_m12)="Cefalea"
label(data$intensidad_dia9_m12)="Intensidad"
label(data$horas_dia9_m12)="Horas"
label(data$analgesicos_dia9_m12)="Analgésicos"
label(data$aines_dia9_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia9_m12)="Número de comprimidos"
label(data$triptanes_dia9_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia9_m12)="Número de comprimidos"
label(data$simples_dia9_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia9_m12)="Número de comprimidos"
label(data$opioides_dia9_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia9_m12)="Número de comprimidos"
label(data$ergo_dia9_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia9_m12)="Número de comprimidos"
label(data$benzo_dia9_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia9_m12)="Número de comprimidos"
label(data$combin_dia9_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia9_m12)="Número de comprimidos"
label(data$cefalea_dia10_m12)="Cefalea"
label(data$intensidad_dia10_m12)="Intensidad"
label(data$horas_dia10_m12)="Horas"
label(data$analgesicos_dia10_m12)="Analgésicos"
label(data$aines_dia10_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia10_m12)="Número de comprimidos"
label(data$triptanes_dia10_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia10_m12)="Número de comprimidos"
label(data$simples_dia10_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia10_m12)="Número de comprimidos"
label(data$opioides_dia10_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia10_m12)="Número de comprimidos"
label(data$ergo_dia10_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia10_m12)="Número de comprimidos"
label(data$benzo_dia10_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia10_m12)="Número de comprimidos"
label(data$combin_dia10_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia10_m12)="Número de comprimidos"
label(data$cefalea_dia11_m12)="Cefalea"
label(data$intensidad_dia11_m12)="Intensidad"
label(data$horas_dia11_m12)="Horas"
label(data$analgesicos_dia11_m12)="Analgésicos"
label(data$aines_dia11_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia11_m12)="Número de comprimidos"
label(data$triptanes_dia11_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia11_m12)="Número de comprimidos"
label(data$simples_dia11_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia11_m12)="Número de comprimidos"
label(data$opioides_dia11_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia11_m12)="Número de comprimidos"
label(data$ergo_dia11_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia11_m12)="Número de comprimidos"
label(data$benzo_dia11_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia11_m12)="Número de comprimidos"
label(data$combin_dia11_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia11_m12)="Número de comprimidos"
label(data$cefalea_dia12_m12)="Cefalea"
label(data$intensidad_dia12_m12)="Intensidad"
label(data$horas_dia12_m12)="Horas"
label(data$analgesicos_dia12_m12)="Analgésicos"
label(data$aines_dia12_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia12_m12)="Número de comprimidos"
label(data$triptanes_dia12_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia12_m12)="Número de comprimidos"
label(data$simples_dia12_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia12_m12)="Número de comprimidos"
label(data$opioides_dia12_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia12_m12)="Número de comprimidos"
label(data$ergo_dia12_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia12_m12)="Número de comprimidos"
label(data$benzo_dia12_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia12_m12)="Número de comprimidos"
label(data$combin_dia12_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia12_m12)="Número de comprimidos"
label(data$cefalea_dia13_m12)="Cefalea"
label(data$intensidad_dia13_m12)="Intensidad"
label(data$horas_dia13_m12)="Horas"
label(data$analgesicos_dia13_m12)="Analgésicos"
label(data$aines_dia13_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia13_m12)="Número de comprimidos"
label(data$triptanes_dia13_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia13_m12)="Número de comprimidos"
label(data$simples_dia13_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia13_m12)="Número de comprimidos"
label(data$opioides_dia13_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia13_m12)="Número de comprimidos"
label(data$ergo_dia13_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia13_m12)="Número de comprimidos"
label(data$benzo_dia13_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia13_m12)="Número de comprimidos"
label(data$combin_dia13_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia13_m12)="Número de comprimidos"
label(data$cefalea_dia14_m12)="Cefalea"
label(data$intensidad_dia14_m12)="Intensidad"
label(data$horas_dia14_m12)="Horas"
label(data$analgesicos_dia14_m12)="Analgésicos"
label(data$aines_dia14_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia14_m12)="Número de comprimidos"
label(data$triptanes_dia14_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia14_m12)="Número de comprimidos"
label(data$simples_dia14_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia14_m12)="Número de comprimidos"
label(data$opioides_dia14_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia14_m12)="Número de comprimidos"
label(data$ergo_dia14_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia14_m12)="Número de comprimidos"
label(data$benzo_dia14_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia14_m12)="Número de comprimidos"
label(data$combin_dia14_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia14_m12)="Número de comprimidos"
label(data$cefalea_dia15_m12)="Cefalea"
label(data$intensidad_dia15_m12)="Intensidad"
label(data$horas_dia15_m12)="Horas"
label(data$aines_dia15_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$analgesicos_dia15_m12)="Analgésicos"
label(data$aines_compri_dia15_m12)="Número de comprimidos"
label(data$triptanes_dia15_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia15_m12)="Número de comprimidos"
label(data$simples_dia15_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia15_m12)="Número de comprimidos"
label(data$opioides_dia15_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia15_m12)="Número de comprimidos"
label(data$ergo_dia15_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia15_m12)="Número de comprimidos"
label(data$benzo_dia15_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia15_m12)="Número de comprimidos"
label(data$combin_dia15_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia15_m12)="Número de comprimidos"
label(data$cefalea_dia16_m12)="Cefalea"
label(data$intensidad_dia16_m12)="Intensidad"
label(data$horas_dia16_m12)="Horas"
label(data$analgesicos_dia16_m12)="Analgésicos"
label(data$aines_dia16_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia16_m12)="Número de comprimidos"
label(data$triptanes_dia16_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia16_m12)="Número de comprimidos"
label(data$simples_dia16_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia16_m12)="Número de comprimidos"
label(data$opioides_dia16_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia16_m12)="Número de comprimidos"
label(data$ergo_dia16_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia16_m12)="Número de comprimidos"
label(data$benzo_dia16_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia16_m12)="Número de comprimidos"
label(data$combin_dia16_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia16_m12)="Número de comprimidos"
label(data$cefalea_dia17_m12)="Cefalea"
label(data$intensidad_dia17_m12)="Intensidad"
label(data$analgesicos_dia17_m12)="Analgésicos"
label(data$horas_dia17_m12)="Horas"
label(data$aines_dia17_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia17_m12)="Número de comprimidos"
label(data$triptanes_dia17_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia17_m12)="Número de comprimidos"
label(data$simples_dia17_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia17_m12)="Número de comprimidos"
label(data$opioides_dia17_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia17_m12)="Número de comprimidos"
label(data$ergo_dia17_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia17_m12)="Número de comprimidos"
label(data$benzo_dia17_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia17_m12)="Número de comprimidos"
label(data$combin_dia17_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia17_m12)="Número de comprimidos"
label(data$cefalea_dia18_m12)="Cefalea"
label(data$intensidad_dia18_m12)="Intensidad"
label(data$horas_dia18_m12)="Horas"
label(data$analgesicos_dia18_m12)="Analgésicos"
label(data$aines_dia18_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia18_m12)="Número de comprimidos"
label(data$triptanes_dia18_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia18_m12)="Número de comprimidos"
label(data$simples_dia18_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia18_m12)="Número de comprimidos"
label(data$opioides_compri_dia18_m12)="Número de comprimidos"
label(data$ergo_dia18_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$opioides_dia18_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$ergo_compri_dia18_m12)="Número de comprimidos"
label(data$benzo_dia18_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia18_m12)="Número de comprimidos"
label(data$combin_dia18_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia18_m12)="Número de comprimidos"
label(data$cefalea_dia19_m12)="Cefalea"
label(data$intensidad_dia19_m12)="Intensidad"
label(data$horas_dia19_m12)="Horas"
label(data$analgesicos_dia19_m12)="Analgésicos"
label(data$aines_dia19_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia19_m12)="Número de comprimidos"
label(data$triptanes_dia19_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia19_m12)="Número de comprimidos"
label(data$simples_dia19_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia19_m12)="Número de comprimidos"
label(data$opioides_dia19_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia19_m12)="Número de comprimidos"
label(data$ergo_dia19_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia19_m12)="Número de comprimidos"
label(data$benzo_dia19_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia19_m12)="Número de comprimidos"
label(data$combin_dia19_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia19_m12)="Número de comprimidos"
label(data$cefalea_dia20_m12)="Cefalea"
label(data$intensidad_dia20_m12)="Intensidad"
label(data$horas_dia20_m12)="Horas"
label(data$analgesicos_dia20_m12)="Analgésicos"
label(data$aines_dia20_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia20_m12)="Número de comprimidos"
label(data$triptanes_dia20_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia20_m12)="Número de comprimidos"
label(data$simples_dia20_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia20_m12)="Número de comprimidos"
label(data$opioides_dia20_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia20_m12)="Número de comprimidos"
label(data$ergo_dia20_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia20_m12)="Número de comprimidos"
label(data$benzo_dia20_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia20_m12)="Número de comprimidos"
label(data$combin_dia20_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia20_m12)="Número de comprimidos"
label(data$cefalea_dia21_m12)="Cefalea"
label(data$intensidad_dia21_m12)="Intensidad"
label(data$horas_dia21_m12)="Horas"
label(data$analgesicos_dia21_m12)="Analgésicos"
label(data$aines_dia21_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia21_m12)="Número de comprimidos"
label(data$triptanes_dia21_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia21_m12)="Número de comprimidos"
label(data$simples_dia21_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia21_m12)="Número de comprimidos"
label(data$opioides_dia21_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia21_m12)="Número de comprimidos"
label(data$ergo_dia21_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia21_m12)="Número de comprimidos"
label(data$benzo_dia21_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia21_m12)="Número de comprimidos"
label(data$combin_dia21_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia21_m12)="Número de comprimidos"
label(data$cefalea_dia22_m12)="Cefalea"
label(data$intensidad_dia22_m12)="Intensidad"
label(data$horas_dia22_m12)="Horas"
label(data$analgesicos_dia22_m12)="Analgésicos"
label(data$aines_dia22_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia22_m12)="Número de comprimidos"
label(data$triptanes_dia22_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia22_m12)="Número de comprimidos"
label(data$simples_dia22_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia22_m12)="Número de comprimidos"
label(data$opioides_dia22_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia22_m12)="Número de comprimidos"
label(data$ergo_dia22_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia22_m12)="Número de comprimidos"
label(data$benzo_dia22_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia22_m12)="Número de comprimidos"
label(data$combin_dia22_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia22_m12)="Número de comprimidos"
label(data$cefalea_dia23_m12)="Cefalea"
label(data$intensidad_dia23_m12)="Intensidad"
label(data$horas_dia23_m12)="Horas"
label(data$analgesicos_dia23_m12)="Analgésicos"
label(data$aines_dia23_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia23_m12)="Número de comprimidos"
label(data$triptanes_dia23_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia23_m12)="Número de comprimidos"
label(data$simples_dia23_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia23_m12)="Número de comprimidos"
label(data$opioides_dia23_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia23_m12)="Número de comprimidos"
label(data$ergo_dia23_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia23_m12)="Número de comprimidos"
label(data$benzo_dia23_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia23_m12)="Número de comprimidos"
label(data$combin_dia23_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia23_m12)="Número de comprimidos"
label(data$cefalea_dia24_m12)="Cefalea"
label(data$intensidad_dia24_m12)="Intensidad"
label(data$analgesicos_dia24_m12)="Analgésicos"
label(data$horas_dia24_m12)="Horas"
label(data$aines_dia24_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia24_m12)="Número de comprimidos"
label(data$triptanes_dia24_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia24_m12)="Número de comprimidos"
label(data$simples_dia24_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia24_m12)="Número de comprimidos"
label(data$opioides_dia24_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia24_m12)="Número de comprimidos"
label(data$ergo_dia24_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia24_m12)="Número de comprimidos"
label(data$benzo_dia24_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia24_m12)="Número de comprimidos"
label(data$combin_dia24_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia24_m12)="Número de comprimidos"
label(data$cefalea_dia25_m12)="Cefalea"
label(data$intensidad_dia25_m12)="Intensidad"
label(data$horas_dia25_m12)="Horas"
label(data$analgesicos_dia25_m12)="Analgésicos"
label(data$aines_dia25_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia25_m12)="Número de comprimidos"
label(data$triptanes_dia25_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia25_m12)="Número de comprimidos"
label(data$simples_dia25_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia25_m12)="Número de comprimidos"
label(data$opioides_dia25_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia25_m12)="Número de comprimidos"
label(data$ergo_dia25_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia25_m12)="Número de comprimidos"
label(data$benzo_dia25_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia25_m12)="Número de comprimidos"
label(data$combin_dia25_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia25_m12)="Número de comprimidos"
label(data$cefalea_dia26_m12)="Cefalea"
label(data$intensidad_dia26_m12)="Intensidad"
label(data$horas_dia26_m12)="Horas"
label(data$analgesicos_dia26_m12)="Analgésicos"
label(data$aines_dia26_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia26_m12)="Número de comprimidos"
label(data$triptanes_dia26_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia26_m12)="Número de comprimidos"
label(data$opioides_dia26_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$simples_dia26_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$opioides_compri_dia26_m12)="Número de comprimidos"
label(data$ergo_dia26_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia26_m12)="Número de comprimidos"
label(data$simples_compri_dia26_m12)="Número de comprimidos"
label(data$benzo_dia26_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia26_m12)="Número de comprimidos"
label(data$combin_dia26_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia26_m12)="Número de comprimidos"
label(data$cefalea_dia27_m12)="Cefalea"
label(data$intensidad_dia27_m12)="Intensidad"
label(data$horas_dia27_m12)="Horas"
label(data$analgesicos_dia27_m12)="Analgésicos"
label(data$aines_dia27_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia27_m12)="Número de comprimidos"
label(data$triptanes_dia27_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia27_m12)="Número de comprimidos"
label(data$simples_dia27_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia27_m12)="Número de comprimidos"
label(data$opioides_dia27_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia27_m12)="Número de comprimidos"
label(data$ergo_dia27_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia27_m12)="Número de comprimidos"
label(data$benzo_dia27_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia27_m12)="Número de comprimidos"
label(data$combin_dia27_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia27_m12)="Número de comprimidos"
label(data$cefalea_dia28_m12)="Cefalea"
label(data$intensidad_dia28_m12)="Intensidad"
label(data$horas_dia28_m12)="Horas"
label(data$analgesicos_dia28_m12)="Analgésicos"
label(data$aines_dia28_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia28_m12)="Número de comprimidos"
label(data$triptanes_dia28_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia28_m12)="Número de comprimidos"
label(data$simples_dia28_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia28_m12)="Número de comprimidos"
label(data$opioides_dia28_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia28_m12)="Número de comprimidos"
label(data$ergo_dia28_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia28_m12)="Número de comprimidos"
label(data$benzo_dia28_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia28_m12)="Número de comprimidos"
label(data$combin_dia28_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia28_m12)="Número de comprimidos"
label(data$cefalea_dia29_m12)="Cefalea"
label(data$intensidad_dia29_m12)="Intensidad"
label(data$horas_dia29_m12)="Horas"
label(data$analgesicos_dia29_m12)="Analgésicos"
label(data$aines_dia29_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia29_m12)="Número de comprimidos"
label(data$triptanes_dia29_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia29_m12)="Número de comprimidos"
label(data$simples_dia29_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia29_m12)="Número de comprimidos"
label(data$opioides_dia29_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia29_m12)="Número de comprimidos"
label(data$ergo_dia29_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia29_m12)="Número de comprimidos"
label(data$benzo_dia29_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia29_m12)="Número de comprimidos"
label(data$combin_dia29_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia29_m12)="Número de comprimidos"
label(data$cefalea_dia30_m12)="Cefalea"
label(data$intensidad_dia30_m12)="Intensidad"
label(data$horas_dia30_m12)="Horas"
label(data$analgesicos_dia30_m12)="Analgésicos"
label(data$aines_dia30_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia30_m12)="Número de comprimidos"
label(data$triptanes_dia30_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia30_m12)="Número de comprimidos"
label(data$simples_dia30_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia30_m12)="Número de comprimidos"
label(data$opioides_dia30_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia30_m12)="Número de comprimidos"
label(data$ergo_dia30_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia30_m12)="Número de comprimidos"
label(data$benzo_dia30_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia30_m12)="Número de comprimidos"
label(data$combin_dia30_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia30_m12)="Número de comprimidos"
label(data$cefalea_dia31_m12)="Cefalea"
label(data$intensidad_dia31_m12)="Intensidad"
label(data$horas_dia31_m12)="Horas"
label(data$analgesicos_dia31_m12)="Analgésicos"
label(data$aines_dia31_m12___0)="Tipo de analgésicos (choice=AINEs)"
label(data$aines_compri_dia31_m12)="Número de comprimidos"
label(data$triptanes_dia31_m12___1)="Tipo de analgésicos (choice=Triptanes)"
label(data$triptanes_compri_dia31_m12)="Número de comprimidos"
label(data$simples_dia31_m12___2)="Tipo de analgésicos (choice=Analgésicos simples)"
label(data$simples_compri_dia31_m12)="Número de comprimidos"
label(data$opioides_dia31_m12___3)="Tipo de analgésicos (choice=Opioides)"
label(data$opioides_compri_dia31_m12)="Número de comprimidos"
label(data$ergo_dia31_m12___4)="Tipo de analgésicos (choice=Ergotamínicos)"
label(data$ergo_compri_dia31_m12)="Número de comprimidos"
label(data$benzo_dia31_m12___5)="Tipo de analgésicos (choice=Benzodiacepinas)"
label(data$benzo_compri_dia31_m12)="Número de comprimidos"
label(data$combin_dia31_m12___6)="Tipo de analgésicos (choice=Combinados)"
label(data$combin_compri_dia31_m12)="Número de comprimidos"
label(data$diciembre_complete)="Complete?"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("basal_arm_1","followup_arm_1"))
data$redcap_repeat_instrument.factor = factor(data$redcap_repeat_instrument,levels=c("analytical_data"))
data$redcap_data_access_group.factor = factor(data$redcap_data_access_group,levels=c("garraf","hub"))
data$gender.factor = factor(data$gender,levels=c("0","1"))
data$ethnicity.factor = factor(data$ethnicity,levels=c("1","2"))
data$ethnicity_2.factor = factor(data$ethnicity_2,levels=c("1","2"))
data$demographic_information_complete.factor = factor(data$demographic_information_complete,levels=c("0","1","2"))
data$a.factor = factor(data$a,levels=c(""))
data$a_9.factor = factor(data$a_9,levels=c(""))
data$a_8.factor = factor(data$a_8,levels=c(""))
data$a_7.factor = factor(data$a_7,levels=c(""))
data$a_6.factor = factor(data$a_6,levels=c(""))
data$a_5.factor = factor(data$a_5,levels=c(""))
data$a_4.factor = factor(data$a_4,levels=c(""))
data$a_3.factor = factor(data$a_3,levels=c(""))
data$a_2.factor = factor(data$a_2,levels=c(""))
data$inclusion_criteria_complete.factor = factor(data$inclusion_criteria_complete,levels=c("0","1","2"))
data$background_information_complete.factor = factor(data$background_information_complete,levels=c("0","1","2"))
data$continua_tratamiento.factor = factor(data$continua_tratamiento,levels=c("0","1","2","3","4","5","6"))
data$analytical_data_complete.factor = factor(data$analytical_data_complete,levels=c("0","1","2"))
data$followup_assessment_complete.factor = factor(data$followup_assessment_complete,levels=c("0","1","2"))
data$reinicio_motivo.factor = factor(data$reinicio_motivo,levels=c("0","1","2","3"))
data$switch_motivo.factor = factor(data$switch_motivo,levels=c("0","1","2"))
data$suspension_motivo.factor = factor(data$suspension_motivo,levels=c("0","1","2","3","4"))
data$num_administracion_anti.factor = factor(data$num_administracion_anti,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13"))
data$efectos_adversos_anti.factor = factor(data$efectos_adversos_anti,levels=c("0","1"))
data$efectos_adversos_tipo_anti___0.factor = factor(data$efectos_adversos_tipo_anti___0,levels=c("0","1"))
data$efectos_adversos_tipo_anti___1.factor = factor(data$efectos_adversos_tipo_anti___1,levels=c("0","1"))
data$efectos_adversos_tipo_anti___2.factor = factor(data$efectos_adversos_tipo_anti___2,levels=c("0","1"))
data$efectos_adversos_tipo_anti___3.factor = factor(data$efectos_adversos_tipo_anti___3,levels=c("0","1"))
data$efectos_adversos_tipo_anti___4.factor = factor(data$efectos_adversos_tipo_anti___4,levels=c("0","1"))
data$efectos_adversos_tipo_anti___5.factor = factor(data$efectos_adversos_tipo_anti___5,levels=c("0","1"))
data$efectos_adversos_tipo_anti___6.factor = factor(data$efectos_adversos_tipo_anti___6,levels=c("0","1"))
data$efectos_adversos_tipo_anti___7.factor = factor(data$efectos_adversos_tipo_anti___7,levels=c("0","1"))
data$efectos_adversos_tipo_anti___8.factor = factor(data$efectos_adversos_tipo_anti___8,levels=c("0","1"))
data$efectos_adversos_tipo_anti___9.factor = factor(data$efectos_adversos_tipo_anti___9,levels=c("0","1"))
data$seguimiento_trat_oral_anti.factor = factor(data$seguimiento_trat_oral_anti,levels=c("0","1"))
data$anticgrp_tipo_anti.factor = factor(data$anticgrp_tipo_anti,levels=c("0","1","2","3"))
data$anticgrp_dosis_eren.factor = factor(data$anticgrp_dosis_eren,levels=c("0","1"))
data$anticgrp_dosis_fremanez.factor = factor(data$anticgrp_dosis_fremanez,levels=c("0","1"))
data$tratamiento_previo.factor = factor(data$tratamiento_previo,levels=c("0","1"))
data$topiramato___1.factor = factor(data$topiramato___1,levels=c("0","1"))
data$topiramato_trat.factor = factor(data$topiramato_trat,levels=c("0","1","2"))
data$topiramato_motivo.factor = factor(data$topiramato_motivo,levels=c("0","1","2"))
data$propranolol___1.factor = factor(data$propranolol___1,levels=c("0","1"))
data$propranolol_trat.factor = factor(data$propranolol_trat,levels=c("0","1","2"))
data$propranolol_motivo.factor = factor(data$propranolol_motivo,levels=c("0","1","2"))
data$metoprolol___1.factor = factor(data$metoprolol___1,levels=c("0","1"))
data$metoprolol_trat.factor = factor(data$metoprolol_trat,levels=c("0","1","2"))
data$metoprolol_motivo.factor = factor(data$metoprolol_motivo,levels=c("0","1","2"))
data$nadolol___1.factor = factor(data$nadolol___1,levels=c("0","1"))
data$nadolol_trat.factor = factor(data$nadolol_trat,levels=c("0","1","2"))
data$nadolol_motivo.factor = factor(data$nadolol_motivo,levels=c("0","1","2"))
data$atenolol___1.factor = factor(data$atenolol___1,levels=c("0","1"))
data$atenolol_trat.factor = factor(data$atenolol_trat,levels=c("0","1","2"))
data$atenolol_motivo.factor = factor(data$atenolol_motivo,levels=c("0","1","2"))
data$timolol___1.factor = factor(data$timolol___1,levels=c("0","1"))
data$timolol_trat.factor = factor(data$timolol_trat,levels=c("0","1","2"))
data$timolol_motivo.factor = factor(data$timolol_motivo,levels=c("0","1","2"))
data$nevibolol___1.factor = factor(data$nevibolol___1,levels=c("0","1"))
data$nevibolol_trat.factor = factor(data$nevibolol_trat,levels=c("0","1","2"))
data$nevibolol_motivo.factor = factor(data$nevibolol_motivo,levels=c("0","1","2"))
data$amitriptilina___1.factor = factor(data$amitriptilina___1,levels=c("0","1"))
data$amitriptilina_trat.factor = factor(data$amitriptilina_trat,levels=c("0","1","2"))
data$amitriptilina_motivo.factor = factor(data$amitriptilina_motivo,levels=c("0","1","2"))
data$venlafaxina___1.factor = factor(data$venlafaxina___1,levels=c("0","1"))
data$venlafaxina_trat.factor = factor(data$venlafaxina_trat,levels=c("0","1","2"))
data$venlafaxina_motivo.factor = factor(data$venlafaxina_motivo,levels=c("0","1","2"))
data$zonisamida___1.factor = factor(data$zonisamida___1,levels=c("0","1"))
data$zonisamida_trat.factor = factor(data$zonisamida_trat,levels=c("0","1","2"))
data$zonisamida_motivo.factor = factor(data$zonisamida_motivo,levels=c("0","1","2"))
data$flunarizina___1.factor = factor(data$flunarizina___1,levels=c("0","1"))
data$flunarizina_trat.factor = factor(data$flunarizina_trat,levels=c("0","1","2"))
data$flunarizina_motivo.factor = factor(data$flunarizina_motivo,levels=c("0","1","2"))
data$lisinopril___1.factor = factor(data$lisinopril___1,levels=c("0","1"))
data$lisinopril_trat.factor = factor(data$lisinopril_trat,levels=c("0","1","2"))
data$lisinopril_motivo.factor = factor(data$lisinopril_motivo,levels=c("0","1","2"))
data$candesartan___1.factor = factor(data$candesartan___1,levels=c("0","1"))
data$candesartan_trat.factor = factor(data$candesartan_trat,levels=c("0","1","2"))
data$candesartan_motivo.factor = factor(data$candesartan_motivo,levels=c("0","1","2"))
data$valproato___1.factor = factor(data$valproato___1,levels=c("0","1"))
data$valproato_trat.factor = factor(data$valproato_trat,levels=c("0","1","2"))
data$valproato_motivo.factor = factor(data$valproato_motivo,levels=c("0","1","2"))
data$lamotrigina___1.factor = factor(data$lamotrigina___1,levels=c("0","1"))
data$lamotrigina_trat.factor = factor(data$lamotrigina_trat,levels=c("0","1","2"))
data$lamotrigina_motivo.factor = factor(data$lamotrigina_motivo,levels=c("0","1","2"))
data$botox___1.factor = factor(data$botox___1,levels=c("0","1"))
data$botox_trat.factor = factor(data$botox_trat,levels=c("0","1","2"))
data$botox_motivo.factor = factor(data$botox_motivo,levels=c("0","1","2"))
data$erenumab___1.factor = factor(data$erenumab___1,levels=c("0","1"))
data$erenumab_trat.factor = factor(data$erenumab_trat,levels=c("0","1","2"))
data$erenumab_motivo.factor = factor(data$erenumab_motivo,levels=c("0","1","2"))
data$galcanezumab___1.factor = factor(data$galcanezumab___1,levels=c("0","1"))
data$galcanezumab_trat.factor = factor(data$galcanezumab_trat,levels=c("0","1","2"))
data$galcanezumab_motivo.factor = factor(data$galcanezumab_motivo,levels=c("0","1","2"))
data$fremanezumab___1.factor = factor(data$fremanezumab___1,levels=c("0","1"))
data$fremanezumab_trat.factor = factor(data$fremanezumab_trat,levels=c("0","1","2"))
data$fremanezumab_motivo.factor = factor(data$fremanezumab_motivo,levels=c("0","1","2"))
data$eptinezumab___1.factor = factor(data$eptinezumab___1,levels=c("0","1"))
data$eptinezumab_trat.factor = factor(data$eptinezumab_trat,levels=c("0","1","2"))
data$eptinezumab_motivo.factor = factor(data$eptinezumab_motivo,levels=c("0","1","2"))
data$otro___1.factor = factor(data$otro___1,levels=c("0","1"))
data$otro_trat.factor = factor(data$otro_trat,levels=c("0","1","2"))
data$otro_motivo.factor = factor(data$otro_motivo,levels=c("0","1","2"))
data$criterios_abuso_medicacion_anti.factor = factor(data$criterios_abuso_medicacion_anti,levels=c("0","1"))
data$anticgrp_complete.factor = factor(data$anticgrp_complete,levels=c("0","1","2"))
data$cefalea_dia1_m1.factor = factor(data$cefalea_dia1_m1,levels=c("0","1"))
data$intensidad_dia1_m1.factor = factor(data$intensidad_dia1_m1,levels=c("0","1","2"))
data$horas_dia1_m1.factor = factor(data$horas_dia1_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia1_m1.factor = factor(data$analgesicos_dia1_m1,levels=c("0","1"))
data$aines_dia1_m1___0.factor = factor(data$aines_dia1_m1___0,levels=c("0","1"))
data$triptanes_dia1_m1___1.factor = factor(data$triptanes_dia1_m1___1,levels=c("0","1"))
data$simples_dia1_m1___2.factor = factor(data$simples_dia1_m1___2,levels=c("0","1"))
data$opioides_dia1_m1___3.factor = factor(data$opioides_dia1_m1___3,levels=c("0","1"))
data$ergo_dia1_m1___4.factor = factor(data$ergo_dia1_m1___4,levels=c("0","1"))
data$benzo_dia1_m1___5.factor = factor(data$benzo_dia1_m1___5,levels=c("0","1"))
data$combin_dia1_m1___6.factor = factor(data$combin_dia1_m1___6,levels=c("0","1"))
data$cefalea_dia2_m1.factor = factor(data$cefalea_dia2_m1,levels=c("0","1"))
data$intensidad_dia2_m1.factor = factor(data$intensidad_dia2_m1,levels=c("0","1","2"))
data$horas_dia2_m1.factor = factor(data$horas_dia2_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia2_m1.factor = factor(data$analgesicos_dia2_m1,levels=c("0","1"))
data$aines_dia2_m1___0.factor = factor(data$aines_dia2_m1___0,levels=c("0","1"))
data$triptanes_dia2_m1___1.factor = factor(data$triptanes_dia2_m1___1,levels=c("0","1"))
data$simples_dia2_m1___2.factor = factor(data$simples_dia2_m1___2,levels=c("0","1"))
data$opioides_dia2_m1___3.factor = factor(data$opioides_dia2_m1___3,levels=c("0","1"))
data$ergo_dia2_m1___4.factor = factor(data$ergo_dia2_m1___4,levels=c("0","1"))
data$benzo_dia2_m1___5.factor = factor(data$benzo_dia2_m1___5,levels=c("0","1"))
data$combin_dia2_m1___6.factor = factor(data$combin_dia2_m1___6,levels=c("0","1"))
data$cefalea_dia3_m1.factor = factor(data$cefalea_dia3_m1,levels=c("0","1"))
data$intensidad_dia3_m1.factor = factor(data$intensidad_dia3_m1,levels=c("0","1","2"))
data$horas_dia3_m1.factor = factor(data$horas_dia3_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia3_m1.factor = factor(data$analgesicos_dia3_m1,levels=c("0","1"))
data$aines_dia3_m1___0.factor = factor(data$aines_dia3_m1___0,levels=c("0","1"))
data$triptanes_dia3_m1___1.factor = factor(data$triptanes_dia3_m1___1,levels=c("0","1"))
data$simples_dia3_m1___2.factor = factor(data$simples_dia3_m1___2,levels=c("0","1"))
data$opioides_dia3_m1___3.factor = factor(data$opioides_dia3_m1___3,levels=c("0","1"))
data$ergo_dia3_m1___4.factor = factor(data$ergo_dia3_m1___4,levels=c("0","1"))
data$benzo_dia3_m1___5.factor = factor(data$benzo_dia3_m1___5,levels=c("0","1"))
data$combin_dia3_m1___6.factor = factor(data$combin_dia3_m1___6,levels=c("0","1"))
data$cefalea_dia4_m1.factor = factor(data$cefalea_dia4_m1,levels=c("0","1"))
data$intensidad_dia4_m1.factor = factor(data$intensidad_dia4_m1,levels=c("0","1","2"))
data$horas_dia4_m1.factor = factor(data$horas_dia4_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia4_m1.factor = factor(data$analgesicos_dia4_m1,levels=c("0","1"))
data$aines_dia4_m1___0.factor = factor(data$aines_dia4_m1___0,levels=c("0","1"))
data$triptanes_dia4_m1___1.factor = factor(data$triptanes_dia4_m1___1,levels=c("0","1"))
data$simples_dia4_m1___2.factor = factor(data$simples_dia4_m1___2,levels=c("0","1"))
data$opioides_dia4_m1___3.factor = factor(data$opioides_dia4_m1___3,levels=c("0","1"))
data$ergo_dia4_m1___4.factor = factor(data$ergo_dia4_m1___4,levels=c("0","1"))
data$benzo_dia4_m1___5.factor = factor(data$benzo_dia4_m1___5,levels=c("0","1"))
data$combin_dia4_m1___6.factor = factor(data$combin_dia4_m1___6,levels=c("0","1"))
data$cefalea_dia5_m1.factor = factor(data$cefalea_dia5_m1,levels=c("0","1"))
data$intensidad_dia5_m1.factor = factor(data$intensidad_dia5_m1,levels=c("0","1","2"))
data$horas_dia5_m1.factor = factor(data$horas_dia5_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia5_m1.factor = factor(data$analgesicos_dia5_m1,levels=c("0","1"))
data$aines_dia5_m1___0.factor = factor(data$aines_dia5_m1___0,levels=c("0","1"))
data$triptanes_dia5_m1___1.factor = factor(data$triptanes_dia5_m1___1,levels=c("0","1"))
data$simples_dia5_m1___2.factor = factor(data$simples_dia5_m1___2,levels=c("0","1"))
data$opioides_dia5_m1___3.factor = factor(data$opioides_dia5_m1___3,levels=c("0","1"))
data$ergo_dia5_m1___4.factor = factor(data$ergo_dia5_m1___4,levels=c("0","1"))
data$benzo_dia5_m1___5.factor = factor(data$benzo_dia5_m1___5,levels=c("0","1"))
data$combin_dia5_m1___6.factor = factor(data$combin_dia5_m1___6,levels=c("0","1"))
data$cefalea_dia6_m1.factor = factor(data$cefalea_dia6_m1,levels=c("0","1"))
data$intensidad_dia6_m1.factor = factor(data$intensidad_dia6_m1,levels=c("0","1","2"))
data$horas_dia6_m1.factor = factor(data$horas_dia6_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia6_m1.factor = factor(data$analgesicos_dia6_m1,levels=c("0","1"))
data$aines_dia6_m1___0.factor = factor(data$aines_dia6_m1___0,levels=c("0","1"))
data$triptanes_dia6_m1___1.factor = factor(data$triptanes_dia6_m1___1,levels=c("0","1"))
data$simples_dia6_m1___2.factor = factor(data$simples_dia6_m1___2,levels=c("0","1"))
data$opioides_dia6_m1___3.factor = factor(data$opioides_dia6_m1___3,levels=c("0","1"))
data$ergo_dia6_m1___4.factor = factor(data$ergo_dia6_m1___4,levels=c("0","1"))
data$benzo_dia6_m1___5.factor = factor(data$benzo_dia6_m1___5,levels=c("0","1"))
data$combin_dia6_m1___6.factor = factor(data$combin_dia6_m1___6,levels=c("0","1"))
data$cefalea_dia7_m1.factor = factor(data$cefalea_dia7_m1,levels=c("0","1"))
data$intensidad_dia7_m1.factor = factor(data$intensidad_dia7_m1,levels=c("0","1","2"))
data$horas_dia7_m1.factor = factor(data$horas_dia7_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia7_m1.factor = factor(data$analgesicos_dia7_m1,levels=c("0","1"))
data$aines_dia7_m1___0.factor = factor(data$aines_dia7_m1___0,levels=c("0","1"))
data$triptanes_dia7_m1___1.factor = factor(data$triptanes_dia7_m1___1,levels=c("0","1"))
data$simples_dia7_m1___2.factor = factor(data$simples_dia7_m1___2,levels=c("0","1"))
data$opioides_dia7_m1___3.factor = factor(data$opioides_dia7_m1___3,levels=c("0","1"))
data$ergo_dia7_m1___4.factor = factor(data$ergo_dia7_m1___4,levels=c("0","1"))
data$benzo_dia7_m1___5.factor = factor(data$benzo_dia7_m1___5,levels=c("0","1"))
data$combin_dia7_m1___6.factor = factor(data$combin_dia7_m1___6,levels=c("0","1"))
data$cefalea_dia8_m1.factor = factor(data$cefalea_dia8_m1,levels=c("0","1"))
data$intensidad_dia8_m1.factor = factor(data$intensidad_dia8_m1,levels=c("0","1","2"))
data$horas_dia8_m1.factor = factor(data$horas_dia8_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia8_m1.factor = factor(data$analgesicos_dia8_m1,levels=c("0","1"))
data$aines_dia8_m1___0.factor = factor(data$aines_dia8_m1___0,levels=c("0","1"))
data$triptanes_dia8_m1___1.factor = factor(data$triptanes_dia8_m1___1,levels=c("0","1"))
data$simples_dia8_m1___2.factor = factor(data$simples_dia8_m1___2,levels=c("0","1"))
data$opioides_dia8_m1___3.factor = factor(data$opioides_dia8_m1___3,levels=c("0","1"))
data$ergo_dia8_m1___4.factor = factor(data$ergo_dia8_m1___4,levels=c("0","1"))
data$benzo_dia8_m1___5.factor = factor(data$benzo_dia8_m1___5,levels=c("0","1"))
data$combin_dia8_m1___6.factor = factor(data$combin_dia8_m1___6,levels=c("0","1"))
data$cefalea_dia9_m1.factor = factor(data$cefalea_dia9_m1,levels=c("0","1"))
data$intensidad_dia9_m1.factor = factor(data$intensidad_dia9_m1,levels=c("0","1","2"))
data$horas_dia9_m1.factor = factor(data$horas_dia9_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia9_m1.factor = factor(data$analgesicos_dia9_m1,levels=c("0","1"))
data$aines_dia9_m1___0.factor = factor(data$aines_dia9_m1___0,levels=c("0","1"))
data$triptanes_dia9_m1___1.factor = factor(data$triptanes_dia9_m1___1,levels=c("0","1"))
data$simples_dia9_m1___2.factor = factor(data$simples_dia9_m1___2,levels=c("0","1"))
data$opioides_dia9_m1___3.factor = factor(data$opioides_dia9_m1___3,levels=c("0","1"))
data$ergo_dia9_m1___4.factor = factor(data$ergo_dia9_m1___4,levels=c("0","1"))
data$benzo_dia9_m1___5.factor = factor(data$benzo_dia9_m1___5,levels=c("0","1"))
data$combin_dia9_m1___6.factor = factor(data$combin_dia9_m1___6,levels=c("0","1"))
data$cefalea_dia10_m1.factor = factor(data$cefalea_dia10_m1,levels=c("0","1"))
data$intensidad_dia10_m1.factor = factor(data$intensidad_dia10_m1,levels=c("0","1","2"))
data$horas_dia10_m1.factor = factor(data$horas_dia10_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia10_m1.factor = factor(data$analgesicos_dia10_m1,levels=c("0","1"))
data$aines_dia10_m1___0.factor = factor(data$aines_dia10_m1___0,levels=c("0","1"))
data$triptanes_dia10_m1___1.factor = factor(data$triptanes_dia10_m1___1,levels=c("0","1"))
data$simples_dia10_m1___2.factor = factor(data$simples_dia10_m1___2,levels=c("0","1"))
data$opioides_dia10_m1___3.factor = factor(data$opioides_dia10_m1___3,levels=c("0","1"))
data$ergo_dia10_m1___4.factor = factor(data$ergo_dia10_m1___4,levels=c("0","1"))
data$benzo_dia10_m1___5.factor = factor(data$benzo_dia10_m1___5,levels=c("0","1"))
data$combin_dia10_m1___6.factor = factor(data$combin_dia10_m1___6,levels=c("0","1"))
data$cefalea_dia11_m1.factor = factor(data$cefalea_dia11_m1,levels=c("0","1"))
data$intensidad_dia11_m1.factor = factor(data$intensidad_dia11_m1,levels=c("0","1","2"))
data$horas_dia11_m1.factor = factor(data$horas_dia11_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia11_m1.factor = factor(data$analgesicos_dia11_m1,levels=c("0","1"))
data$aines_dia11_m1___0.factor = factor(data$aines_dia11_m1___0,levels=c("0","1"))
data$triptanes_dia11_m1___1.factor = factor(data$triptanes_dia11_m1___1,levels=c("0","1"))
data$simples_dia11_m1___2.factor = factor(data$simples_dia11_m1___2,levels=c("0","1"))
data$opioides_dia11_m1___3.factor = factor(data$opioides_dia11_m1___3,levels=c("0","1"))
data$ergo_dia11_m1___4.factor = factor(data$ergo_dia11_m1___4,levels=c("0","1"))
data$benzo_dia11_m1___5.factor = factor(data$benzo_dia11_m1___5,levels=c("0","1"))
data$combin_dia11_m1___6.factor = factor(data$combin_dia11_m1___6,levels=c("0","1"))
data$cefalea_dia12_m1.factor = factor(data$cefalea_dia12_m1,levels=c("0","1"))
data$intensidad_dia12_m1.factor = factor(data$intensidad_dia12_m1,levels=c("0","1","2"))
data$horas_dia12_m1.factor = factor(data$horas_dia12_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia12_m1.factor = factor(data$analgesicos_dia12_m1,levels=c("0","1"))
data$aines_dia12_m1___0.factor = factor(data$aines_dia12_m1___0,levels=c("0","1"))
data$triptanes_dia12_m1___1.factor = factor(data$triptanes_dia12_m1___1,levels=c("0","1"))
data$simples_dia12_m1___2.factor = factor(data$simples_dia12_m1___2,levels=c("0","1"))
data$opioides_dia12_m1___3.factor = factor(data$opioides_dia12_m1___3,levels=c("0","1"))
data$ergo_dia12_m1___4.factor = factor(data$ergo_dia12_m1___4,levels=c("0","1"))
data$benzo_dia12_m1___5.factor = factor(data$benzo_dia12_m1___5,levels=c("0","1"))
data$combin_dia12_m1___6.factor = factor(data$combin_dia12_m1___6,levels=c("0","1"))
data$cefalea_dia13_m1.factor = factor(data$cefalea_dia13_m1,levels=c("0","1"))
data$intensidad_dia13_m1.factor = factor(data$intensidad_dia13_m1,levels=c("0","1","2"))
data$horas_dia13_m1.factor = factor(data$horas_dia13_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia13_m1.factor = factor(data$analgesicos_dia13_m1,levels=c("0","1"))
data$aines_dia13_m1___0.factor = factor(data$aines_dia13_m1___0,levels=c("0","1"))
data$triptanes_dia13_m1___1.factor = factor(data$triptanes_dia13_m1___1,levels=c("0","1"))
data$simples_dia13_m1___2.factor = factor(data$simples_dia13_m1___2,levels=c("0","1"))
data$opioides_dia13_m1___3.factor = factor(data$opioides_dia13_m1___3,levels=c("0","1"))
data$ergo_dia13_m1___4.factor = factor(data$ergo_dia13_m1___4,levels=c("0","1"))
data$benzo_dia13_m1___5.factor = factor(data$benzo_dia13_m1___5,levels=c("0","1"))
data$combin_dia13_m1___6.factor = factor(data$combin_dia13_m1___6,levels=c("0","1"))
data$cefalea_dia14_m1.factor = factor(data$cefalea_dia14_m1,levels=c("0","1"))
data$intensidad_dia14_m1.factor = factor(data$intensidad_dia14_m1,levels=c("0","1","2"))
data$horas_dia14_m1.factor = factor(data$horas_dia14_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia14_m1.factor = factor(data$analgesicos_dia14_m1,levels=c("0","1"))
data$aines_dia14_m1___0.factor = factor(data$aines_dia14_m1___0,levels=c("0","1"))
data$triptanes_dia14_m1___1.factor = factor(data$triptanes_dia14_m1___1,levels=c("0","1"))
data$simples_dia14_m1___2.factor = factor(data$simples_dia14_m1___2,levels=c("0","1"))
data$opioides_dia14_m1___3.factor = factor(data$opioides_dia14_m1___3,levels=c("0","1"))
data$ergo_dia14_m1___4.factor = factor(data$ergo_dia14_m1___4,levels=c("0","1"))
data$benzo_dia14_m1___5.factor = factor(data$benzo_dia14_m1___5,levels=c("0","1"))
data$combin_dia14_m1___6.factor = factor(data$combin_dia14_m1___6,levels=c("0","1"))
data$cefalea_dia15_m1.factor = factor(data$cefalea_dia15_m1,levels=c("0","1"))
data$intensidad_dia15_m1.factor = factor(data$intensidad_dia15_m1,levels=c("0","1","2"))
data$horas_dia15_m1.factor = factor(data$horas_dia15_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$aines_dia15_m1___0.factor = factor(data$aines_dia15_m1___0,levels=c("0","1"))
data$analgesicos_dia15_m1.factor = factor(data$analgesicos_dia15_m1,levels=c("0","1"))
data$triptanes_dia15_m1___1.factor = factor(data$triptanes_dia15_m1___1,levels=c("0","1"))
data$simples_dia15_m1___2.factor = factor(data$simples_dia15_m1___2,levels=c("0","1"))
data$opioides_dia15_m1___3.factor = factor(data$opioides_dia15_m1___3,levels=c("0","1"))
data$ergo_dia15_m1___4.factor = factor(data$ergo_dia15_m1___4,levels=c("0","1"))
data$benzo_dia15_m1___5.factor = factor(data$benzo_dia15_m1___5,levels=c("0","1"))
data$combin_dia15_m1___6.factor = factor(data$combin_dia15_m1___6,levels=c("0","1"))
data$cefalea_dia16_m1.factor = factor(data$cefalea_dia16_m1,levels=c("0","1"))
data$intensidad_dia16_m1.factor = factor(data$intensidad_dia16_m1,levels=c("0","1","2"))
data$horas_dia16_m1.factor = factor(data$horas_dia16_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia16_m1.factor = factor(data$analgesicos_dia16_m1,levels=c("0","1"))
data$aines_dia16_m1___0.factor = factor(data$aines_dia16_m1___0,levels=c("0","1"))
data$triptanes_dia16_m1___1.factor = factor(data$triptanes_dia16_m1___1,levels=c("0","1"))
data$simples_dia16_m1___2.factor = factor(data$simples_dia16_m1___2,levels=c("0","1"))
data$opioides_dia16_m1___3.factor = factor(data$opioides_dia16_m1___3,levels=c("0","1"))
data$ergo_dia16_m1___4.factor = factor(data$ergo_dia16_m1___4,levels=c("0","1"))
data$benzo_dia16_m1___5.factor = factor(data$benzo_dia16_m1___5,levels=c("0","1"))
data$combin_dia16_m1___6.factor = factor(data$combin_dia16_m1___6,levels=c("0","1"))
data$cefalea_dia17_m1.factor = factor(data$cefalea_dia17_m1,levels=c("0","1"))
data$intensidad_dia17_m1.factor = factor(data$intensidad_dia17_m1,levels=c("0","1","2"))
data$horas_dia17_m1.factor = factor(data$horas_dia17_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia17_m1.factor = factor(data$analgesicos_dia17_m1,levels=c("0","1"))
data$aines_dia17_m1___0.factor = factor(data$aines_dia17_m1___0,levels=c("0","1"))
data$triptanes_dia17_m1___1.factor = factor(data$triptanes_dia17_m1___1,levels=c("0","1"))
data$simples_dia17_m1___2.factor = factor(data$simples_dia17_m1___2,levels=c("0","1"))
data$opioides_dia17_m1___3.factor = factor(data$opioides_dia17_m1___3,levels=c("0","1"))
data$ergo_dia17_m1___4.factor = factor(data$ergo_dia17_m1___4,levels=c("0","1"))
data$benzo_dia17_m1___5.factor = factor(data$benzo_dia17_m1___5,levels=c("0","1"))
data$combin_dia17_m1___6.factor = factor(data$combin_dia17_m1___6,levels=c("0","1"))
data$cefalea_dia18_m1.factor = factor(data$cefalea_dia18_m1,levels=c("0","1"))
data$intensidad_dia18_m1.factor = factor(data$intensidad_dia18_m1,levels=c("0","1","2"))
data$horas_dia18_m1.factor = factor(data$horas_dia18_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia18_m1.factor = factor(data$analgesicos_dia18_m1,levels=c("0","1"))
data$aines_dia18_m1___0.factor = factor(data$aines_dia18_m1___0,levels=c("0","1"))
data$triptanes_dia18_m1___1.factor = factor(data$triptanes_dia18_m1___1,levels=c("0","1"))
data$simples_dia18_m1___2.factor = factor(data$simples_dia18_m1___2,levels=c("0","1"))
data$opioides_dia18_m1___3.factor = factor(data$opioides_dia18_m1___3,levels=c("0","1"))
data$ergo_dia18_m1___4.factor = factor(data$ergo_dia18_m1___4,levels=c("0","1"))
data$benzo_dia18_m1___5.factor = factor(data$benzo_dia18_m1___5,levels=c("0","1"))
data$combin_dia18_m1___6.factor = factor(data$combin_dia18_m1___6,levels=c("0","1"))
data$cefalea_dia19_m1.factor = factor(data$cefalea_dia19_m1,levels=c("0","1"))
data$intensidad_dia19_m1.factor = factor(data$intensidad_dia19_m1,levels=c("0","1","2"))
data$horas_dia19_m1.factor = factor(data$horas_dia19_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia19_m1.factor = factor(data$analgesicos_dia19_m1,levels=c("0","1"))
data$aines_dia19_m1___0.factor = factor(data$aines_dia19_m1___0,levels=c("0","1"))
data$triptanes_dia19_m1___1.factor = factor(data$triptanes_dia19_m1___1,levels=c("0","1"))
data$simples_dia19_m1___2.factor = factor(data$simples_dia19_m1___2,levels=c("0","1"))
data$opioides_dia19_m1___3.factor = factor(data$opioides_dia19_m1___3,levels=c("0","1"))
data$ergo_dia19_m1___4.factor = factor(data$ergo_dia19_m1___4,levels=c("0","1"))
data$benzo_dia19_m1___5.factor = factor(data$benzo_dia19_m1___5,levels=c("0","1"))
data$combin_dia19_m1___6.factor = factor(data$combin_dia19_m1___6,levels=c("0","1"))
data$cefalea_dia20_m1.factor = factor(data$cefalea_dia20_m1,levels=c("0","1"))
data$intensidad_dia20_m1.factor = factor(data$intensidad_dia20_m1,levels=c("0","1","2"))
data$horas_dia20_m1.factor = factor(data$horas_dia20_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia20_m1.factor = factor(data$analgesicos_dia20_m1,levels=c("0","1"))
data$aines_dia20_m1___0.factor = factor(data$aines_dia20_m1___0,levels=c("0","1"))
data$triptanes_dia20_m1___1.factor = factor(data$triptanes_dia20_m1___1,levels=c("0","1"))
data$simples_dia20_m1___2.factor = factor(data$simples_dia20_m1___2,levels=c("0","1"))
data$opioides_dia20_m1___3.factor = factor(data$opioides_dia20_m1___3,levels=c("0","1"))
data$ergo_dia20_m1___4.factor = factor(data$ergo_dia20_m1___4,levels=c("0","1"))
data$benzo_dia20_m1___5.factor = factor(data$benzo_dia20_m1___5,levels=c("0","1"))
data$combin_dia20_m1___6.factor = factor(data$combin_dia20_m1___6,levels=c("0","1"))
data$cefalea_dia21_m1.factor = factor(data$cefalea_dia21_m1,levels=c("0","1"))
data$intensidad_dia21_m1.factor = factor(data$intensidad_dia21_m1,levels=c("0","1","2"))
data$horas_dia21_m1.factor = factor(data$horas_dia21_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia21_m1.factor = factor(data$analgesicos_dia21_m1,levels=c("0","1"))
data$aines_dia21_m1___0.factor = factor(data$aines_dia21_m1___0,levels=c("0","1"))
data$triptanes_dia21_m1___1.factor = factor(data$triptanes_dia21_m1___1,levels=c("0","1"))
data$simples_dia21_m1___2.factor = factor(data$simples_dia21_m1___2,levels=c("0","1"))
data$opioides_dia21_m1___3.factor = factor(data$opioides_dia21_m1___3,levels=c("0","1"))
data$ergo_dia21_m1___4.factor = factor(data$ergo_dia21_m1___4,levels=c("0","1"))
data$benzo_dia21_m1___5.factor = factor(data$benzo_dia21_m1___5,levels=c("0","1"))
data$combin_dia21_m1___6.factor = factor(data$combin_dia21_m1___6,levels=c("0","1"))
data$cefalea_dia22_m1.factor = factor(data$cefalea_dia22_m1,levels=c("0","1"))
data$intensidad_dia22_m1.factor = factor(data$intensidad_dia22_m1,levels=c("0","1","2"))
data$horas_dia22_m1.factor = factor(data$horas_dia22_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia22_m1.factor = factor(data$analgesicos_dia22_m1,levels=c("0","1"))
data$aines_dia22_m1___0.factor = factor(data$aines_dia22_m1___0,levels=c("0","1"))
data$triptanes_dia22_m1___1.factor = factor(data$triptanes_dia22_m1___1,levels=c("0","1"))
data$simples_dia22_m1___2.factor = factor(data$simples_dia22_m1___2,levels=c("0","1"))
data$opioides_dia22_m1___3.factor = factor(data$opioides_dia22_m1___3,levels=c("0","1"))
data$ergo_dia22_m1___4.factor = factor(data$ergo_dia22_m1___4,levels=c("0","1"))
data$benzo_dia22_m1___5.factor = factor(data$benzo_dia22_m1___5,levels=c("0","1"))
data$combin_dia22_m1___6.factor = factor(data$combin_dia22_m1___6,levels=c("0","1"))
data$cefalea_dia23_m1.factor = factor(data$cefalea_dia23_m1,levels=c("0","1"))
data$intensidad_dia23_m1.factor = factor(data$intensidad_dia23_m1,levels=c("0","1","2"))
data$horas_dia23_m1.factor = factor(data$horas_dia23_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia23_m1.factor = factor(data$analgesicos_dia23_m1,levels=c("0","1"))
data$aines_dia23_m1___0.factor = factor(data$aines_dia23_m1___0,levels=c("0","1"))
data$triptanes_dia23_m1___1.factor = factor(data$triptanes_dia23_m1___1,levels=c("0","1"))
data$simples_dia23_m1___2.factor = factor(data$simples_dia23_m1___2,levels=c("0","1"))
data$opioides_dia23_m1___3.factor = factor(data$opioides_dia23_m1___3,levels=c("0","1"))
data$ergo_dia23_m1___4.factor = factor(data$ergo_dia23_m1___4,levels=c("0","1"))
data$benzo_dia23_m1___5.factor = factor(data$benzo_dia23_m1___5,levels=c("0","1"))
data$combin_dia23_m1___6.factor = factor(data$combin_dia23_m1___6,levels=c("0","1"))
data$cefalea_dia24_m1.factor = factor(data$cefalea_dia24_m1,levels=c("0","1"))
data$intensidad_dia24_m1.factor = factor(data$intensidad_dia24_m1,levels=c("0","1","2"))
data$horas_dia24_m1.factor = factor(data$horas_dia24_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia24_m1.factor = factor(data$analgesicos_dia24_m1,levels=c("0","1"))
data$aines_dia24_m1___0.factor = factor(data$aines_dia24_m1___0,levels=c("0","1"))
data$triptanes_dia24_m1___1.factor = factor(data$triptanes_dia24_m1___1,levels=c("0","1"))
data$simples_dia24_m1___2.factor = factor(data$simples_dia24_m1___2,levels=c("0","1"))
data$opioides_dia24_m1___3.factor = factor(data$opioides_dia24_m1___3,levels=c("0","1"))
data$ergo_dia24_m1___4.factor = factor(data$ergo_dia24_m1___4,levels=c("0","1"))
data$benzo_dia24_m1___5.factor = factor(data$benzo_dia24_m1___5,levels=c("0","1"))
data$combin_dia24_m1___6.factor = factor(data$combin_dia24_m1___6,levels=c("0","1"))
data$cefalea_dia25_m1.factor = factor(data$cefalea_dia25_m1,levels=c("0","1"))
data$intensidad_dia25_m1.factor = factor(data$intensidad_dia25_m1,levels=c("0","1","2"))
data$horas_dia25_m1.factor = factor(data$horas_dia25_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia25_m1.factor = factor(data$analgesicos_dia25_m1,levels=c("0","1"))
data$aines_dia25_m1___0.factor = factor(data$aines_dia25_m1___0,levels=c("0","1"))
data$triptanes_dia25_m1___1.factor = factor(data$triptanes_dia25_m1___1,levels=c("0","1"))
data$simples_dia25_m1___2.factor = factor(data$simples_dia25_m1___2,levels=c("0","1"))
data$opioides_dia25_m1___3.factor = factor(data$opioides_dia25_m1___3,levels=c("0","1"))
data$ergo_dia25_m1___4.factor = factor(data$ergo_dia25_m1___4,levels=c("0","1"))
data$benzo_dia25_m1___5.factor = factor(data$benzo_dia25_m1___5,levels=c("0","1"))
data$combin_dia25_m1___6.factor = factor(data$combin_dia25_m1___6,levels=c("0","1"))
data$cefalea_dia26_m1.factor = factor(data$cefalea_dia26_m1,levels=c("0","1"))
data$intensidad_dia26_m1.factor = factor(data$intensidad_dia26_m1,levels=c("0","1","2"))
data$horas_dia26_m1.factor = factor(data$horas_dia26_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia26_m1.factor = factor(data$analgesicos_dia26_m1,levels=c("0","1"))
data$aines_dia26_m1___0.factor = factor(data$aines_dia26_m1___0,levels=c("0","1"))
data$triptanes_dia26_m1___1.factor = factor(data$triptanes_dia26_m1___1,levels=c("0","1"))
data$simples_dia26_m1___2.factor = factor(data$simples_dia26_m1___2,levels=c("0","1"))
data$opioides_dia26_m1___3.factor = factor(data$opioides_dia26_m1___3,levels=c("0","1"))
data$ergo_dia26_m1___4.factor = factor(data$ergo_dia26_m1___4,levels=c("0","1"))
data$benzo_dia26_m1___5.factor = factor(data$benzo_dia26_m1___5,levels=c("0","1"))
data$combin_dia26_m1___6.factor = factor(data$combin_dia26_m1___6,levels=c("0","1"))
data$cefalea_dia27_m1.factor = factor(data$cefalea_dia27_m1,levels=c("0","1"))
data$intensidad_dia27_m1.factor = factor(data$intensidad_dia27_m1,levels=c("0","1","2"))
data$horas_dia27_m1.factor = factor(data$horas_dia27_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia27_m1.factor = factor(data$analgesicos_dia27_m1,levels=c("0","1"))
data$aines_dia27_m1___0.factor = factor(data$aines_dia27_m1___0,levels=c("0","1"))
data$triptanes_dia27_m1___1.factor = factor(data$triptanes_dia27_m1___1,levels=c("0","1"))
data$simples_dia27_m1___2.factor = factor(data$simples_dia27_m1___2,levels=c("0","1"))
data$opioides_dia27_m1___3.factor = factor(data$opioides_dia27_m1___3,levels=c("0","1"))
data$ergo_dia27_m1___4.factor = factor(data$ergo_dia27_m1___4,levels=c("0","1"))
data$benzo_dia27_m1___5.factor = factor(data$benzo_dia27_m1___5,levels=c("0","1"))
data$combin_dia27_m1___6.factor = factor(data$combin_dia27_m1___6,levels=c("0","1"))
data$cefalea_dia28_m1.factor = factor(data$cefalea_dia28_m1,levels=c("0","1"))
data$intensidad_dia28_m1.factor = factor(data$intensidad_dia28_m1,levels=c("0","1","2"))
data$horas_dia28_m1.factor = factor(data$horas_dia28_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia28_m1.factor = factor(data$analgesicos_dia28_m1,levels=c("0","1"))
data$aines_dia28_m1___0.factor = factor(data$aines_dia28_m1___0,levels=c("0","1"))
data$triptanes_dia28_m1___1.factor = factor(data$triptanes_dia28_m1___1,levels=c("0","1"))
data$simples_dia28_m1___2.factor = factor(data$simples_dia28_m1___2,levels=c("0","1"))
data$opioides_dia28_m1___3.factor = factor(data$opioides_dia28_m1___3,levels=c("0","1"))
data$ergo_dia28_m1___4.factor = factor(data$ergo_dia28_m1___4,levels=c("0","1"))
data$benzo_dia28_m1___5.factor = factor(data$benzo_dia28_m1___5,levels=c("0","1"))
data$combin_dia28_m1___6.factor = factor(data$combin_dia28_m1___6,levels=c("0","1"))
data$cefalea_dia29_m1.factor = factor(data$cefalea_dia29_m1,levels=c("0","1"))
data$intensidad_dia29_m1.factor = factor(data$intensidad_dia29_m1,levels=c("0","1","2"))
data$horas_dia29_m1.factor = factor(data$horas_dia29_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia29_m1.factor = factor(data$analgesicos_dia29_m1,levels=c("0","1"))
data$aines_dia29_m1___0.factor = factor(data$aines_dia29_m1___0,levels=c("0","1"))
data$triptanes_dia29_m1___1.factor = factor(data$triptanes_dia29_m1___1,levels=c("0","1"))
data$simples_dia29_m1___2.factor = factor(data$simples_dia29_m1___2,levels=c("0","1"))
data$opioides_dia29_m1___3.factor = factor(data$opioides_dia29_m1___3,levels=c("0","1"))
data$ergo_dia29_m1___4.factor = factor(data$ergo_dia29_m1___4,levels=c("0","1"))
data$benzo_dia29_m1___5.factor = factor(data$benzo_dia29_m1___5,levels=c("0","1"))
data$combin_dia29_m1___6.factor = factor(data$combin_dia29_m1___6,levels=c("0","1"))
data$cefalea_dia30_m1.factor = factor(data$cefalea_dia30_m1,levels=c("0","1"))
data$intensidad_dia30_m1.factor = factor(data$intensidad_dia30_m1,levels=c("0","1","2"))
data$horas_dia30_m1.factor = factor(data$horas_dia30_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia30_m1.factor = factor(data$analgesicos_dia30_m1,levels=c("0","1"))
data$aines_dia30_m1___0.factor = factor(data$aines_dia30_m1___0,levels=c("0","1"))
data$triptanes_dia30_m1___1.factor = factor(data$triptanes_dia30_m1___1,levels=c("0","1"))
data$simples_dia30_m1___2.factor = factor(data$simples_dia30_m1___2,levels=c("0","1"))
data$opioides_dia30_m1___3.factor = factor(data$opioides_dia30_m1___3,levels=c("0","1"))
data$ergo_dia30_m1___4.factor = factor(data$ergo_dia30_m1___4,levels=c("0","1"))
data$benzo_dia30_m1___5.factor = factor(data$benzo_dia30_m1___5,levels=c("0","1"))
data$combin_dia30_m1___6.factor = factor(data$combin_dia30_m1___6,levels=c("0","1"))
data$cefalea_dia31_m1.factor = factor(data$cefalea_dia31_m1,levels=c("0","1"))
data$intensidad_dia31_m1.factor = factor(data$intensidad_dia31_m1,levels=c("0","1","2"))
data$horas_dia31_m1.factor = factor(data$horas_dia31_m1,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia31_m1.factor = factor(data$analgesicos_dia31_m1,levels=c("0","1"))
data$aines_dia31_m1___0.factor = factor(data$aines_dia31_m1___0,levels=c("0","1"))
data$triptanes_dia31_m1___1.factor = factor(data$triptanes_dia31_m1___1,levels=c("0","1"))
data$simples_dia31_m1___2.factor = factor(data$simples_dia31_m1___2,levels=c("0","1"))
data$opioides_dia31_m1___3.factor = factor(data$opioides_dia31_m1___3,levels=c("0","1"))
data$ergo_dia31_m1___4.factor = factor(data$ergo_dia31_m1___4,levels=c("0","1"))
data$benzo_dia31_m1___5.factor = factor(data$benzo_dia31_m1___5,levels=c("0","1"))
data$combin_dia31_m1___6.factor = factor(data$combin_dia31_m1___6,levels=c("0","1"))
data$enero_complete.factor = factor(data$enero_complete,levels=c("0","1","2"))
data$cefalea_dia1_m2.factor = factor(data$cefalea_dia1_m2,levels=c("0","1"))
data$intensidad_dia1_m2.factor = factor(data$intensidad_dia1_m2,levels=c("0","1","2"))
data$horas_dia1_m2.factor = factor(data$horas_dia1_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia1_m2.factor = factor(data$analgesicos_dia1_m2,levels=c("0","1"))
data$aines_dia1_m2___0.factor = factor(data$aines_dia1_m2___0,levels=c("0","1"))
data$triptanes_dia1_m2___1.factor = factor(data$triptanes_dia1_m2___1,levels=c("0","1"))
data$simples_dia1_m2___2.factor = factor(data$simples_dia1_m2___2,levels=c("0","1"))
data$opioides_dia1_m2___3.factor = factor(data$opioides_dia1_m2___3,levels=c("0","1"))
data$ergo_dia1_m2___4.factor = factor(data$ergo_dia1_m2___4,levels=c("0","1"))
data$benzo_dia1_m2___5.factor = factor(data$benzo_dia1_m2___5,levels=c("0","1"))
data$combin_dia1_m2___6.factor = factor(data$combin_dia1_m2___6,levels=c("0","1"))
data$cefalea_dia2_m2.factor = factor(data$cefalea_dia2_m2,levels=c("0","1"))
data$intensidad_dia2_m2.factor = factor(data$intensidad_dia2_m2,levels=c("0","1","2"))
data$horas_dia2_m2.factor = factor(data$horas_dia2_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia2_m2.factor = factor(data$analgesicos_dia2_m2,levels=c("0","1"))
data$aines_dia2_m2___0.factor = factor(data$aines_dia2_m2___0,levels=c("0","1"))
data$triptanes_dia2_m2___1.factor = factor(data$triptanes_dia2_m2___1,levels=c("0","1"))
data$simples_dia2_m2___2.factor = factor(data$simples_dia2_m2___2,levels=c("0","1"))
data$opioides_dia2_m2___3.factor = factor(data$opioides_dia2_m2___3,levels=c("0","1"))
data$ergo_dia2_m2___4.factor = factor(data$ergo_dia2_m2___4,levels=c("0","1"))
data$benzo_dia2_m2___5.factor = factor(data$benzo_dia2_m2___5,levels=c("0","1"))
data$combin_dia2_m2___6.factor = factor(data$combin_dia2_m2___6,levels=c("0","1"))
data$cefalea_dia3_m2.factor = factor(data$cefalea_dia3_m2,levels=c("0","1"))
data$intensidad_dia3_m2.factor = factor(data$intensidad_dia3_m2,levels=c("0","1","2"))
data$horas_dia3_m2.factor = factor(data$horas_dia3_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia3_m2.factor = factor(data$analgesicos_dia3_m2,levels=c("0","1"))
data$aines_dia3_m2___0.factor = factor(data$aines_dia3_m2___0,levels=c("0","1"))
data$triptanes_dia3_m2___1.factor = factor(data$triptanes_dia3_m2___1,levels=c("0","1"))
data$simples_dia3_m2___2.factor = factor(data$simples_dia3_m2___2,levels=c("0","1"))
data$opioides_dia3_m2___3.factor = factor(data$opioides_dia3_m2___3,levels=c("0","1"))
data$ergo_dia3_m2___4.factor = factor(data$ergo_dia3_m2___4,levels=c("0","1"))
data$benzo_dia3_m2___5.factor = factor(data$benzo_dia3_m2___5,levels=c("0","1"))
data$combin_dia3_m2___6.factor = factor(data$combin_dia3_m2___6,levels=c("0","1"))
data$cefalea_dia4_m2.factor = factor(data$cefalea_dia4_m2,levels=c("0","1"))
data$intensidad_dia4_m2.factor = factor(data$intensidad_dia4_m2,levels=c("0","1","2"))
data$horas_dia4_m2.factor = factor(data$horas_dia4_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia4_m2.factor = factor(data$analgesicos_dia4_m2,levels=c("0","1"))
data$aines_dia4_m2___0.factor = factor(data$aines_dia4_m2___0,levels=c("0","1"))
data$triptanes_dia4_m2___1.factor = factor(data$triptanes_dia4_m2___1,levels=c("0","1"))
data$simples_dia4_m2___2.factor = factor(data$simples_dia4_m2___2,levels=c("0","1"))
data$opioides_dia4_m2___3.factor = factor(data$opioides_dia4_m2___3,levels=c("0","1"))
data$ergo_dia4_m2___4.factor = factor(data$ergo_dia4_m2___4,levels=c("0","1"))
data$benzo_dia4_m2___5.factor = factor(data$benzo_dia4_m2___5,levels=c("0","1"))
data$combin_dia4_m2___6.factor = factor(data$combin_dia4_m2___6,levels=c("0","1"))
data$cefalea_dia5_m2.factor = factor(data$cefalea_dia5_m2,levels=c("0","1"))
data$intensidad_dia5_m2.factor = factor(data$intensidad_dia5_m2,levels=c("0","1","2"))
data$horas_dia5_m2.factor = factor(data$horas_dia5_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia5_m2.factor = factor(data$analgesicos_dia5_m2,levels=c("0","1"))
data$aines_dia5_m2___0.factor = factor(data$aines_dia5_m2___0,levels=c("0","1"))
data$triptanes_dia5_m2___1.factor = factor(data$triptanes_dia5_m2___1,levels=c("0","1"))
data$simples_dia5_m2___2.factor = factor(data$simples_dia5_m2___2,levels=c("0","1"))
data$opioides_dia5_m2___3.factor = factor(data$opioides_dia5_m2___3,levels=c("0","1"))
data$ergo_dia5_m2___4.factor = factor(data$ergo_dia5_m2___4,levels=c("0","1"))
data$benzo_dia5_m2___5.factor = factor(data$benzo_dia5_m2___5,levels=c("0","1"))
data$combin_dia5_m2___6.factor = factor(data$combin_dia5_m2___6,levels=c("0","1"))
data$cefalea_dia6_m2.factor = factor(data$cefalea_dia6_m2,levels=c("0","1"))
data$intensidad_dia6_m2.factor = factor(data$intensidad_dia6_m2,levels=c("0","1","2"))
data$horas_dia6_m2.factor = factor(data$horas_dia6_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia6_m2.factor = factor(data$analgesicos_dia6_m2,levels=c("0","1"))
data$aines_dia6_m2___0.factor = factor(data$aines_dia6_m2___0,levels=c("0","1"))
data$triptanes_dia6_m2___1.factor = factor(data$triptanes_dia6_m2___1,levels=c("0","1"))
data$simples_dia6_m2___2.factor = factor(data$simples_dia6_m2___2,levels=c("0","1"))
data$opioides_dia6_m2___3.factor = factor(data$opioides_dia6_m2___3,levels=c("0","1"))
data$ergo_dia6_m2___4.factor = factor(data$ergo_dia6_m2___4,levels=c("0","1"))
data$benzo_dia6_m2___5.factor = factor(data$benzo_dia6_m2___5,levels=c("0","1"))
data$combin_dia6_m2___6.factor = factor(data$combin_dia6_m2___6,levels=c("0","1"))
data$cefalea_dia7_m2.factor = factor(data$cefalea_dia7_m2,levels=c("0","1"))
data$intensidad_dia7_m2.factor = factor(data$intensidad_dia7_m2,levels=c("0","1","2"))
data$horas_dia7_m2.factor = factor(data$horas_dia7_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia7_m2.factor = factor(data$analgesicos_dia7_m2,levels=c("0","1"))
data$aines_dia7_m2___0.factor = factor(data$aines_dia7_m2___0,levels=c("0","1"))
data$triptanes_dia7_m2___1.factor = factor(data$triptanes_dia7_m2___1,levels=c("0","1"))
data$simples_dia7_m2___2.factor = factor(data$simples_dia7_m2___2,levels=c("0","1"))
data$opioides_dia7_m2___3.factor = factor(data$opioides_dia7_m2___3,levels=c("0","1"))
data$ergo_dia7_m2___4.factor = factor(data$ergo_dia7_m2___4,levels=c("0","1"))
data$benzo_dia7_m2___5.factor = factor(data$benzo_dia7_m2___5,levels=c("0","1"))
data$combin_dia7_m2___6.factor = factor(data$combin_dia7_m2___6,levels=c("0","1"))
data$cefalea_dia8_m2.factor = factor(data$cefalea_dia8_m2,levels=c("0","1"))
data$intensidad_dia8_m2.factor = factor(data$intensidad_dia8_m2,levels=c("0","1","2"))
data$horas_dia8_m2.factor = factor(data$horas_dia8_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia8_m2.factor = factor(data$analgesicos_dia8_m2,levels=c("0","1"))
data$aines_dia8_m2___0.factor = factor(data$aines_dia8_m2___0,levels=c("0","1"))
data$triptanes_dia8_m2___1.factor = factor(data$triptanes_dia8_m2___1,levels=c("0","1"))
data$simples_dia8_m2___2.factor = factor(data$simples_dia8_m2___2,levels=c("0","1"))
data$opioides_dia8_m2___3.factor = factor(data$opioides_dia8_m2___3,levels=c("0","1"))
data$ergo_dia8_m2___4.factor = factor(data$ergo_dia8_m2___4,levels=c("0","1"))
data$benzo_dia8_m2___5.factor = factor(data$benzo_dia8_m2___5,levels=c("0","1"))
data$combin_dia8_m2___6.factor = factor(data$combin_dia8_m2___6,levels=c("0","1"))
data$cefalea_dia9_m2.factor = factor(data$cefalea_dia9_m2,levels=c("0","1"))
data$intensidad_dia9_m2.factor = factor(data$intensidad_dia9_m2,levels=c("0","1","2"))
data$horas_dia9_m2.factor = factor(data$horas_dia9_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia9_m2.factor = factor(data$analgesicos_dia9_m2,levels=c("0","1"))
data$aines_dia9_m2___0.factor = factor(data$aines_dia9_m2___0,levels=c("0","1"))
data$triptanes_dia9_m2___1.factor = factor(data$triptanes_dia9_m2___1,levels=c("0","1"))
data$simples_dia9_m2___2.factor = factor(data$simples_dia9_m2___2,levels=c("0","1"))
data$opioides_dia9_m2___3.factor = factor(data$opioides_dia9_m2___3,levels=c("0","1"))
data$ergo_dia9_m2___4.factor = factor(data$ergo_dia9_m2___4,levels=c("0","1"))
data$benzo_dia9_m2___5.factor = factor(data$benzo_dia9_m2___5,levels=c("0","1"))
data$combin_dia9_m2___6.factor = factor(data$combin_dia9_m2___6,levels=c("0","1"))
data$cefalea_dia10_m2.factor = factor(data$cefalea_dia10_m2,levels=c("0","1"))
data$intensidad_dia10_m2.factor = factor(data$intensidad_dia10_m2,levels=c("0","1","2"))
data$horas_dia10_m2.factor = factor(data$horas_dia10_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia10_m2.factor = factor(data$analgesicos_dia10_m2,levels=c("0","1"))
data$aines_dia10_m2___0.factor = factor(data$aines_dia10_m2___0,levels=c("0","1"))
data$triptanes_dia10_m2___1.factor = factor(data$triptanes_dia10_m2___1,levels=c("0","1"))
data$simples_dia10_m2___2.factor = factor(data$simples_dia10_m2___2,levels=c("0","1"))
data$opioides_dia10_m2___3.factor = factor(data$opioides_dia10_m2___3,levels=c("0","1"))
data$ergo_dia10_m2___4.factor = factor(data$ergo_dia10_m2___4,levels=c("0","1"))
data$benzo_dia10_m2___5.factor = factor(data$benzo_dia10_m2___5,levels=c("0","1"))
data$combin_dia10_m2___6.factor = factor(data$combin_dia10_m2___6,levels=c("0","1"))
data$cefalea_dia11_m2.factor = factor(data$cefalea_dia11_m2,levels=c("0","1"))
data$intensidad_dia11_m2.factor = factor(data$intensidad_dia11_m2,levels=c("0","1","2"))
data$horas_dia11_m2.factor = factor(data$horas_dia11_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia11_m2.factor = factor(data$analgesicos_dia11_m2,levels=c("0","1"))
data$aines_dia11_m2___0.factor = factor(data$aines_dia11_m2___0,levels=c("0","1"))
data$triptanes_dia11_m2___1.factor = factor(data$triptanes_dia11_m2___1,levels=c("0","1"))
data$simples_dia11_m2___2.factor = factor(data$simples_dia11_m2___2,levels=c("0","1"))
data$opioides_dia11_m2___3.factor = factor(data$opioides_dia11_m2___3,levels=c("0","1"))
data$ergo_dia11_m2___4.factor = factor(data$ergo_dia11_m2___4,levels=c("0","1"))
data$benzo_dia11_m2___5.factor = factor(data$benzo_dia11_m2___5,levels=c("0","1"))
data$combin_dia11_m2___6.factor = factor(data$combin_dia11_m2___6,levels=c("0","1"))
data$cefalea_dia12_m2.factor = factor(data$cefalea_dia12_m2,levels=c("0","1"))
data$intensidad_dia12_m2.factor = factor(data$intensidad_dia12_m2,levels=c("0","1","2"))
data$horas_dia12_m2.factor = factor(data$horas_dia12_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia12_m2.factor = factor(data$analgesicos_dia12_m2,levels=c("0","1"))
data$aines_dia12_m2___0.factor = factor(data$aines_dia12_m2___0,levels=c("0","1"))
data$triptanes_dia12_m2___1.factor = factor(data$triptanes_dia12_m2___1,levels=c("0","1"))
data$simples_dia12_m2___2.factor = factor(data$simples_dia12_m2___2,levels=c("0","1"))
data$opioides_dia12_m2___3.factor = factor(data$opioides_dia12_m2___3,levels=c("0","1"))
data$ergo_dia12_m2___4.factor = factor(data$ergo_dia12_m2___4,levels=c("0","1"))
data$benzo_dia12_m2___5.factor = factor(data$benzo_dia12_m2___5,levels=c("0","1"))
data$combin_dia12_m2___6.factor = factor(data$combin_dia12_m2___6,levels=c("0","1"))
data$cefalea_dia13_m2.factor = factor(data$cefalea_dia13_m2,levels=c("0","1"))
data$intensidad_dia13_m2.factor = factor(data$intensidad_dia13_m2,levels=c("0","1","2"))
data$horas_dia13_m2.factor = factor(data$horas_dia13_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia13_m2.factor = factor(data$analgesicos_dia13_m2,levels=c("0","1"))
data$aines_dia13_m2___0.factor = factor(data$aines_dia13_m2___0,levels=c("0","1"))
data$triptanes_dia13_m2___1.factor = factor(data$triptanes_dia13_m2___1,levels=c("0","1"))
data$simples_dia13_m2___2.factor = factor(data$simples_dia13_m2___2,levels=c("0","1"))
data$opioides_dia13_m2___3.factor = factor(data$opioides_dia13_m2___3,levels=c("0","1"))
data$ergo_dia13_m2___4.factor = factor(data$ergo_dia13_m2___4,levels=c("0","1"))
data$benzo_dia13_m2___5.factor = factor(data$benzo_dia13_m2___5,levels=c("0","1"))
data$combin_dia13_m2___6.factor = factor(data$combin_dia13_m2___6,levels=c("0","1"))
data$cefalea_dia14_m2.factor = factor(data$cefalea_dia14_m2,levels=c("0","1"))
data$intensidad_dia14_m2.factor = factor(data$intensidad_dia14_m2,levels=c("0","1","2"))
data$horas_dia14_m2.factor = factor(data$horas_dia14_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia14_m2.factor = factor(data$analgesicos_dia14_m2,levels=c("0","1"))
data$aines_dia14_m2___0.factor = factor(data$aines_dia14_m2___0,levels=c("0","1"))
data$triptanes_dia14_m2___1.factor = factor(data$triptanes_dia14_m2___1,levels=c("0","1"))
data$simples_dia14_m2___2.factor = factor(data$simples_dia14_m2___2,levels=c("0","1"))
data$opioides_dia14_m2___3.factor = factor(data$opioides_dia14_m2___3,levels=c("0","1"))
data$ergo_dia14_m2___4.factor = factor(data$ergo_dia14_m2___4,levels=c("0","1"))
data$benzo_dia14_m2___5.factor = factor(data$benzo_dia14_m2___5,levels=c("0","1"))
data$combin_dia14_m2___6.factor = factor(data$combin_dia14_m2___6,levels=c("0","1"))
data$cefalea_dia15_m2.factor = factor(data$cefalea_dia15_m2,levels=c("0","1"))
data$intensidad_dia15_m2.factor = factor(data$intensidad_dia15_m2,levels=c("0","1","2"))
data$horas_dia15_m2.factor = factor(data$horas_dia15_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$aines_dia15_m2___0.factor = factor(data$aines_dia15_m2___0,levels=c("0","1"))
data$analgesicos_dia15_m2.factor = factor(data$analgesicos_dia15_m2,levels=c("0","1"))
data$triptanes_dia15_m2___1.factor = factor(data$triptanes_dia15_m2___1,levels=c("0","1"))
data$simples_dia15_m2___2.factor = factor(data$simples_dia15_m2___2,levels=c("0","1"))
data$opioides_dia15_m2___3.factor = factor(data$opioides_dia15_m2___3,levels=c("0","1"))
data$ergo_dia15_m2___4.factor = factor(data$ergo_dia15_m2___4,levels=c("0","1"))
data$benzo_dia15_m2___5.factor = factor(data$benzo_dia15_m2___5,levels=c("0","1"))
data$combin_dia15_m2___6.factor = factor(data$combin_dia15_m2___6,levels=c("0","1"))
data$cefalea_dia16_m2.factor = factor(data$cefalea_dia16_m2,levels=c("0","1"))
data$intensidad_dia16_m2.factor = factor(data$intensidad_dia16_m2,levels=c("0","1","2"))
data$horas_dia16_m2.factor = factor(data$horas_dia16_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia16_m2.factor = factor(data$analgesicos_dia16_m2,levels=c("0","1"))
data$aines_dia16_m2___0.factor = factor(data$aines_dia16_m2___0,levels=c("0","1"))
data$triptanes_dia16_m2___1.factor = factor(data$triptanes_dia16_m2___1,levels=c("0","1"))
data$simples_dia16_m2___2.factor = factor(data$simples_dia16_m2___2,levels=c("0","1"))
data$opioides_dia16_m2___3.factor = factor(data$opioides_dia16_m2___3,levels=c("0","1"))
data$ergo_dia16_m2___4.factor = factor(data$ergo_dia16_m2___4,levels=c("0","1"))
data$benzo_dia16_m2___5.factor = factor(data$benzo_dia16_m2___5,levels=c("0","1"))
data$combin_dia16_m2___6.factor = factor(data$combin_dia16_m2___6,levels=c("0","1"))
data$cefalea_dia17_m2.factor = factor(data$cefalea_dia17_m2,levels=c("0","1"))
data$intensidad_dia17_m2.factor = factor(data$intensidad_dia17_m2,levels=c("0","1","2"))
data$horas_dia17_m2.factor = factor(data$horas_dia17_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia17_m2.factor = factor(data$analgesicos_dia17_m2,levels=c("0","1"))
data$aines_dia17_m2___0.factor = factor(data$aines_dia17_m2___0,levels=c("0","1"))
data$triptanes_dia17_m2___1.factor = factor(data$triptanes_dia17_m2___1,levels=c("0","1"))
data$simples_dia17_m2___2.factor = factor(data$simples_dia17_m2___2,levels=c("0","1"))
data$opioides_dia17_m2___3.factor = factor(data$opioides_dia17_m2___3,levels=c("0","1"))
data$ergo_dia17_m2___4.factor = factor(data$ergo_dia17_m2___4,levels=c("0","1"))
data$benzo_dia17_m2___5.factor = factor(data$benzo_dia17_m2___5,levels=c("0","1"))
data$combin_dia17_m2___6.factor = factor(data$combin_dia17_m2___6,levels=c("0","1"))
data$cefalea_dia18_m2.factor = factor(data$cefalea_dia18_m2,levels=c("0","1"))
data$intensidad_dia18_m2.factor = factor(data$intensidad_dia18_m2,levels=c("0","1","2"))
data$horas_dia18_m2.factor = factor(data$horas_dia18_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia18_m2.factor = factor(data$analgesicos_dia18_m2,levels=c("0","1"))
data$aines_dia18_m2___0.factor = factor(data$aines_dia18_m2___0,levels=c("0","1"))
data$triptanes_dia18_m2___1.factor = factor(data$triptanes_dia18_m2___1,levels=c("0","1"))
data$simples_dia18_m2___2.factor = factor(data$simples_dia18_m2___2,levels=c("0","1"))
data$opioides_dia18_m2___3.factor = factor(data$opioides_dia18_m2___3,levels=c("0","1"))
data$ergo_dia18_m2___4.factor = factor(data$ergo_dia18_m2___4,levels=c("0","1"))
data$benzo_dia18_m2___5.factor = factor(data$benzo_dia18_m2___5,levels=c("0","1"))
data$combin_dia18_m2___6.factor = factor(data$combin_dia18_m2___6,levels=c("0","1"))
data$cefalea_dia19_m2.factor = factor(data$cefalea_dia19_m2,levels=c("0","1"))
data$intensidad_dia19_m2.factor = factor(data$intensidad_dia19_m2,levels=c("0","1","2"))
data$horas_dia19_m2.factor = factor(data$horas_dia19_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia19_m2.factor = factor(data$analgesicos_dia19_m2,levels=c("0","1"))
data$aines_dia19_m2___0.factor = factor(data$aines_dia19_m2___0,levels=c("0","1"))
data$triptanes_dia19_m2___1.factor = factor(data$triptanes_dia19_m2___1,levels=c("0","1"))
data$simples_dia19_m2___2.factor = factor(data$simples_dia19_m2___2,levels=c("0","1"))
data$opioides_dia19_m2___3.factor = factor(data$opioides_dia19_m2___3,levels=c("0","1"))
data$ergo_dia19_m2___4.factor = factor(data$ergo_dia19_m2___4,levels=c("0","1"))
data$benzo_dia19_m2___5.factor = factor(data$benzo_dia19_m2___5,levels=c("0","1"))
data$combin_dia19_m2___6.factor = factor(data$combin_dia19_m2___6,levels=c("0","1"))
data$cefalea_dia20_m2.factor = factor(data$cefalea_dia20_m2,levels=c("0","1"))
data$intensidad_dia20_m2.factor = factor(data$intensidad_dia20_m2,levels=c("0","1","2"))
data$horas_dia20_m2.factor = factor(data$horas_dia20_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia20_m2.factor = factor(data$analgesicos_dia20_m2,levels=c("0","1"))
data$aines_dia20_m2___0.factor = factor(data$aines_dia20_m2___0,levels=c("0","1"))
data$triptanes_dia20_m2___1.factor = factor(data$triptanes_dia20_m2___1,levels=c("0","1"))
data$simples_dia20_m2___2.factor = factor(data$simples_dia20_m2___2,levels=c("0","1"))
data$opioides_dia20_m2___3.factor = factor(data$opioides_dia20_m2___3,levels=c("0","1"))
data$ergo_dia20_m2___4.factor = factor(data$ergo_dia20_m2___4,levels=c("0","1"))
data$benzo_dia20_m2___5.factor = factor(data$benzo_dia20_m2___5,levels=c("0","1"))
data$combin_dia20_m2___6.factor = factor(data$combin_dia20_m2___6,levels=c("0","1"))
data$cefalea_dia21_m2.factor = factor(data$cefalea_dia21_m2,levels=c("0","1"))
data$intensidad_dia21_m2.factor = factor(data$intensidad_dia21_m2,levels=c("0","1","2"))
data$horas_dia21_m2.factor = factor(data$horas_dia21_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia21_m2.factor = factor(data$analgesicos_dia21_m2,levels=c("0","1"))
data$aines_dia21_m2___0.factor = factor(data$aines_dia21_m2___0,levels=c("0","1"))
data$triptanes_dia21_m2___1.factor = factor(data$triptanes_dia21_m2___1,levels=c("0","1"))
data$simples_dia21_m2___2.factor = factor(data$simples_dia21_m2___2,levels=c("0","1"))
data$opioides_dia21_m2___3.factor = factor(data$opioides_dia21_m2___3,levels=c("0","1"))
data$ergo_dia21_m2___4.factor = factor(data$ergo_dia21_m2___4,levels=c("0","1"))
data$benzo_dia21_m2___5.factor = factor(data$benzo_dia21_m2___5,levels=c("0","1"))
data$combin_dia21_m2___6.factor = factor(data$combin_dia21_m2___6,levels=c("0","1"))
data$cefalea_dia22_m2.factor = factor(data$cefalea_dia22_m2,levels=c("0","1"))
data$intensidad_dia22_m2.factor = factor(data$intensidad_dia22_m2,levels=c("0","1","2"))
data$horas_dia22_m2.factor = factor(data$horas_dia22_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia22_m2.factor = factor(data$analgesicos_dia22_m2,levels=c("0","1"))
data$aines_dia22_m2___0.factor = factor(data$aines_dia22_m2___0,levels=c("0","1"))
data$triptanes_dia22_m2___1.factor = factor(data$triptanes_dia22_m2___1,levels=c("0","1"))
data$simples_dia22_m2___2.factor = factor(data$simples_dia22_m2___2,levels=c("0","1"))
data$opioides_dia22_m2___3.factor = factor(data$opioides_dia22_m2___3,levels=c("0","1"))
data$ergo_dia22_m2___4.factor = factor(data$ergo_dia22_m2___4,levels=c("0","1"))
data$benzo_dia22_m2___5.factor = factor(data$benzo_dia22_m2___5,levels=c("0","1"))
data$combin_dia22_m2___6.factor = factor(data$combin_dia22_m2___6,levels=c("0","1"))
data$cefalea_dia23_m2.factor = factor(data$cefalea_dia23_m2,levels=c("0","1"))
data$intensidad_dia23_m2.factor = factor(data$intensidad_dia23_m2,levels=c("0","1","2"))
data$horas_dia23_m2.factor = factor(data$horas_dia23_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia23_m2.factor = factor(data$analgesicos_dia23_m2,levels=c("0","1"))
data$aines_dia23_m2___0.factor = factor(data$aines_dia23_m2___0,levels=c("0","1"))
data$triptanes_dia23_m2___1.factor = factor(data$triptanes_dia23_m2___1,levels=c("0","1"))
data$simples_dia23_m2___2.factor = factor(data$simples_dia23_m2___2,levels=c("0","1"))
data$opioides_dia23_m2___3.factor = factor(data$opioides_dia23_m2___3,levels=c("0","1"))
data$ergo_dia23_m2___4.factor = factor(data$ergo_dia23_m2___4,levels=c("0","1"))
data$benzo_dia23_m2___5.factor = factor(data$benzo_dia23_m2___5,levels=c("0","1"))
data$combin_dia23_m2___6.factor = factor(data$combin_dia23_m2___6,levels=c("0","1"))
data$cefalea_dia24_m2.factor = factor(data$cefalea_dia24_m2,levels=c("0","1"))
data$intensidad_dia24_m2.factor = factor(data$intensidad_dia24_m2,levels=c("0","1","2"))
data$horas_dia24_m2.factor = factor(data$horas_dia24_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia24_m2.factor = factor(data$analgesicos_dia24_m2,levels=c("0","1"))
data$aines_dia24_m2___0.factor = factor(data$aines_dia24_m2___0,levels=c("0","1"))
data$triptanes_dia24_m2___1.factor = factor(data$triptanes_dia24_m2___1,levels=c("0","1"))
data$simples_dia24_m2___2.factor = factor(data$simples_dia24_m2___2,levels=c("0","1"))
data$opioides_dia24_m2___3.factor = factor(data$opioides_dia24_m2___3,levels=c("0","1"))
data$ergo_dia24_m2___4.factor = factor(data$ergo_dia24_m2___4,levels=c("0","1"))
data$benzo_dia24_m2___5.factor = factor(data$benzo_dia24_m2___5,levels=c("0","1"))
data$combin_dia24_m2___6.factor = factor(data$combin_dia24_m2___6,levels=c("0","1"))
data$cefalea_dia25_m2.factor = factor(data$cefalea_dia25_m2,levels=c("0","1"))
data$intensidad_dia25_m2.factor = factor(data$intensidad_dia25_m2,levels=c("0","1","2"))
data$horas_dia25_m2.factor = factor(data$horas_dia25_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia25_m2.factor = factor(data$analgesicos_dia25_m2,levels=c("0","1"))
data$aines_dia25_m2___0.factor = factor(data$aines_dia25_m2___0,levels=c("0","1"))
data$triptanes_dia25_m2___1.factor = factor(data$triptanes_dia25_m2___1,levels=c("0","1"))
data$simples_dia25_m2___2.factor = factor(data$simples_dia25_m2___2,levels=c("0","1"))
data$opioides_dia25_m2___3.factor = factor(data$opioides_dia25_m2___3,levels=c("0","1"))
data$ergo_dia25_m2___4.factor = factor(data$ergo_dia25_m2___4,levels=c("0","1"))
data$benzo_dia25_m2___5.factor = factor(data$benzo_dia25_m2___5,levels=c("0","1"))
data$combin_dia25_m2___6.factor = factor(data$combin_dia25_m2___6,levels=c("0","1"))
data$cefalea_dia26_m2.factor = factor(data$cefalea_dia26_m2,levels=c("0","1"))
data$intensidad_dia26_m2.factor = factor(data$intensidad_dia26_m2,levels=c("0","1","2"))
data$horas_dia26_m2.factor = factor(data$horas_dia26_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia26_m2.factor = factor(data$analgesicos_dia26_m2,levels=c("0","1"))
data$aines_dia26_m2___0.factor = factor(data$aines_dia26_m2___0,levels=c("0","1"))
data$triptanes_dia26_m2___1.factor = factor(data$triptanes_dia26_m2___1,levels=c("0","1"))
data$simples_dia26_m2___2.factor = factor(data$simples_dia26_m2___2,levels=c("0","1"))
data$opioides_dia26_m2___3.factor = factor(data$opioides_dia26_m2___3,levels=c("0","1"))
data$ergo_dia26_m2___4.factor = factor(data$ergo_dia26_m2___4,levels=c("0","1"))
data$benzo_dia26_m2___5.factor = factor(data$benzo_dia26_m2___5,levels=c("0","1"))
data$combin_dia26_m2___6.factor = factor(data$combin_dia26_m2___6,levels=c("0","1"))
data$cefalea_dia27_m2.factor = factor(data$cefalea_dia27_m2,levels=c("0","1"))
data$intensidad_dia27_m2.factor = factor(data$intensidad_dia27_m2,levels=c("0","1","2"))
data$horas_dia27_m2.factor = factor(data$horas_dia27_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia27_m2.factor = factor(data$analgesicos_dia27_m2,levels=c("0","1"))
data$aines_dia27_m2___0.factor = factor(data$aines_dia27_m2___0,levels=c("0","1"))
data$triptanes_dia27_m2___1.factor = factor(data$triptanes_dia27_m2___1,levels=c("0","1"))
data$simples_dia27_m2___2.factor = factor(data$simples_dia27_m2___2,levels=c("0","1"))
data$opioides_dia27_m2___3.factor = factor(data$opioides_dia27_m2___3,levels=c("0","1"))
data$ergo_dia27_m2___4.factor = factor(data$ergo_dia27_m2___4,levels=c("0","1"))
data$benzo_dia27_m2___5.factor = factor(data$benzo_dia27_m2___5,levels=c("0","1"))
data$combin_dia27_m2___6.factor = factor(data$combin_dia27_m2___6,levels=c("0","1"))
data$cefalea_dia28_m2.factor = factor(data$cefalea_dia28_m2,levels=c("0","1"))
data$intensidad_dia28_m2.factor = factor(data$intensidad_dia28_m2,levels=c("0","1","2"))
data$horas_dia28_m2.factor = factor(data$horas_dia28_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia28_m2.factor = factor(data$analgesicos_dia28_m2,levels=c("0","1"))
data$aines_dia28_m2___0.factor = factor(data$aines_dia28_m2___0,levels=c("0","1"))
data$triptanes_dia28_m2___1.factor = factor(data$triptanes_dia28_m2___1,levels=c("0","1"))
data$simples_dia28_m2___2.factor = factor(data$simples_dia28_m2___2,levels=c("0","1"))
data$opioides_dia28_m2___3.factor = factor(data$opioides_dia28_m2___3,levels=c("0","1"))
data$ergo_dia28_m2___4.factor = factor(data$ergo_dia28_m2___4,levels=c("0","1"))
data$benzo_dia28_m2___5.factor = factor(data$benzo_dia28_m2___5,levels=c("0","1"))
data$combin_dia28_m2___6.factor = factor(data$combin_dia28_m2___6,levels=c("0","1"))
data$cefalea_dia29_m2.factor = factor(data$cefalea_dia29_m2,levels=c("0","1"))
data$intensidad_dia29_m2.factor = factor(data$intensidad_dia29_m2,levels=c("0","1","2"))
data$horas_dia29_m2.factor = factor(data$horas_dia29_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia29_m2.factor = factor(data$analgesicos_dia29_m2,levels=c("0","1"))
data$aines_dia29_m2___0.factor = factor(data$aines_dia29_m2___0,levels=c("0","1"))
data$triptanes_dia29_m2___1.factor = factor(data$triptanes_dia29_m2___1,levels=c("0","1"))
data$simples_dia29_m2___2.factor = factor(data$simples_dia29_m2___2,levels=c("0","1"))
data$opioides_dia29_m2___3.factor = factor(data$opioides_dia29_m2___3,levels=c("0","1"))
data$ergo_dia29_m2___4.factor = factor(data$ergo_dia29_m2___4,levels=c("0","1"))
data$benzo_dia29_m2___5.factor = factor(data$benzo_dia29_m2___5,levels=c("0","1"))
data$combin_dia29_m2___6.factor = factor(data$combin_dia29_m2___6,levels=c("0","1"))
data$cefalea_dia30_m2.factor = factor(data$cefalea_dia30_m2,levels=c("0","1"))
data$intensidad_dia30_m2.factor = factor(data$intensidad_dia30_m2,levels=c("0","1","2"))
data$horas_dia30_m2.factor = factor(data$horas_dia30_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia30_m2.factor = factor(data$analgesicos_dia30_m2,levels=c("0","1"))
data$aines_dia30_m2___0.factor = factor(data$aines_dia30_m2___0,levels=c("0","1"))
data$triptanes_dia30_m2___1.factor = factor(data$triptanes_dia30_m2___1,levels=c("0","1"))
data$simples_dia30_m2___2.factor = factor(data$simples_dia30_m2___2,levels=c("0","1"))
data$opioides_dia30_m2___3.factor = factor(data$opioides_dia30_m2___3,levels=c("0","1"))
data$ergo_dia30_m2___4.factor = factor(data$ergo_dia30_m2___4,levels=c("0","1"))
data$benzo_dia30_m2___5.factor = factor(data$benzo_dia30_m2___5,levels=c("0","1"))
data$combin_dia30_m2___6.factor = factor(data$combin_dia30_m2___6,levels=c("0","1"))
data$cefalea_dia31_m2.factor = factor(data$cefalea_dia31_m2,levels=c("0","1"))
data$intensidad_dia31_m2.factor = factor(data$intensidad_dia31_m2,levels=c("0","1","2"))
data$horas_dia31_m2.factor = factor(data$horas_dia31_m2,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia31_m2.factor = factor(data$analgesicos_dia31_m2,levels=c("0","1"))
data$aines_dia31_m2___0.factor = factor(data$aines_dia31_m2___0,levels=c("0","1"))
data$triptanes_dia31_m2___1.factor = factor(data$triptanes_dia31_m2___1,levels=c("0","1"))
data$simples_dia31_m2___2.factor = factor(data$simples_dia31_m2___2,levels=c("0","1"))
data$opioides_dia31_m2___3.factor = factor(data$opioides_dia31_m2___3,levels=c("0","1"))
data$ergo_dia31_m2___4.factor = factor(data$ergo_dia31_m2___4,levels=c("0","1"))
data$benzo_dia31_m2___5.factor = factor(data$benzo_dia31_m2___5,levels=c("0","1"))
data$combin_dia31_m2___6.factor = factor(data$combin_dia31_m2___6,levels=c("0","1"))
data$febrero_complete.factor = factor(data$febrero_complete,levels=c("0","1","2"))
data$cefalea_dia1_m12.factor = factor(data$cefalea_dia1_m12,levels=c("0","1"))
data$intensidad_dia1_m12.factor = factor(data$intensidad_dia1_m12,levels=c("0","1","2"))
data$horas_dia1_m12.factor = factor(data$horas_dia1_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia1_m12.factor = factor(data$analgesicos_dia1_m12,levels=c("0","1"))
data$aines_dia1_m12___0.factor = factor(data$aines_dia1_m12___0,levels=c("0","1"))
data$triptanes_dia1_m12___1.factor = factor(data$triptanes_dia1_m12___1,levels=c("0","1"))
data$simples_dia1_m12___2.factor = factor(data$simples_dia1_m12___2,levels=c("0","1"))
data$opioides_dia1_m12___3.factor = factor(data$opioides_dia1_m12___3,levels=c("0","1"))
data$ergo_dia1_m12___4.factor = factor(data$ergo_dia1_m12___4,levels=c("0","1"))
data$benzo_dia1_m12___5.factor = factor(data$benzo_dia1_m12___5,levels=c("0","1"))
data$combin_dia1_m12___6.factor = factor(data$combin_dia1_m12___6,levels=c("0","1"))
data$cefalea_dia2_m12.factor = factor(data$cefalea_dia2_m12,levels=c("0","1"))
data$intensidad_dia2_m12.factor = factor(data$intensidad_dia2_m12,levels=c("0","1","2"))
data$horas_dia2_m12.factor = factor(data$horas_dia2_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia2_m12.factor = factor(data$analgesicos_dia2_m12,levels=c("0","1"))
data$aines_dia2_m12___0.factor = factor(data$aines_dia2_m12___0,levels=c("0","1"))
data$triptanes_dia2_m12___1.factor = factor(data$triptanes_dia2_m12___1,levels=c("0","1"))
data$simples_dia2_m12___2.factor = factor(data$simples_dia2_m12___2,levels=c("0","1"))
data$opioides_dia2_m12___3.factor = factor(data$opioides_dia2_m12___3,levels=c("0","1"))
data$ergo_dia2_m12___4.factor = factor(data$ergo_dia2_m12___4,levels=c("0","1"))
data$benzo_dia2_m12___5.factor = factor(data$benzo_dia2_m12___5,levels=c("0","1"))
data$combin_dia2_m12___6.factor = factor(data$combin_dia2_m12___6,levels=c("0","1"))
data$cefalea_dia3_m12.factor = factor(data$cefalea_dia3_m12,levels=c("0","1"))
data$intensidad_dia3_m12.factor = factor(data$intensidad_dia3_m12,levels=c("0","1","2"))
data$horas_dia3_m12.factor = factor(data$horas_dia3_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia3_m12.factor = factor(data$analgesicos_dia3_m12,levels=c("0","1"))
data$aines_dia3_m12___0.factor = factor(data$aines_dia3_m12___0,levels=c("0","1"))
data$triptanes_dia3_m12___1.factor = factor(data$triptanes_dia3_m12___1,levels=c("0","1"))
data$simples_dia3_m12___2.factor = factor(data$simples_dia3_m12___2,levels=c("0","1"))
data$opioides_dia3_m12___3.factor = factor(data$opioides_dia3_m12___3,levels=c("0","1"))
data$ergo_dia3_m12___4.factor = factor(data$ergo_dia3_m12___4,levels=c("0","1"))
data$benzo_dia3_m12___5.factor = factor(data$benzo_dia3_m12___5,levels=c("0","1"))
data$combin_dia3_m12___6.factor = factor(data$combin_dia3_m12___6,levels=c("0","1"))
data$cefalea_dia4_m12.factor = factor(data$cefalea_dia4_m12,levels=c("0","1"))
data$intensidad_dia4_m12.factor = factor(data$intensidad_dia4_m12,levels=c("0","1","2"))
data$horas_dia4_m12.factor = factor(data$horas_dia4_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia4_m12.factor = factor(data$analgesicos_dia4_m12,levels=c("0","1"))
data$aines_dia4_m12___0.factor = factor(data$aines_dia4_m12___0,levels=c("0","1"))
data$triptanes_dia4_m12___1.factor = factor(data$triptanes_dia4_m12___1,levels=c("0","1"))
data$simples_dia4_m12___2.factor = factor(data$simples_dia4_m12___2,levels=c("0","1"))
data$opioides_dia4_m12___3.factor = factor(data$opioides_dia4_m12___3,levels=c("0","1"))
data$ergo_dia4_m12___4.factor = factor(data$ergo_dia4_m12___4,levels=c("0","1"))
data$benzo_dia4_m12___5.factor = factor(data$benzo_dia4_m12___5,levels=c("0","1"))
data$combin_dia4_m12___6.factor = factor(data$combin_dia4_m12___6,levels=c("0","1"))
data$cefalea_dia5_m12.factor = factor(data$cefalea_dia5_m12,levels=c("0","1"))
data$intensidad_dia5_m12.factor = factor(data$intensidad_dia5_m12,levels=c("0","1","2"))
data$horas_dia5_m12.factor = factor(data$horas_dia5_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia5_m12.factor = factor(data$analgesicos_dia5_m12,levels=c("0","1"))
data$aines_dia5_m12___0.factor = factor(data$aines_dia5_m12___0,levels=c("0","1"))
data$triptanes_dia5_m12___1.factor = factor(data$triptanes_dia5_m12___1,levels=c("0","1"))
data$simples_dia5_m12___2.factor = factor(data$simples_dia5_m12___2,levels=c("0","1"))
data$opioides_dia5_m12___3.factor = factor(data$opioides_dia5_m12___3,levels=c("0","1"))
data$ergo_dia5_m12___4.factor = factor(data$ergo_dia5_m12___4,levels=c("0","1"))
data$benzo_dia5_m12___5.factor = factor(data$benzo_dia5_m12___5,levels=c("0","1"))
data$combin_dia5_m12___6.factor = factor(data$combin_dia5_m12___6,levels=c("0","1"))
data$cefalea_dia6_m12.factor = factor(data$cefalea_dia6_m12,levels=c("0","1"))
data$intensidad_dia6_m12.factor = factor(data$intensidad_dia6_m12,levels=c("0","1","2"))
data$horas_dia6_m12.factor = factor(data$horas_dia6_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia6_m12.factor = factor(data$analgesicos_dia6_m12,levels=c("0","1"))
data$aines_dia6_m12___0.factor = factor(data$aines_dia6_m12___0,levels=c("0","1"))
data$triptanes_dia6_m12___1.factor = factor(data$triptanes_dia6_m12___1,levels=c("0","1"))
data$simples_dia6_m12___2.factor = factor(data$simples_dia6_m12___2,levels=c("0","1"))
data$opioides_dia6_m12___3.factor = factor(data$opioides_dia6_m12___3,levels=c("0","1"))
data$ergo_dia6_m12___4.factor = factor(data$ergo_dia6_m12___4,levels=c("0","1"))
data$benzo_dia6_m12___5.factor = factor(data$benzo_dia6_m12___5,levels=c("0","1"))
data$combin_dia6_m12___6.factor = factor(data$combin_dia6_m12___6,levels=c("0","1"))
data$cefalea_dia7_m12.factor = factor(data$cefalea_dia7_m12,levels=c("0","1"))
data$intensidad_dia7_m12.factor = factor(data$intensidad_dia7_m12,levels=c("0","1","2"))
data$horas_dia7_m12.factor = factor(data$horas_dia7_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia7_m12.factor = factor(data$analgesicos_dia7_m12,levels=c("0","1"))
data$aines_dia7_m12___0.factor = factor(data$aines_dia7_m12___0,levels=c("0","1"))
data$triptanes_dia7_m12___1.factor = factor(data$triptanes_dia7_m12___1,levels=c("0","1"))
data$simples_dia7_m12___2.factor = factor(data$simples_dia7_m12___2,levels=c("0","1"))
data$opioides_dia7_m12___3.factor = factor(data$opioides_dia7_m12___3,levels=c("0","1"))
data$ergo_dia7_m12___4.factor = factor(data$ergo_dia7_m12___4,levels=c("0","1"))
data$benzo_dia7_m12___5.factor = factor(data$benzo_dia7_m12___5,levels=c("0","1"))
data$combin_dia7_m12___6.factor = factor(data$combin_dia7_m12___6,levels=c("0","1"))
data$cefalea_dia8_m12.factor = factor(data$cefalea_dia8_m12,levels=c("0","1"))
data$intensidad_dia8_m12.factor = factor(data$intensidad_dia8_m12,levels=c("0","1","2"))
data$horas_dia8_m12.factor = factor(data$horas_dia8_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia8_m12.factor = factor(data$analgesicos_dia8_m12,levels=c("0","1"))
data$aines_dia8_m12___0.factor = factor(data$aines_dia8_m12___0,levels=c("0","1"))
data$triptanes_dia8_m12___1.factor = factor(data$triptanes_dia8_m12___1,levels=c("0","1"))
data$simples_dia8_m12___2.factor = factor(data$simples_dia8_m12___2,levels=c("0","1"))
data$opioides_dia8_m12___3.factor = factor(data$opioides_dia8_m12___3,levels=c("0","1"))
data$ergo_dia8_m12___4.factor = factor(data$ergo_dia8_m12___4,levels=c("0","1"))
data$benzo_dia8_m12___5.factor = factor(data$benzo_dia8_m12___5,levels=c("0","1"))
data$combin_dia8_m12___6.factor = factor(data$combin_dia8_m12___6,levels=c("0","1"))
data$cefalea_dia9_m12.factor = factor(data$cefalea_dia9_m12,levels=c("0","1"))
data$intensidad_dia9_m12.factor = factor(data$intensidad_dia9_m12,levels=c("0","1","2"))
data$horas_dia9_m12.factor = factor(data$horas_dia9_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia9_m12.factor = factor(data$analgesicos_dia9_m12,levels=c("0","1"))
data$aines_dia9_m12___0.factor = factor(data$aines_dia9_m12___0,levels=c("0","1"))
data$triptanes_dia9_m12___1.factor = factor(data$triptanes_dia9_m12___1,levels=c("0","1"))
data$simples_dia9_m12___2.factor = factor(data$simples_dia9_m12___2,levels=c("0","1"))
data$opioides_dia9_m12___3.factor = factor(data$opioides_dia9_m12___3,levels=c("0","1"))
data$ergo_dia9_m12___4.factor = factor(data$ergo_dia9_m12___4,levels=c("0","1"))
data$benzo_dia9_m12___5.factor = factor(data$benzo_dia9_m12___5,levels=c("0","1"))
data$combin_dia9_m12___6.factor = factor(data$combin_dia9_m12___6,levels=c("0","1"))
data$cefalea_dia10_m12.factor = factor(data$cefalea_dia10_m12,levels=c("0","1"))
data$intensidad_dia10_m12.factor = factor(data$intensidad_dia10_m12,levels=c("0","1","2"))
data$horas_dia10_m12.factor = factor(data$horas_dia10_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia10_m12.factor = factor(data$analgesicos_dia10_m12,levels=c("0","1"))
data$aines_dia10_m12___0.factor = factor(data$aines_dia10_m12___0,levels=c("0","1"))
data$triptanes_dia10_m12___1.factor = factor(data$triptanes_dia10_m12___1,levels=c("0","1"))
data$simples_dia10_m12___2.factor = factor(data$simples_dia10_m12___2,levels=c("0","1"))
data$opioides_dia10_m12___3.factor = factor(data$opioides_dia10_m12___3,levels=c("0","1"))
data$ergo_dia10_m12___4.factor = factor(data$ergo_dia10_m12___4,levels=c("0","1"))
data$benzo_dia10_m12___5.factor = factor(data$benzo_dia10_m12___5,levels=c("0","1"))
data$combin_dia10_m12___6.factor = factor(data$combin_dia10_m12___6,levels=c("0","1"))
data$cefalea_dia11_m12.factor = factor(data$cefalea_dia11_m12,levels=c("0","1"))
data$intensidad_dia11_m12.factor = factor(data$intensidad_dia11_m12,levels=c("0","1","2"))
data$horas_dia11_m12.factor = factor(data$horas_dia11_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia11_m12.factor = factor(data$analgesicos_dia11_m12,levels=c("0","1"))
data$aines_dia11_m12___0.factor = factor(data$aines_dia11_m12___0,levels=c("0","1"))
data$triptanes_dia11_m12___1.factor = factor(data$triptanes_dia11_m12___1,levels=c("0","1"))
data$simples_dia11_m12___2.factor = factor(data$simples_dia11_m12___2,levels=c("0","1"))
data$opioides_dia11_m12___3.factor = factor(data$opioides_dia11_m12___3,levels=c("0","1"))
data$ergo_dia11_m12___4.factor = factor(data$ergo_dia11_m12___4,levels=c("0","1"))
data$benzo_dia11_m12___5.factor = factor(data$benzo_dia11_m12___5,levels=c("0","1"))
data$combin_dia11_m12___6.factor = factor(data$combin_dia11_m12___6,levels=c("0","1"))
data$cefalea_dia12_m12.factor = factor(data$cefalea_dia12_m12,levels=c("0","1"))
data$intensidad_dia12_m12.factor = factor(data$intensidad_dia12_m12,levels=c("0","1","2"))
data$horas_dia12_m12.factor = factor(data$horas_dia12_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia12_m12.factor = factor(data$analgesicos_dia12_m12,levels=c("0","1"))
data$aines_dia12_m12___0.factor = factor(data$aines_dia12_m12___0,levels=c("0","1"))
data$triptanes_dia12_m12___1.factor = factor(data$triptanes_dia12_m12___1,levels=c("0","1"))
data$simples_dia12_m12___2.factor = factor(data$simples_dia12_m12___2,levels=c("0","1"))
data$opioides_dia12_m12___3.factor = factor(data$opioides_dia12_m12___3,levels=c("0","1"))
data$ergo_dia12_m12___4.factor = factor(data$ergo_dia12_m12___4,levels=c("0","1"))
data$benzo_dia12_m12___5.factor = factor(data$benzo_dia12_m12___5,levels=c("0","1"))
data$combin_dia12_m12___6.factor = factor(data$combin_dia12_m12___6,levels=c("0","1"))
data$cefalea_dia13_m12.factor = factor(data$cefalea_dia13_m12,levels=c("0","1"))
data$intensidad_dia13_m12.factor = factor(data$intensidad_dia13_m12,levels=c("0","1","2"))
data$horas_dia13_m12.factor = factor(data$horas_dia13_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia13_m12.factor = factor(data$analgesicos_dia13_m12,levels=c("0","1"))
data$aines_dia13_m12___0.factor = factor(data$aines_dia13_m12___0,levels=c("0","1"))
data$triptanes_dia13_m12___1.factor = factor(data$triptanes_dia13_m12___1,levels=c("0","1"))
data$simples_dia13_m12___2.factor = factor(data$simples_dia13_m12___2,levels=c("0","1"))
data$opioides_dia13_m12___3.factor = factor(data$opioides_dia13_m12___3,levels=c("0","1"))
data$ergo_dia13_m12___4.factor = factor(data$ergo_dia13_m12___4,levels=c("0","1"))
data$benzo_dia13_m12___5.factor = factor(data$benzo_dia13_m12___5,levels=c("0","1"))
data$combin_dia13_m12___6.factor = factor(data$combin_dia13_m12___6,levels=c("0","1"))
data$cefalea_dia14_m12.factor = factor(data$cefalea_dia14_m12,levels=c("0","1"))
data$intensidad_dia14_m12.factor = factor(data$intensidad_dia14_m12,levels=c("0","1","2"))
data$horas_dia14_m12.factor = factor(data$horas_dia14_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia14_m12.factor = factor(data$analgesicos_dia14_m12,levels=c("0","1"))
data$aines_dia14_m12___0.factor = factor(data$aines_dia14_m12___0,levels=c("0","1"))
data$triptanes_dia14_m12___1.factor = factor(data$triptanes_dia14_m12___1,levels=c("0","1"))
data$simples_dia14_m12___2.factor = factor(data$simples_dia14_m12___2,levels=c("0","1"))
data$opioides_dia14_m12___3.factor = factor(data$opioides_dia14_m12___3,levels=c("0","1"))
data$ergo_dia14_m12___4.factor = factor(data$ergo_dia14_m12___4,levels=c("0","1"))
data$benzo_dia14_m12___5.factor = factor(data$benzo_dia14_m12___5,levels=c("0","1"))
data$combin_dia14_m12___6.factor = factor(data$combin_dia14_m12___6,levels=c("0","1"))
data$cefalea_dia15_m12.factor = factor(data$cefalea_dia15_m12,levels=c("0","1"))
data$intensidad_dia15_m12.factor = factor(data$intensidad_dia15_m12,levels=c("0","1","2"))
data$horas_dia15_m12.factor = factor(data$horas_dia15_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$aines_dia15_m12___0.factor = factor(data$aines_dia15_m12___0,levels=c("0","1"))
data$analgesicos_dia15_m12.factor = factor(data$analgesicos_dia15_m12,levels=c("0","1"))
data$triptanes_dia15_m12___1.factor = factor(data$triptanes_dia15_m12___1,levels=c("0","1"))
data$simples_dia15_m12___2.factor = factor(data$simples_dia15_m12___2,levels=c("0","1"))
data$opioides_dia15_m12___3.factor = factor(data$opioides_dia15_m12___3,levels=c("0","1"))
data$ergo_dia15_m12___4.factor = factor(data$ergo_dia15_m12___4,levels=c("0","1"))
data$benzo_dia15_m12___5.factor = factor(data$benzo_dia15_m12___5,levels=c("0","1"))
data$combin_dia15_m12___6.factor = factor(data$combin_dia15_m12___6,levels=c("0","1"))
data$cefalea_dia16_m12.factor = factor(data$cefalea_dia16_m12,levels=c("0","1"))
data$intensidad_dia16_m12.factor = factor(data$intensidad_dia16_m12,levels=c("0","1","2"))
data$horas_dia16_m12.factor = factor(data$horas_dia16_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia16_m12.factor = factor(data$analgesicos_dia16_m12,levels=c("0","1"))
data$aines_dia16_m12___0.factor = factor(data$aines_dia16_m12___0,levels=c("0","1"))
data$triptanes_dia16_m12___1.factor = factor(data$triptanes_dia16_m12___1,levels=c("0","1"))
data$simples_dia16_m12___2.factor = factor(data$simples_dia16_m12___2,levels=c("0","1"))
data$opioides_dia16_m12___3.factor = factor(data$opioides_dia16_m12___3,levels=c("0","1"))
data$ergo_dia16_m12___4.factor = factor(data$ergo_dia16_m12___4,levels=c("0","1"))
data$benzo_dia16_m12___5.factor = factor(data$benzo_dia16_m12___5,levels=c("0","1"))
data$combin_dia16_m12___6.factor = factor(data$combin_dia16_m12___6,levels=c("0","1"))
data$cefalea_dia17_m12.factor = factor(data$cefalea_dia17_m12,levels=c("0","1"))
data$intensidad_dia17_m12.factor = factor(data$intensidad_dia17_m12,levels=c("0","1","2"))
data$analgesicos_dia17_m12.factor = factor(data$analgesicos_dia17_m12,levels=c("0","1"))
data$horas_dia17_m12.factor = factor(data$horas_dia17_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$aines_dia17_m12___0.factor = factor(data$aines_dia17_m12___0,levels=c("0","1"))
data$triptanes_dia17_m12___1.factor = factor(data$triptanes_dia17_m12___1,levels=c("0","1"))
data$simples_dia17_m12___2.factor = factor(data$simples_dia17_m12___2,levels=c("0","1"))
data$opioides_dia17_m12___3.factor = factor(data$opioides_dia17_m12___3,levels=c("0","1"))
data$ergo_dia17_m12___4.factor = factor(data$ergo_dia17_m12___4,levels=c("0","1"))
data$benzo_dia17_m12___5.factor = factor(data$benzo_dia17_m12___5,levels=c("0","1"))
data$combin_dia17_m12___6.factor = factor(data$combin_dia17_m12___6,levels=c("0","1"))
data$cefalea_dia18_m12.factor = factor(data$cefalea_dia18_m12,levels=c("0","1"))
data$intensidad_dia18_m12.factor = factor(data$intensidad_dia18_m12,levels=c("0","1","2"))
data$horas_dia18_m12.factor = factor(data$horas_dia18_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia18_m12.factor = factor(data$analgesicos_dia18_m12,levels=c("0","1"))
data$aines_dia18_m12___0.factor = factor(data$aines_dia18_m12___0,levels=c("0","1"))
data$triptanes_dia18_m12___1.factor = factor(data$triptanes_dia18_m12___1,levels=c("0","1"))
data$simples_dia18_m12___2.factor = factor(data$simples_dia18_m12___2,levels=c("0","1"))
data$ergo_dia18_m12___4.factor = factor(data$ergo_dia18_m12___4,levels=c("0","1"))
data$opioides_dia18_m12___3.factor = factor(data$opioides_dia18_m12___3,levels=c("0","1"))
data$benzo_dia18_m12___5.factor = factor(data$benzo_dia18_m12___5,levels=c("0","1"))
data$combin_dia18_m12___6.factor = factor(data$combin_dia18_m12___6,levels=c("0","1"))
data$cefalea_dia19_m12.factor = factor(data$cefalea_dia19_m12,levels=c("0","1"))
data$intensidad_dia19_m12.factor = factor(data$intensidad_dia19_m12,levels=c("0","1","2"))
data$horas_dia19_m12.factor = factor(data$horas_dia19_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia19_m12.factor = factor(data$analgesicos_dia19_m12,levels=c("0","1"))
data$aines_dia19_m12___0.factor = factor(data$aines_dia19_m12___0,levels=c("0","1"))
data$triptanes_dia19_m12___1.factor = factor(data$triptanes_dia19_m12___1,levels=c("0","1"))
data$simples_dia19_m12___2.factor = factor(data$simples_dia19_m12___2,levels=c("0","1"))
data$opioides_dia19_m12___3.factor = factor(data$opioides_dia19_m12___3,levels=c("0","1"))
data$ergo_dia19_m12___4.factor = factor(data$ergo_dia19_m12___4,levels=c("0","1"))
data$benzo_dia19_m12___5.factor = factor(data$benzo_dia19_m12___5,levels=c("0","1"))
data$combin_dia19_m12___6.factor = factor(data$combin_dia19_m12___6,levels=c("0","1"))
data$cefalea_dia20_m12.factor = factor(data$cefalea_dia20_m12,levels=c("0","1"))
data$intensidad_dia20_m12.factor = factor(data$intensidad_dia20_m12,levels=c("0","1","2"))
data$horas_dia20_m12.factor = factor(data$horas_dia20_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia20_m12.factor = factor(data$analgesicos_dia20_m12,levels=c("0","1"))
data$aines_dia20_m12___0.factor = factor(data$aines_dia20_m12___0,levels=c("0","1"))
data$triptanes_dia20_m12___1.factor = factor(data$triptanes_dia20_m12___1,levels=c("0","1"))
data$simples_dia20_m12___2.factor = factor(data$simples_dia20_m12___2,levels=c("0","1"))
data$opioides_dia20_m12___3.factor = factor(data$opioides_dia20_m12___3,levels=c("0","1"))
data$ergo_dia20_m12___4.factor = factor(data$ergo_dia20_m12___4,levels=c("0","1"))
data$benzo_dia20_m12___5.factor = factor(data$benzo_dia20_m12___5,levels=c("0","1"))
data$combin_dia20_m12___6.factor = factor(data$combin_dia20_m12___6,levels=c("0","1"))
data$cefalea_dia21_m12.factor = factor(data$cefalea_dia21_m12,levels=c("0","1"))
data$intensidad_dia21_m12.factor = factor(data$intensidad_dia21_m12,levels=c("0","1","2"))
data$horas_dia21_m12.factor = factor(data$horas_dia21_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia21_m12.factor = factor(data$analgesicos_dia21_m12,levels=c("0","1"))
data$aines_dia21_m12___0.factor = factor(data$aines_dia21_m12___0,levels=c("0","1"))
data$triptanes_dia21_m12___1.factor = factor(data$triptanes_dia21_m12___1,levels=c("0","1"))
data$simples_dia21_m12___2.factor = factor(data$simples_dia21_m12___2,levels=c("0","1"))
data$opioides_dia21_m12___3.factor = factor(data$opioides_dia21_m12___3,levels=c("0","1"))
data$ergo_dia21_m12___4.factor = factor(data$ergo_dia21_m12___4,levels=c("0","1"))
data$benzo_dia21_m12___5.factor = factor(data$benzo_dia21_m12___5,levels=c("0","1"))
data$combin_dia21_m12___6.factor = factor(data$combin_dia21_m12___6,levels=c("0","1"))
data$cefalea_dia22_m12.factor = factor(data$cefalea_dia22_m12,levels=c("0","1"))
data$intensidad_dia22_m12.factor = factor(data$intensidad_dia22_m12,levels=c("0","1","2"))
data$horas_dia22_m12.factor = factor(data$horas_dia22_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia22_m12.factor = factor(data$analgesicos_dia22_m12,levels=c("0","1"))
data$aines_dia22_m12___0.factor = factor(data$aines_dia22_m12___0,levels=c("0","1"))
data$triptanes_dia22_m12___1.factor = factor(data$triptanes_dia22_m12___1,levels=c("0","1"))
data$simples_dia22_m12___2.factor = factor(data$simples_dia22_m12___2,levels=c("0","1"))
data$opioides_dia22_m12___3.factor = factor(data$opioides_dia22_m12___3,levels=c("0","1"))
data$ergo_dia22_m12___4.factor = factor(data$ergo_dia22_m12___4,levels=c("0","1"))
data$benzo_dia22_m12___5.factor = factor(data$benzo_dia22_m12___5,levels=c("0","1"))
data$combin_dia22_m12___6.factor = factor(data$combin_dia22_m12___6,levels=c("0","1"))
data$cefalea_dia23_m12.factor = factor(data$cefalea_dia23_m12,levels=c("0","1"))
data$intensidad_dia23_m12.factor = factor(data$intensidad_dia23_m12,levels=c("0","1","2"))
data$horas_dia23_m12.factor = factor(data$horas_dia23_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia23_m12.factor = factor(data$analgesicos_dia23_m12,levels=c("0","1"))
data$aines_dia23_m12___0.factor = factor(data$aines_dia23_m12___0,levels=c("0","1"))
data$triptanes_dia23_m12___1.factor = factor(data$triptanes_dia23_m12___1,levels=c("0","1"))
data$simples_dia23_m12___2.factor = factor(data$simples_dia23_m12___2,levels=c("0","1"))
data$opioides_dia23_m12___3.factor = factor(data$opioides_dia23_m12___3,levels=c("0","1"))
data$ergo_dia23_m12___4.factor = factor(data$ergo_dia23_m12___4,levels=c("0","1"))
data$benzo_dia23_m12___5.factor = factor(data$benzo_dia23_m12___5,levels=c("0","1"))
data$combin_dia23_m12___6.factor = factor(data$combin_dia23_m12___6,levels=c("0","1"))
data$cefalea_dia24_m12.factor = factor(data$cefalea_dia24_m12,levels=c("0","1"))
data$intensidad_dia24_m12.factor = factor(data$intensidad_dia24_m12,levels=c("0","1","2"))
data$analgesicos_dia24_m12.factor = factor(data$analgesicos_dia24_m12,levels=c("0","1"))
data$horas_dia24_m12.factor = factor(data$horas_dia24_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$aines_dia24_m12___0.factor = factor(data$aines_dia24_m12___0,levels=c("0","1"))
data$triptanes_dia24_m12___1.factor = factor(data$triptanes_dia24_m12___1,levels=c("0","1"))
data$simples_dia24_m12___2.factor = factor(data$simples_dia24_m12___2,levels=c("0","1"))
data$opioides_dia24_m12___3.factor = factor(data$opioides_dia24_m12___3,levels=c("0","1"))
data$ergo_dia24_m12___4.factor = factor(data$ergo_dia24_m12___4,levels=c("0","1"))
data$benzo_dia24_m12___5.factor = factor(data$benzo_dia24_m12___5,levels=c("0","1"))
data$combin_dia24_m12___6.factor = factor(data$combin_dia24_m12___6,levels=c("0","1"))
data$cefalea_dia25_m12.factor = factor(data$cefalea_dia25_m12,levels=c("0","1"))
data$intensidad_dia25_m12.factor = factor(data$intensidad_dia25_m12,levels=c("0","1","2"))
data$horas_dia25_m12.factor = factor(data$horas_dia25_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia25_m12.factor = factor(data$analgesicos_dia25_m12,levels=c("0","1"))
data$aines_dia25_m12___0.factor = factor(data$aines_dia25_m12___0,levels=c("0","1"))
data$triptanes_dia25_m12___1.factor = factor(data$triptanes_dia25_m12___1,levels=c("0","1"))
data$simples_dia25_m12___2.factor = factor(data$simples_dia25_m12___2,levels=c("0","1"))
data$opioides_dia25_m12___3.factor = factor(data$opioides_dia25_m12___3,levels=c("0","1"))
data$ergo_dia25_m12___4.factor = factor(data$ergo_dia25_m12___4,levels=c("0","1"))
data$benzo_dia25_m12___5.factor = factor(data$benzo_dia25_m12___5,levels=c("0","1"))
data$combin_dia25_m12___6.factor = factor(data$combin_dia25_m12___6,levels=c("0","1"))
data$cefalea_dia26_m12.factor = factor(data$cefalea_dia26_m12,levels=c("0","1"))
data$intensidad_dia26_m12.factor = factor(data$intensidad_dia26_m12,levels=c("0","1","2"))
data$horas_dia26_m12.factor = factor(data$horas_dia26_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia26_m12.factor = factor(data$analgesicos_dia26_m12,levels=c("0","1"))
data$aines_dia26_m12___0.factor = factor(data$aines_dia26_m12___0,levels=c("0","1"))
data$triptanes_dia26_m12___1.factor = factor(data$triptanes_dia26_m12___1,levels=c("0","1"))
data$opioides_dia26_m12___3.factor = factor(data$opioides_dia26_m12___3,levels=c("0","1"))
data$simples_dia26_m12___2.factor = factor(data$simples_dia26_m12___2,levels=c("0","1"))
data$ergo_dia26_m12___4.factor = factor(data$ergo_dia26_m12___4,levels=c("0","1"))
data$benzo_dia26_m12___5.factor = factor(data$benzo_dia26_m12___5,levels=c("0","1"))
data$combin_dia26_m12___6.factor = factor(data$combin_dia26_m12___6,levels=c("0","1"))
data$cefalea_dia27_m12.factor = factor(data$cefalea_dia27_m12,levels=c("0","1"))
data$intensidad_dia27_m12.factor = factor(data$intensidad_dia27_m12,levels=c("0","1","2"))
data$horas_dia27_m12.factor = factor(data$horas_dia27_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia27_m12.factor = factor(data$analgesicos_dia27_m12,levels=c("0","1"))
data$aines_dia27_m12___0.factor = factor(data$aines_dia27_m12___0,levels=c("0","1"))
data$triptanes_dia27_m12___1.factor = factor(data$triptanes_dia27_m12___1,levels=c("0","1"))
data$simples_dia27_m12___2.factor = factor(data$simples_dia27_m12___2,levels=c("0","1"))
data$opioides_dia27_m12___3.factor = factor(data$opioides_dia27_m12___3,levels=c("0","1"))
data$ergo_dia27_m12___4.factor = factor(data$ergo_dia27_m12___4,levels=c("0","1"))
data$benzo_dia27_m12___5.factor = factor(data$benzo_dia27_m12___5,levels=c("0","1"))
data$combin_dia27_m12___6.factor = factor(data$combin_dia27_m12___6,levels=c("0","1"))
data$cefalea_dia28_m12.factor = factor(data$cefalea_dia28_m12,levels=c("0","1"))
data$intensidad_dia28_m12.factor = factor(data$intensidad_dia28_m12,levels=c("0","1","2"))
data$horas_dia28_m12.factor = factor(data$horas_dia28_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia28_m12.factor = factor(data$analgesicos_dia28_m12,levels=c("0","1"))
data$aines_dia28_m12___0.factor = factor(data$aines_dia28_m12___0,levels=c("0","1"))
data$triptanes_dia28_m12___1.factor = factor(data$triptanes_dia28_m12___1,levels=c("0","1"))
data$simples_dia28_m12___2.factor = factor(data$simples_dia28_m12___2,levels=c("0","1"))
data$opioides_dia28_m12___3.factor = factor(data$opioides_dia28_m12___3,levels=c("0","1"))
data$ergo_dia28_m12___4.factor = factor(data$ergo_dia28_m12___4,levels=c("0","1"))
data$benzo_dia28_m12___5.factor = factor(data$benzo_dia28_m12___5,levels=c("0","1"))
data$combin_dia28_m12___6.factor = factor(data$combin_dia28_m12___6,levels=c("0","1"))
data$cefalea_dia29_m12.factor = factor(data$cefalea_dia29_m12,levels=c("0","1"))
data$intensidad_dia29_m12.factor = factor(data$intensidad_dia29_m12,levels=c("0","1","2"))
data$horas_dia29_m12.factor = factor(data$horas_dia29_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia29_m12.factor = factor(data$analgesicos_dia29_m12,levels=c("0","1"))
data$aines_dia29_m12___0.factor = factor(data$aines_dia29_m12___0,levels=c("0","1"))
data$triptanes_dia29_m12___1.factor = factor(data$triptanes_dia29_m12___1,levels=c("0","1"))
data$simples_dia29_m12___2.factor = factor(data$simples_dia29_m12___2,levels=c("0","1"))
data$opioides_dia29_m12___3.factor = factor(data$opioides_dia29_m12___3,levels=c("0","1"))
data$ergo_dia29_m12___4.factor = factor(data$ergo_dia29_m12___4,levels=c("0","1"))
data$benzo_dia29_m12___5.factor = factor(data$benzo_dia29_m12___5,levels=c("0","1"))
data$combin_dia29_m12___6.factor = factor(data$combin_dia29_m12___6,levels=c("0","1"))
data$cefalea_dia30_m12.factor = factor(data$cefalea_dia30_m12,levels=c("0","1"))
data$intensidad_dia30_m12.factor = factor(data$intensidad_dia30_m12,levels=c("0","1","2"))
data$horas_dia30_m12.factor = factor(data$horas_dia30_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia30_m12.factor = factor(data$analgesicos_dia30_m12,levels=c("0","1"))
data$aines_dia30_m12___0.factor = factor(data$aines_dia30_m12___0,levels=c("0","1"))
data$triptanes_dia30_m12___1.factor = factor(data$triptanes_dia30_m12___1,levels=c("0","1"))
data$simples_dia30_m12___2.factor = factor(data$simples_dia30_m12___2,levels=c("0","1"))
data$opioides_dia30_m12___3.factor = factor(data$opioides_dia30_m12___3,levels=c("0","1"))
data$ergo_dia30_m12___4.factor = factor(data$ergo_dia30_m12___4,levels=c("0","1"))
data$benzo_dia30_m12___5.factor = factor(data$benzo_dia30_m12___5,levels=c("0","1"))
data$combin_dia30_m12___6.factor = factor(data$combin_dia30_m12___6,levels=c("0","1"))
data$cefalea_dia31_m12.factor = factor(data$cefalea_dia31_m12,levels=c("0","1"))
data$intensidad_dia31_m12.factor = factor(data$intensidad_dia31_m12,levels=c("0","1","2"))
data$horas_dia31_m12.factor = factor(data$horas_dia31_m12,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23"))
data$analgesicos_dia31_m12.factor = factor(data$analgesicos_dia31_m12,levels=c("0","1"))
data$aines_dia31_m12___0.factor = factor(data$aines_dia31_m12___0,levels=c("0","1"))
data$triptanes_dia31_m12___1.factor = factor(data$triptanes_dia31_m12___1,levels=c("0","1"))
data$simples_dia31_m12___2.factor = factor(data$simples_dia31_m12___2,levels=c("0","1"))
data$opioides_dia31_m12___3.factor = factor(data$opioides_dia31_m12___3,levels=c("0","1"))
data$ergo_dia31_m12___4.factor = factor(data$ergo_dia31_m12___4,levels=c("0","1"))
data$benzo_dia31_m12___5.factor = factor(data$benzo_dia31_m12___5,levels=c("0","1"))
data$combin_dia31_m12___6.factor = factor(data$combin_dia31_m12___6,levels=c("0","1"))
data$diciembre_complete.factor = factor(data$diciembre_complete,levels=c("0","1","2"))

levels(data$redcap_event_name.factor)=c("Basal","Follow-up")
levels(data$redcap_repeat_instrument.factor)=c("Analytical data")
levels(data$redcap_data_access_group.factor)=c("Garraf","HUB")
levels(data$gender.factor)=c("Male","Female")
levels(data$ethnicity.factor)=c("Ethnicity","Ethnicity")
levels(data$ethnicity_2.factor)=c("Ethnicity","Ethnicity")
levels(data$demographic_information_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$a.factor)=c("")
levels(data$a_9.factor)=c("")
levels(data$a_8.factor)=c("")
levels(data$a_7.factor)=c("")
levels(data$a_6.factor)=c("")
levels(data$a_5.factor)=c("")
levels(data$a_4.factor)=c("")
levels(data$a_3.factor)=c("")
levels(data$a_2.factor)=c("")
levels(data$inclusion_criteria_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$background_information_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$continua_tratamiento.factor)=c("No inicio","Inicio","Mantiene","Reinicio","Switch","Suspensión","Sigue sin tratamiento")
levels(data$analytical_data_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$followup_assessment_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$reinicio_motivo.factor)=c("Empeoramiento clínico","Finalización embarazo","Resolución de contraindicación","Otro {reinicio_motivo_otro}")
levels(data$switch_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {switch_motivo_otro}")
levels(data$suspension_motivo.factor)=c("Ineficacia","Mejoría clínica","Mala tolerancia","Embarazo","Otro {suspension_motivo_otro}")
levels(data$num_administracion_anti.factor)=c("V0","V3","V6","V9","V12","V15","V18","V21","V24","V27","V30","V33","V36","V39")
levels(data$efectos_adversos_anti.factor)=c("No","Sí")
levels(data$efectos_adversos_tipo_anti___0.factor)=c("Unchecked","Checked")
levels(data$efectos_adversos_tipo_anti___1.factor)=c("Unchecked","Checked")
levels(data$efectos_adversos_tipo_anti___2.factor)=c("Unchecked","Checked")
levels(data$efectos_adversos_tipo_anti___3.factor)=c("Unchecked","Checked")
levels(data$efectos_adversos_tipo_anti___4.factor)=c("Unchecked","Checked")
levels(data$efectos_adversos_tipo_anti___5.factor)=c("Unchecked","Checked")
levels(data$efectos_adversos_tipo_anti___6.factor)=c("Unchecked","Checked")
levels(data$efectos_adversos_tipo_anti___7.factor)=c("Unchecked","Checked")
levels(data$efectos_adversos_tipo_anti___8.factor)=c("Unchecked","Checked")
levels(data$efectos_adversos_tipo_anti___9.factor)=c("Unchecked","Checked")
levels(data$seguimiento_trat_oral_anti.factor)=c("No","Sí")
levels(data$anticgrp_tipo_anti.factor)=c("Erenumab","Galcanezumab","Fremanezumab","Eptinezumab")
levels(data$anticgrp_dosis_eren.factor)=c("70mg","140mg")
levels(data$anticgrp_dosis_fremanez.factor)=c("225mg mensual","675mg trimestral")
levels(data$tratamiento_previo.factor)=c("No","Sí")
levels(data$topiramato___1.factor)=c("Unchecked","Checked")
levels(data$topiramato_trat.factor)=c("No","Sí","Contraindicado")
levels(data$topiramato_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {topiramato_motivo_otro}")
levels(data$propranolol___1.factor)=c("Unchecked","Checked")
levels(data$propranolol_trat.factor)=c("No","Sí","Contraindicado")
levels(data$propranolol_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {propranolol_motivo_otro}")
levels(data$metoprolol___1.factor)=c("Unchecked","Checked")
levels(data$metoprolol_trat.factor)=c("No","Sí","Contraindicado")
levels(data$metoprolol_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {metoprolol_motivo_otro}")
levels(data$nadolol___1.factor)=c("Unchecked","Checked")
levels(data$nadolol_trat.factor)=c("No","Sí","Contraindicado")
levels(data$nadolol_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {nadolol_motivo_otro}")
levels(data$atenolol___1.factor)=c("Unchecked","Checked")
levels(data$atenolol_trat.factor)=c("No","Sí","Contraindicado")
levels(data$atenolol_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {atenolol_motivo_otro}")
levels(data$timolol___1.factor)=c("Unchecked","Checked")
levels(data$timolol_trat.factor)=c("No","Sí","Contraindicado")
levels(data$timolol_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {timolol_motivo_otro}")
levels(data$nevibolol___1.factor)=c("Unchecked","Checked")
levels(data$nevibolol_trat.factor)=c("No","Sí","Contraindicado")
levels(data$nevibolol_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {nevibolol_motivo_otro}")
levels(data$amitriptilina___1.factor)=c("Unchecked","Checked")
levels(data$amitriptilina_trat.factor)=c("No","Sí","Contraindicado")
levels(data$amitriptilina_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {amitriptilina_motivo_otro}")
levels(data$venlafaxina___1.factor)=c("Unchecked","Checked")
levels(data$venlafaxina_trat.factor)=c("No","Sí","Contraindicado")
levels(data$venlafaxina_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {venlafaxina_motivo_otro}")
levels(data$zonisamida___1.factor)=c("Unchecked","Checked")
levels(data$zonisamida_trat.factor)=c("No","Sí","Contraindicado")
levels(data$zonisamida_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {zonisamida_motivo_otro}")
levels(data$flunarizina___1.factor)=c("Unchecked","Checked")
levels(data$flunarizina_trat.factor)=c("No","Sí","Contraindicado")
levels(data$flunarizina_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {flunarizina_motivo_otro}")
levels(data$lisinopril___1.factor)=c("Unchecked","Checked")
levels(data$lisinopril_trat.factor)=c("No","Sí","Contraindicado")
levels(data$lisinopril_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {lisinopril_motivo_otro}")
levels(data$candesartan___1.factor)=c("Unchecked","Checked")
levels(data$candesartan_trat.factor)=c("No","Sí","Contraindicado")
levels(data$candesartan_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {candesartan_motivo_otro}")
levels(data$valproato___1.factor)=c("Unchecked","Checked")
levels(data$valproato_trat.factor)=c("No","Sí","Contraindicado")
levels(data$valproato_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {valproato_motivo_otro}")
levels(data$lamotrigina___1.factor)=c("Unchecked","Checked")
levels(data$lamotrigina_trat.factor)=c("No","Sí","Contraindicado")
levels(data$lamotrigina_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {lamotrigina_motivo_otro}")
levels(data$botox___1.factor)=c("Unchecked","Checked")
levels(data$botox_trat.factor)=c("No","Sí","Contraindicado")
levels(data$botox_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {botox_motivo_otro}")
levels(data$erenumab___1.factor)=c("Unchecked","Checked")
levels(data$erenumab_trat.factor)=c("No","Sí","Contraindicado")
levels(data$erenumab_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {erenumab_motivo_otro}")
levels(data$galcanezumab___1.factor)=c("Unchecked","Checked")
levels(data$galcanezumab_trat.factor)=c("No","Sí","Contraindicado")
levels(data$galcanezumab_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {galcanezumab_motivo_otro}")
levels(data$fremanezumab___1.factor)=c("Unchecked","Checked")
levels(data$fremanezumab_trat.factor)=c("No","Sí","Contraindicado")
levels(data$fremanezumab_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {fremanezumab_motivo_otro}")
levels(data$eptinezumab___1.factor)=c("Unchecked","Checked")
levels(data$eptinezumab_trat.factor)=c("No","Sí","Contraindicado")
levels(data$eptinezumab_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {eptinezumab_motivo_otro}")
levels(data$otro___1.factor)=c("Unchecked","Checked")
levels(data$otro_trat.factor)=c("No","Sí","Contraindicado")
levels(data$otro_motivo.factor)=c("Ineficacia","Mala tolerancia","Otro {otro_motivo_otro}")
levels(data$criterios_abuso_medicacion_anti.factor)=c("No","Sí")
levels(data$anticgrp_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cefalea_dia1_m1.factor)=c("No","Sí")
levels(data$intensidad_dia1_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia1_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia1_m1.factor)=c("No","Sí")
levels(data$aines_dia1_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia1_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia1_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia1_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia1_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia1_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia1_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia2_m1.factor)=c("No","Sí")
levels(data$intensidad_dia2_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia2_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia2_m1.factor)=c("No","Sí")
levels(data$aines_dia2_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia2_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia2_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia2_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia2_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia2_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia2_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia3_m1.factor)=c("No","Sí")
levels(data$intensidad_dia3_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia3_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia3_m1.factor)=c("No","Sí")
levels(data$aines_dia3_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia3_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia3_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia3_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia3_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia3_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia3_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia4_m1.factor)=c("No","Sí")
levels(data$intensidad_dia4_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia4_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia4_m1.factor)=c("No","Sí")
levels(data$aines_dia4_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia4_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia4_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia4_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia4_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia4_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia4_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia5_m1.factor)=c("No","Sí")
levels(data$intensidad_dia5_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia5_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia5_m1.factor)=c("No","Sí")
levels(data$aines_dia5_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia5_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia5_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia5_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia5_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia5_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia5_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia6_m1.factor)=c("No","Sí")
levels(data$intensidad_dia6_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia6_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia6_m1.factor)=c("No","Sí")
levels(data$aines_dia6_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia6_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia6_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia6_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia6_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia6_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia6_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia7_m1.factor)=c("No","Sí")
levels(data$intensidad_dia7_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia7_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia7_m1.factor)=c("No","Sí")
levels(data$aines_dia7_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia7_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia7_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia7_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia7_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia7_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia7_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia8_m1.factor)=c("No","Sí")
levels(data$intensidad_dia8_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia8_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia8_m1.factor)=c("No","Sí")
levels(data$aines_dia8_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia8_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia8_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia8_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia8_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia8_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia8_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia9_m1.factor)=c("No","Sí")
levels(data$intensidad_dia9_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia9_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia9_m1.factor)=c("No","Sí")
levels(data$aines_dia9_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia9_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia9_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia9_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia9_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia9_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia9_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia10_m1.factor)=c("No","Sí")
levels(data$intensidad_dia10_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia10_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia10_m1.factor)=c("No","Sí")
levels(data$aines_dia10_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia10_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia10_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia10_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia10_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia10_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia10_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia11_m1.factor)=c("No","Sí")
levels(data$intensidad_dia11_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia11_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia11_m1.factor)=c("No","Sí")
levels(data$aines_dia11_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia11_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia11_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia11_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia11_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia11_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia11_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia12_m1.factor)=c("No","Sí")
levels(data$intensidad_dia12_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia12_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia12_m1.factor)=c("No","Sí")
levels(data$aines_dia12_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia12_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia12_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia12_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia12_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia12_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia12_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia13_m1.factor)=c("No","Sí")
levels(data$intensidad_dia13_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia13_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia13_m1.factor)=c("No","Sí")
levels(data$aines_dia13_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia13_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia13_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia13_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia13_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia13_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia13_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia14_m1.factor)=c("No","Sí")
levels(data$intensidad_dia14_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia14_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia14_m1.factor)=c("No","Sí")
levels(data$aines_dia14_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia14_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia14_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia14_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia14_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia14_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia14_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia15_m1.factor)=c("No","Sí")
levels(data$intensidad_dia15_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia15_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$aines_dia15_m1___0.factor)=c("Unchecked","Checked")
levels(data$analgesicos_dia15_m1.factor)=c("No","Sí")
levels(data$triptanes_dia15_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia15_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia15_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia15_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia15_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia15_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia16_m1.factor)=c("No","Sí")
levels(data$intensidad_dia16_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia16_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia16_m1.factor)=c("No","Sí")
levels(data$aines_dia16_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia16_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia16_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia16_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia16_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia16_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia16_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia17_m1.factor)=c("No","Sí")
levels(data$intensidad_dia17_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia17_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia17_m1.factor)=c("No","Sí")
levels(data$aines_dia17_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia17_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia17_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia17_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia17_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia17_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia17_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia18_m1.factor)=c("No","Sí")
levels(data$intensidad_dia18_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia18_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia18_m1.factor)=c("No","Sí")
levels(data$aines_dia18_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia18_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia18_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia18_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia18_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia18_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia18_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia19_m1.factor)=c("No","Sí")
levels(data$intensidad_dia19_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia19_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia19_m1.factor)=c("No","Sí")
levels(data$aines_dia19_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia19_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia19_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia19_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia19_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia19_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia19_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia20_m1.factor)=c("No","Sí")
levels(data$intensidad_dia20_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia20_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia20_m1.factor)=c("No","Sí")
levels(data$aines_dia20_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia20_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia20_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia20_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia20_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia20_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia20_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia21_m1.factor)=c("No","Sí")
levels(data$intensidad_dia21_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia21_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia21_m1.factor)=c("No","Sí")
levels(data$aines_dia21_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia21_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia21_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia21_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia21_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia21_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia21_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia22_m1.factor)=c("No","Sí")
levels(data$intensidad_dia22_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia22_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia22_m1.factor)=c("No","Sí")
levels(data$aines_dia22_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia22_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia22_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia22_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia22_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia22_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia22_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia23_m1.factor)=c("No","Sí")
levels(data$intensidad_dia23_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia23_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia23_m1.factor)=c("No","Sí")
levels(data$aines_dia23_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia23_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia23_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia23_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia23_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia23_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia23_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia24_m1.factor)=c("No","Sí")
levels(data$intensidad_dia24_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia24_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia24_m1.factor)=c("No","Sí")
levels(data$aines_dia24_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia24_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia24_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia24_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia24_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia24_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia24_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia25_m1.factor)=c("No","Sí")
levels(data$intensidad_dia25_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia25_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia25_m1.factor)=c("No","Sí")
levels(data$aines_dia25_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia25_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia25_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia25_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia25_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia25_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia25_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia26_m1.factor)=c("No","Sí")
levels(data$intensidad_dia26_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia26_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia26_m1.factor)=c("No","Sí")
levels(data$aines_dia26_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia26_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia26_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia26_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia26_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia26_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia26_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia27_m1.factor)=c("No","Sí")
levels(data$intensidad_dia27_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia27_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia27_m1.factor)=c("No","Sí")
levels(data$aines_dia27_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia27_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia27_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia27_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia27_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia27_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia27_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia28_m1.factor)=c("No","Sí")
levels(data$intensidad_dia28_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia28_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia28_m1.factor)=c("No","Sí")
levels(data$aines_dia28_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia28_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia28_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia28_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia28_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia28_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia28_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia29_m1.factor)=c("No","Sí")
levels(data$intensidad_dia29_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia29_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia29_m1.factor)=c("No","Sí")
levels(data$aines_dia29_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia29_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia29_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia29_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia29_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia29_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia29_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia30_m1.factor)=c("No","Sí")
levels(data$intensidad_dia30_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia30_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia30_m1.factor)=c("No","Sí")
levels(data$aines_dia30_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia30_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia30_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia30_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia30_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia30_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia30_m1___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia31_m1.factor)=c("No","Sí")
levels(data$intensidad_dia31_m1.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia31_m1.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia31_m1.factor)=c("No","Sí")
levels(data$aines_dia31_m1___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia31_m1___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia31_m1___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia31_m1___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia31_m1___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia31_m1___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia31_m1___6.factor)=c("Unchecked","Checked")
levels(data$enero_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cefalea_dia1_m2.factor)=c("No","Sí")
levels(data$intensidad_dia1_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia1_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia1_m2.factor)=c("No","Sí")
levels(data$aines_dia1_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia1_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia1_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia1_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia1_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia1_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia1_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia2_m2.factor)=c("No","Sí")
levels(data$intensidad_dia2_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia2_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia2_m2.factor)=c("No","Sí")
levels(data$aines_dia2_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia2_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia2_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia2_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia2_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia2_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia2_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia3_m2.factor)=c("No","Sí")
levels(data$intensidad_dia3_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia3_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia3_m2.factor)=c("No","Sí")
levels(data$aines_dia3_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia3_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia3_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia3_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia3_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia3_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia3_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia4_m2.factor)=c("No","Sí")
levels(data$intensidad_dia4_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia4_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia4_m2.factor)=c("No","Sí")
levels(data$aines_dia4_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia4_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia4_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia4_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia4_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia4_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia4_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia5_m2.factor)=c("No","Sí")
levels(data$intensidad_dia5_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia5_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia5_m2.factor)=c("No","Sí")
levels(data$aines_dia5_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia5_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia5_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia5_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia5_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia5_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia5_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia6_m2.factor)=c("No","Sí")
levels(data$intensidad_dia6_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia6_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia6_m2.factor)=c("No","Sí")
levels(data$aines_dia6_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia6_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia6_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia6_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia6_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia6_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia6_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia7_m2.factor)=c("No","Sí")
levels(data$intensidad_dia7_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia7_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia7_m2.factor)=c("No","Sí")
levels(data$aines_dia7_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia7_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia7_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia7_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia7_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia7_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia7_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia8_m2.factor)=c("No","Sí")
levels(data$intensidad_dia8_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia8_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia8_m2.factor)=c("No","Sí")
levels(data$aines_dia8_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia8_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia8_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia8_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia8_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia8_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia8_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia9_m2.factor)=c("No","Sí")
levels(data$intensidad_dia9_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia9_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia9_m2.factor)=c("No","Sí")
levels(data$aines_dia9_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia9_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia9_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia9_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia9_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia9_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia9_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia10_m2.factor)=c("No","Sí")
levels(data$intensidad_dia10_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia10_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia10_m2.factor)=c("No","Sí")
levels(data$aines_dia10_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia10_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia10_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia10_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia10_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia10_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia10_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia11_m2.factor)=c("No","Sí")
levels(data$intensidad_dia11_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia11_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia11_m2.factor)=c("No","Sí")
levels(data$aines_dia11_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia11_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia11_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia11_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia11_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia11_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia11_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia12_m2.factor)=c("No","Sí")
levels(data$intensidad_dia12_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia12_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia12_m2.factor)=c("No","Sí")
levels(data$aines_dia12_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia12_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia12_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia12_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia12_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia12_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia12_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia13_m2.factor)=c("No","Sí")
levels(data$intensidad_dia13_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia13_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia13_m2.factor)=c("No","Sí")
levels(data$aines_dia13_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia13_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia13_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia13_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia13_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia13_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia13_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia14_m2.factor)=c("No","Sí")
levels(data$intensidad_dia14_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia14_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia14_m2.factor)=c("No","Sí")
levels(data$aines_dia14_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia14_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia14_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia14_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia14_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia14_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia14_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia15_m2.factor)=c("No","Sí")
levels(data$intensidad_dia15_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia15_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$aines_dia15_m2___0.factor)=c("Unchecked","Checked")
levels(data$analgesicos_dia15_m2.factor)=c("No","Sí")
levels(data$triptanes_dia15_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia15_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia15_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia15_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia15_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia15_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia16_m2.factor)=c("No","Sí")
levels(data$intensidad_dia16_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia16_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia16_m2.factor)=c("No","Sí")
levels(data$aines_dia16_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia16_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia16_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia16_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia16_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia16_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia16_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia17_m2.factor)=c("No","Sí")
levels(data$intensidad_dia17_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia17_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia17_m2.factor)=c("No","Sí")
levels(data$aines_dia17_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia17_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia17_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia17_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia17_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia17_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia17_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia18_m2.factor)=c("No","Sí")
levels(data$intensidad_dia18_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia18_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia18_m2.factor)=c("No","Sí")
levels(data$aines_dia18_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia18_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia18_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia18_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia18_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia18_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia18_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia19_m2.factor)=c("No","Sí")
levels(data$intensidad_dia19_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia19_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia19_m2.factor)=c("No","Sí")
levels(data$aines_dia19_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia19_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia19_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia19_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia19_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia19_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia19_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia20_m2.factor)=c("No","Sí")
levels(data$intensidad_dia20_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia20_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia20_m2.factor)=c("No","Sí")
levels(data$aines_dia20_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia20_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia20_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia20_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia20_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia20_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia20_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia21_m2.factor)=c("No","Sí")
levels(data$intensidad_dia21_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia21_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia21_m2.factor)=c("No","Sí")
levels(data$aines_dia21_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia21_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia21_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia21_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia21_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia21_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia21_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia22_m2.factor)=c("No","Sí")
levels(data$intensidad_dia22_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia22_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia22_m2.factor)=c("No","Sí")
levels(data$aines_dia22_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia22_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia22_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia22_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia22_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia22_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia22_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia23_m2.factor)=c("No","Sí")
levels(data$intensidad_dia23_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia23_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia23_m2.factor)=c("No","Sí")
levels(data$aines_dia23_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia23_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia23_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia23_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia23_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia23_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia23_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia24_m2.factor)=c("No","Sí")
levels(data$intensidad_dia24_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia24_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia24_m2.factor)=c("No","Sí")
levels(data$aines_dia24_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia24_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia24_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia24_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia24_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia24_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia24_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia25_m2.factor)=c("No","Sí")
levels(data$intensidad_dia25_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia25_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia25_m2.factor)=c("No","Sí")
levels(data$aines_dia25_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia25_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia25_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia25_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia25_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia25_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia25_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia26_m2.factor)=c("No","Sí")
levels(data$intensidad_dia26_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia26_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia26_m2.factor)=c("No","Sí")
levels(data$aines_dia26_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia26_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia26_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia26_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia26_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia26_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia26_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia27_m2.factor)=c("No","Sí")
levels(data$intensidad_dia27_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia27_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia27_m2.factor)=c("No","Sí")
levels(data$aines_dia27_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia27_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia27_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia27_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia27_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia27_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia27_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia28_m2.factor)=c("No","Sí")
levels(data$intensidad_dia28_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia28_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia28_m2.factor)=c("No","Sí")
levels(data$aines_dia28_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia28_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia28_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia28_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia28_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia28_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia28_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia29_m2.factor)=c("No","Sí")
levels(data$intensidad_dia29_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia29_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia29_m2.factor)=c("No","Sí")
levels(data$aines_dia29_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia29_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia29_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia29_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia29_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia29_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia29_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia30_m2.factor)=c("No","Sí")
levels(data$intensidad_dia30_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia30_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia30_m2.factor)=c("No","Sí")
levels(data$aines_dia30_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia30_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia30_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia30_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia30_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia30_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia30_m2___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia31_m2.factor)=c("No","Sí")
levels(data$intensidad_dia31_m2.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia31_m2.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia31_m2.factor)=c("No","Sí")
levels(data$aines_dia31_m2___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia31_m2___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia31_m2___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia31_m2___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia31_m2___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia31_m2___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia31_m2___6.factor)=c("Unchecked","Checked")
levels(data$febrero_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$cefalea_dia1_m12.factor)=c("No","Sí")
levels(data$intensidad_dia1_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia1_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia1_m12.factor)=c("No","Sí")
levels(data$aines_dia1_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia1_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia1_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia1_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia1_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia1_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia1_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia2_m12.factor)=c("No","Sí")
levels(data$intensidad_dia2_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia2_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia2_m12.factor)=c("No","Sí")
levels(data$aines_dia2_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia2_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia2_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia2_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia2_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia2_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia2_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia3_m12.factor)=c("No","Sí")
levels(data$intensidad_dia3_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia3_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia3_m12.factor)=c("No","Sí")
levels(data$aines_dia3_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia3_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia3_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia3_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia3_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia3_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia3_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia4_m12.factor)=c("No","Sí")
levels(data$intensidad_dia4_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia4_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia4_m12.factor)=c("No","Sí")
levels(data$aines_dia4_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia4_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia4_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia4_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia4_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia4_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia4_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia5_m12.factor)=c("No","Sí")
levels(data$intensidad_dia5_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia5_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia5_m12.factor)=c("No","Sí")
levels(data$aines_dia5_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia5_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia5_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia5_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia5_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia5_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia5_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia6_m12.factor)=c("No","Sí")
levels(data$intensidad_dia6_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia6_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia6_m12.factor)=c("No","Sí")
levels(data$aines_dia6_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia6_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia6_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia6_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia6_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia6_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia6_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia7_m12.factor)=c("No","Sí")
levels(data$intensidad_dia7_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia7_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia7_m12.factor)=c("No","Sí")
levels(data$aines_dia7_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia7_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia7_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia7_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia7_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia7_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia7_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia8_m12.factor)=c("No","Sí")
levels(data$intensidad_dia8_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia8_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia8_m12.factor)=c("No","Sí")
levels(data$aines_dia8_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia8_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia8_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia8_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia8_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia8_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia8_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia9_m12.factor)=c("No","Sí")
levels(data$intensidad_dia9_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia9_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia9_m12.factor)=c("No","Sí")
levels(data$aines_dia9_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia9_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia9_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia9_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia9_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia9_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia9_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia10_m12.factor)=c("No","Sí")
levels(data$intensidad_dia10_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia10_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia10_m12.factor)=c("No","Sí")
levels(data$aines_dia10_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia10_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia10_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia10_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia10_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia10_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia10_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia11_m12.factor)=c("No","Sí")
levels(data$intensidad_dia11_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia11_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia11_m12.factor)=c("No","Sí")
levels(data$aines_dia11_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia11_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia11_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia11_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia11_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia11_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia11_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia12_m12.factor)=c("No","Sí")
levels(data$intensidad_dia12_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia12_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia12_m12.factor)=c("No","Sí")
levels(data$aines_dia12_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia12_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia12_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia12_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia12_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia12_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia12_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia13_m12.factor)=c("No","Sí")
levels(data$intensidad_dia13_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia13_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia13_m12.factor)=c("No","Sí")
levels(data$aines_dia13_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia13_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia13_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia13_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia13_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia13_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia13_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia14_m12.factor)=c("No","Sí")
levels(data$intensidad_dia14_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia14_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia14_m12.factor)=c("No","Sí")
levels(data$aines_dia14_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia14_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia14_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia14_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia14_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia14_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia14_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia15_m12.factor)=c("No","Sí")
levels(data$intensidad_dia15_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia15_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$aines_dia15_m12___0.factor)=c("Unchecked","Checked")
levels(data$analgesicos_dia15_m12.factor)=c("No","Sí")
levels(data$triptanes_dia15_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia15_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia15_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia15_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia15_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia15_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia16_m12.factor)=c("No","Sí")
levels(data$intensidad_dia16_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia16_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia16_m12.factor)=c("No","Sí")
levels(data$aines_dia16_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia16_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia16_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia16_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia16_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia16_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia16_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia17_m12.factor)=c("No","Sí")
levels(data$intensidad_dia17_m12.factor)=c("Leve","Moderada","Severa")
levels(data$analgesicos_dia17_m12.factor)=c("No","Sí")
levels(data$horas_dia17_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$aines_dia17_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia17_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia17_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia17_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia17_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia17_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia17_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia18_m12.factor)=c("No","Sí")
levels(data$intensidad_dia18_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia18_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia18_m12.factor)=c("No","Sí")
levels(data$aines_dia18_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia18_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia18_m12___2.factor)=c("Unchecked","Checked")
levels(data$ergo_dia18_m12___4.factor)=c("Unchecked","Checked")
levels(data$opioides_dia18_m12___3.factor)=c("Unchecked","Checked")
levels(data$benzo_dia18_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia18_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia19_m12.factor)=c("No","Sí")
levels(data$intensidad_dia19_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia19_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia19_m12.factor)=c("No","Sí")
levels(data$aines_dia19_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia19_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia19_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia19_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia19_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia19_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia19_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia20_m12.factor)=c("No","Sí")
levels(data$intensidad_dia20_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia20_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia20_m12.factor)=c("No","Sí")
levels(data$aines_dia20_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia20_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia20_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia20_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia20_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia20_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia20_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia21_m12.factor)=c("No","Sí")
levels(data$intensidad_dia21_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia21_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia21_m12.factor)=c("No","Sí")
levels(data$aines_dia21_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia21_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia21_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia21_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia21_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia21_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia21_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia22_m12.factor)=c("No","Sí")
levels(data$intensidad_dia22_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia22_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia22_m12.factor)=c("No","Sí")
levels(data$aines_dia22_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia22_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia22_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia22_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia22_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia22_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia22_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia23_m12.factor)=c("No","Sí")
levels(data$intensidad_dia23_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia23_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia23_m12.factor)=c("No","Sí")
levels(data$aines_dia23_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia23_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia23_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia23_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia23_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia23_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia23_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia24_m12.factor)=c("No","Sí")
levels(data$intensidad_dia24_m12.factor)=c("Leve","Moderada","Severa")
levels(data$analgesicos_dia24_m12.factor)=c("No","Sí")
levels(data$horas_dia24_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$aines_dia24_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia24_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia24_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia24_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia24_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia24_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia24_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia25_m12.factor)=c("No","Sí")
levels(data$intensidad_dia25_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia25_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia25_m12.factor)=c("No","Sí")
levels(data$aines_dia25_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia25_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia25_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia25_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia25_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia25_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia25_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia26_m12.factor)=c("No","Sí")
levels(data$intensidad_dia26_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia26_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia26_m12.factor)=c("No","Sí")
levels(data$aines_dia26_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia26_m12___1.factor)=c("Unchecked","Checked")
levels(data$opioides_dia26_m12___3.factor)=c("Unchecked","Checked")
levels(data$simples_dia26_m12___2.factor)=c("Unchecked","Checked")
levels(data$ergo_dia26_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia26_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia26_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia27_m12.factor)=c("No","Sí")
levels(data$intensidad_dia27_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia27_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia27_m12.factor)=c("No","Sí")
levels(data$aines_dia27_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia27_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia27_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia27_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia27_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia27_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia27_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia28_m12.factor)=c("No","Sí")
levels(data$intensidad_dia28_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia28_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia28_m12.factor)=c("No","Sí")
levels(data$aines_dia28_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia28_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia28_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia28_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia28_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia28_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia28_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia29_m12.factor)=c("No","Sí")
levels(data$intensidad_dia29_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia29_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia29_m12.factor)=c("No","Sí")
levels(data$aines_dia29_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia29_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia29_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia29_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia29_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia29_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia29_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia30_m12.factor)=c("No","Sí")
levels(data$intensidad_dia30_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia30_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia30_m12.factor)=c("No","Sí")
levels(data$aines_dia30_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia30_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia30_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia30_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia30_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia30_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia30_m12___6.factor)=c("Unchecked","Checked")
levels(data$cefalea_dia31_m12.factor)=c("No","Sí")
levels(data$intensidad_dia31_m12.factor)=c("Leve","Moderada","Severa")
levels(data$horas_dia31_m12.factor)=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24")
levels(data$analgesicos_dia31_m12.factor)=c("No","Sí")
levels(data$aines_dia31_m12___0.factor)=c("Unchecked","Checked")
levels(data$triptanes_dia31_m12___1.factor)=c("Unchecked","Checked")
levels(data$simples_dia31_m12___2.factor)=c("Unchecked","Checked")
levels(data$opioides_dia31_m12___3.factor)=c("Unchecked","Checked")
levels(data$ergo_dia31_m12___4.factor)=c("Unchecked","Checked")
levels(data$benzo_dia31_m12___5.factor)=c("Unchecked","Checked")
levels(data$combin_dia31_m12___6.factor)=c("Unchecked","Checked")
levels(data$diciembre_complete.factor)=c("Incomplete","Unverified","Complete")
