Alias: $observation-bodyheight = http://hl7.org/fhir/StructureDefinition/bodyheight
Alias: $observation-bodyweight = http://hl7.org/fhir/StructureDefinition/bodyweight
Profile: BundleCardio
Parent: Bundle
Id: BundleCardio
Title: "Bundle Cardio"
Description: "Recurso que permite compartir la información de cirugia compleja."

* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm].valueInteger = 0
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status].valueCode = #draft

* id MS
* id ^short = "Id propio del recurso"
* type MS
* type ^short = "Indica de qué tipo de bundle es."
* type = #document
* timestamp MS
* timestamp ^short = "Cuando el Bundle fue construido"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry 8..8 MS
* entry ^short = "Entrada en el Bundle: contendrá un recurso o información"
* entry contains cardioComposition 1..1 and 
                 paciente 1..1    and 
                 tipoSangre 1..1 and
                 altura 0..1 and 
                 peso 0..1 and 
                 tratamientoDiabetes 0..1 and 
                 hipertension 0..1 and 
                 hipercolesterolemia 0..1 and 
                 ruidoCarotideo 0..1 and 
                 ultimaCreatinina 0..1 and 
                 enfermedadesPulmonares 0..1 and 
                 ritmoCardiacoPreoperatorio 0..1 and 
                 condicionExtracardiaca 0..1 and 
                 nefropatia 0..1 and 
                 tipoMuerte 0..1 and
                 questionarioProcedimiento 0..1 and 
                 questionarioOtroProcedimiento 0..1 and 
                 rolProfesional 3..5 and 
                 procedimientoCardio 0..1 and 
                 angina 0..1 and 
                 capacidadFuncional 0..1 and 
                 infarto 0..1 and 
                 infartoReciente 0..1 and 
                 insuficienciaCardíacaCongestiva 0..1 and 
                 ultimaCateterizacion 0..1 and 
                 segmentosMuertos 0..1
                 /**
              
        
            
                 cirugiasCardiacasPrevias 0..1 and 
                 fechaUltimaAngioplastia 0..1 and 
                 fechaUltimaCirugiaCardiaca 0..1 and 
                 cirugiasPrevias 0..1 and 
                 historialFumador 0..1 and 
             
                 disfuncionNeurologica 0..1 and 
                  
                 packsAnual 0..1 and 
                
                */
    
* entry[cardioComposition] ^short = "Entrada en el Bundle: contendrá un recurso cardioComposition"
* entry[cardioComposition].resource only CompositionCardiocirugia
* entry[cardioComposition].resource ^short = "Descripcion DETALLADA , PRIMER RECURSO COMPOSITION"

* entry[paciente] ^short = "Paciente"
* entry[paciente].resource only PatientCardio
* entry[paciente].resource ^short = "Descripcion del Paciente"


* entry[tipoSangre] ^short = "Observación de tipo de sangre"
* entry[tipoSangre].resource only BloodTypeObservation
* entry[tipoSangre].resource ^short = "Se detalla el tipo de sangre del paciente"

* entry[altura] ^short = "Altura de la persona"
* entry[altura].resource only observation-bodyheight
* entry[altura].resource ^short = "Se indica la altura de la persona"


* entry[peso] ^short = "Peso de la persona"
* entry[peso].resource only observation-bodyweight
* entry[peso].resource ^short = "Se indica el peso de la persona"


* entry[tratamientoDiabetes] ^short = "Tratamiento de diabetes del paciente"
* entry[tratamientoDiabetes].resource only DiabetesCondition
* entry[tratamientoDiabetes].resource ^short = "Se indica el paciente tiene un tratamiento de pacientes"

* entry[hipertension] ^short = "Hipertensión"
* entry[hipertension].resource only HypertensionCondition
* entry[hipertension].resource ^short = "Se indica si el paciente padece de hipertensión"

* entry[hipercolesterolemia] ^short = "Hipercolesterolemia"
* entry[hipercolesterolemia].resource only HypercholesterolemiaCondition
* entry[hipercolesterolemia].resource ^short = "Se indica si el paciente padece de hipercolesterolemia"

* entry[ruidoCarotideo] ^short = "Ruido carotídeo"
* entry[ruidoCarotideo].resource only CarotidBruitCondition
* entry[ruidoCarotideo].resource ^short = "Se indica si el paciente tiene ruido carotídeo"

* entry[ultimaCreatinina] ^short = "Última creatinina"
* entry[ultimaCreatinina].resource only LastPreoperativeCreatinineObservation
* entry[ultimaCreatinina].resource ^short = "Se indica la última creatinina del paciente"

* entry[enfermedadesPulmonares] ^short = "Enfermedades pulmonares"
* entry[enfermedadesPulmonares].resource only ChronicLungDiseaseCondition
* entry[enfermedadesPulmonares].resource ^short = "Se indica si el paciente ha tenido alguna enfermedad pulmonar"

