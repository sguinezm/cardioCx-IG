
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
                 paciente 1..1 and 
                 tipoSangre 1..1 and 
                 cirujano 1..1 and 
                 capacidadFuncional 1..1 and 
                 infarto 0..1 and 
                 infartoReciente 0..1 and 
                 insuficienciaCardíacaCongestiva 0..1 and 
                 angioplastiaPrevia 0..1 and 
                 cirugiasCardiacasPrevias 0..1 and 
                 fechaUltimaAngioplastia 0..1 and 
                 fechaUltimaCirugiaCardiaca 0..1 and 
                 cirugiasPrevias 0..1 and 
                 altura 0..1 and 
                 peso 0..1 and 
                 historialFumador 0..1 and 
                 tratamientoDiabetes 0..1 and 
                 hipertension 0..1 and 
                 hipercolesterolemia 0..1 and 
                 ruidoCarotideo 0..1 and 
                 disfuncionNeurologica 0..1 and 
                 ultimaCreatinina 0..1 and 
                 packsAnual 0..1 and 
                 enfermedadesPulmonares 0..1
    
* entry[cardioComposition] ^short = "Entrada en el Bundle: contendrá un recurso cardioComposition"
* entry[cardioComposition].resource only CompositionCardiocirugia
* entry[cardioComposition].resource ^short = "Descripcion DETALLADA , PRIMER RECURSO COMPOSITION"


* entry[paciente] ^short = "Paciente"
* entry[paciente].resource only PatientCardio
* entry[paciente].resource ^short = "Paciente"

* entry[tipoSangre] ^short = "Observación de tipo de sangre"
* entry[tipoSangre].resource only BloodTypeObservation
* entry[tipoSangre].resource ^short = "Se detalla el tipo de sangre del paciente"

/**
* entry[contactoPaciente] ^short = ""
* entry[contactoPaciente].resource only RelatedPerson
* entry[contactoPaciente].resource ^short = ""  **/

* entry[cirujano] ^short = "Profesionales"
* entry[cirujano].resource only PractitionerCardio
* entry[cirujano].resource ^short = "Se detallan los profesionales que realizarán la cirugía"

* entry[capacidadFuncional] ^short = "Capacidad funcional"
* entry[capacidadFuncional].resource only FunctionalCapacityObservation
* entry[capacidadFuncional].resource ^short = "Se detalla la capacidad funcional del paciente"

* entry[infarto] ^short = "Historia cardiovascular del paciente"
* entry[infarto].resource only PreviousIMObservation
* entry[infarto].resource ^short = "Categorización del número de infartos al miocardio sufridos por el paciente previo a la inteversión"

* entry[infartoReciente] ^short = "Historia cardiovascular reciente del paciente"
* entry[infartoReciente].resource only MostRecentIMObservation
* entry[infartoReciente].resource ^short = "Categorización del número de infartos al miocardio sufridos recientemente por el paciente previo a la inteversión"

* entry[insuficienciaCardíacaCongestiva] ^short = "insuficiencia cardíaca congestiva"
* entry[insuficienciaCardíacaCongestiva].resource only CongestiveHeartFailureCondition
* entry[insuficienciaCardíacaCongestiva].resource ^short = "Se indica si el paciente ha sufrido una insuficiencia cardíaca congestiva"


* entry[angioplastiaPrevia] ^short = "Angioplastía previa"
* entry[angioplastiaPrevia].resource only Questionnaire
* entry[angioplastiaPrevia].resource ^short = "Se indica si el paciente ha tenido una angioplastía previa"

* entry[cirugiasCardiacasPrevias] ^short = "Número de cirugias cardíacas previas"
* entry[cirugiasCardiacasPrevias].resource only Questionnaire
* entry[cirugiasCardiacasPrevias].resource ^short = "Se indica el número de cirugías cardíacas previas"

* entry[fechaUltimaAngioplastia] ^short = "Fecha de última angioplastía"
* entry[fechaUltimaAngioplastia].resource only Questionnaire
* entry[fechaUltimaAngioplastia].resource ^short = "Se indica la fecha de la última angioplastía"

* entry[fechaUltimaCirugiaCardiaca] ^short = "Fecha de última cirugia cardíaca"
* entry[fechaUltimaCirugiaCardiaca].resource only Questionnaire
* entry[fechaUltimaCirugiaCardiaca].resource ^short = "Se indica la fecha de la última cirugía cardíaca"

* entry[cirugiasPrevias] ^short = "última cirugía previa"
* entry[cirugiasPrevias].resource only Questionnaire
* entry[cirugiasPrevias].resource ^short = "Se indica si se ha realizado una cirugía previa"

* entry[altura] ^short = "Altura de la persona"
* entry[altura].resource only Observation
* entry[altura].resource ^short = "Se indica la altura de la persona"

* entry[peso] ^short = "Peso de la persona"
* entry[peso].resource only Observation
* entry[peso].resource ^short = "Se indica el peso de la persona"

* entry[historialFumador] ^short = "Historial fumador de la persona"
* entry[historialFumador].resource only SmokingObservation
* entry[historialFumador].resource ^short = "Se indica el historial fumador de la persona"

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

* entry[disfuncionNeurologica] ^short = "Disfunción Neurológica"
* entry[disfuncionNeurologica].resource only NeurologicDisfunctionCondition
* entry[disfuncionNeurologica].resource ^short = "Se indica si el paciente padece de alguna disfunción neurológica"

* entry[ultimaCreatinina] ^short = "Última creatinina"
* entry[ultimaCreatinina].resource only LastPreoperativeCreatinineObservation
* entry[ultimaCreatinina].resource ^short = "Se indica la última creatinina del paciente"

* entry[packsAnual] ^short = "Packs de cigarros al año"
* entry[packsAnual].resource only PacksPerYearObservation
* entry[packsAnual].resource ^short = "Se indican los packs de cigarros al año"

* entry[enfermedadesPulmonares] ^short = "Enfermedades pulmonares"
* entry[enfermedadesPulmonares].resource only ChronicLungDiseaseCondition
* entry[enfermedadesPulmonares].resource ^short = "Se indica si el paciente ha tenido alguna enfermedad pulmonar"