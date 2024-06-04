
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
                 PreviousIMObservation 0..1 

    
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
* entry[cirujano].resource only SurgeonPractitionerCardio
* entry[cirujano].resource ^short = "Se detallan los profesionales que realizarán la cirugía"

* entry[capacidadFuncional] ^short = "Capacidad funcional"
* entry[capacidadFuncional].resource only FunctionalCapacityObservation
* entry[capacidadFuncional].resource ^short = "Se detalla la capacidad funcional del paciente"

* entry[capacidadFuncional] ^short = "Historia cardiovascular del paciente"
* entry[capacidadFuncional].resource only PreviousIMObservation
* entry[capacidadFuncional].resource ^short = "Categorización del número de infartos al miocardio sufridos por el paciente previo a la inteversión"