* entry[ritmoCardiacoPreoperatorio] ^short = "Ritmo cardíaco preoperatorio"
* entry[ritmoCardiacoPreoperatorio].resource only PreoperativeHeartRythmObservation
* entry[ritmoCardiacoPreoperatorio].resource ^short = "Se indica el ritmo cardíaco preoperatorio del paciente"

* entry[condicionExtracardiaca] ^short = "Condición extracardíaca"
* entry[condicionExtracardiaca].resource only ExtraCardiacArteriopathyCondition
* entry[condicionExtracardiaca].resource ^short = "Se indica si el paciente tiene una condición extracardíaca"

* entry[nefropatia] ^short = "Nefropatía"
* entry[nefropatia].resource only NephropathyCondition
* entry[nefropatia].resource ^short = "Se indica si el paciente padece de nefropatía" 


* entry[tipoMuerte] ^short = "Tipo de muerte"
* entry[tipoMuerte].resource only TypeOfDiseaseCondition
* entry[tipoMuerte].resource ^short = "Se indica el tipo de muerte"  

* entry[questionarioProcedimiento] ^short = "Preguntas del procedimiento"
* entry[questionarioProcedimiento].resource only ProcedureQuestionnaire
* entry[questionarioProcedimiento].resource ^short = "Se realizan preguntas del procedimiento al paciente"  

* entry[questionarioOtroProcedimiento] ^short = "Preguntas de otros procedimientos"
* entry[questionarioOtroProcedimiento].resource only OtherProceduresQuestionnaire
* entry[questionarioOtroProcedimiento].resource ^short = "Se realizan preguntas del procedimiento al paciente" 

* entry[rolProfesional] ^short = "Rol de profesional"
* entry[rolProfesional].resource only PractitionerRoleCardio
* entry[rolProfesional].resource ^short = "Se indica el Rol de profesional" 

* entry[procedimientoCardio] ^short = "Procedimiento cardio"
* entry[procedimientoCardio].resource only ProcedureCardio
* entry[procedimientoCardio].resource ^short = "Se indica el Procedimiento cardio" 

 
* entry[angina] ^short = "Angina"
* entry[angina].resource only AnginaObservation
* entry[angina].resource ^short = "Se indica la observación de angina en el paciente"   

* entry[capacidadFuncional] ^short = "Capacidad funcional"
* entry[capacidadFuncional].resource only FunctionalCapacityObservation
* entry[capacidadFuncional].resource ^short = "Se detalla la capacidad funcional del paciente"

* entry[infarto] ^short = "Historia cardiovascular del paciente"
* entry[infarto].resource only PreviousMIObservation
* entry[infarto].resource ^short = "Categorización del número de infartos al miocardio sufridos por el paciente previo a la inteversión"

* entry[infartoReciente] ^short = "Historia cardiovascular reciente del paciente"
* entry[infartoReciente].resource only MostRecentMIObservation
* entry[infartoReciente].resource ^short = "Categorización del número de infartos al miocardio sufridos recientemente por el paciente previo a la inteversión"

* entry[insuficienciaCardíacaCongestiva] ^short = "insuficiencia cardíaca congestiva"
* entry[insuficienciaCardíacaCongestiva].resource only CongestiveHeartFailureObservation
* entry[insuficienciaCardíacaCongestiva].resource ^short = "Se indica si el paciente ha sufrido una insuficiencia cardíaca congestiva"


* entry[ultimaCateterizacion] ^short = "ultima Cateterizacion"
* entry[ultimaCateterizacion].resource only LastCatheterizationObservation
* entry[ultimaCateterizacion].resource ^short = "ultima Cateterizacion"  


* entry[segmentosMuertos] ^short = "Segmentos coronarios muertos"
* entry[segmentosMuertos].resource only DiseasedCoronarySegmentObservation
* entry[segmentosMuertos].resource ^short = "Se indica si tuvo segmentos coronarios muertos"  








/*
* entry[cirujano] ^short = "Profesionales"
* entry[cirujano].resource only PractitionerCardio
* entry[cirujano].resource ^short = "Se detallan los profesionales que realizarán la cirugía"








* entry[historialFumador] ^short = "Historial fumador de la persona"
* entry[historialFumador].resource only SmokingCondition
* entry[historialFumador].resource ^short = "Se indica el historial fumador de la persona"

* entry[disfuncionNeurologica] ^short = "Disfunción Neurológica"
* entry[disfuncionNeurologica].resource only NeurologicDisfunctionCondition
* entry[disfuncionNeurologica].resource ^short = "Se indica si el paciente padece de alguna disfunción neurológica"


* entry[packsAnual] ^short = "Packs de cigarros al año"
* entry[packsAnual].resource only PacksPerYearObservation
* entry[packsAnual].resource ^short = "Se indican los packs de cigarros al año"


  

 
 



*/