Profile: OtherProceduresQuestionnaire
Parent: QuestionnaireResponse
Description: "Cuestionario utilizado para conocer otros procedimiento o no procedimientos realizados al paciente."

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item 0..5
* item contains otherCardiacProcedureDetails 0..1 and
        otherNonCardiacProcedureDetails 0..1 and
        aortaSegments 0..1 and
        aorticProcedures 0..1 and
        endoscopicVein 0..1

* item[otherCardiacProcedureDetails].linkId = "other_cardiac_procedure_details"
* item[otherCardiacProcedureDetails].answer 0..1
* item[otherCardiacProcedureDetails].answer.value[x] only Coding
* item[otherCardiacProcedureDetails].answer.value[x] from OtherCardiacProcedureDetailsVS

* item[otherNonCardiacProcedureDetails].linkId = "other_non_cardiac_procedure_details"
* item[otherNonCardiacProcedureDetails].answer 1..1
* item[otherNonCardiacProcedureDetails].answer.value[x] only Coding
* item[otherNonCardiacProcedureDetails].answer.value[x] from OtherNonCardiacProcedureDetailsVS

* item[aortaSegments].linkId = "aorta_segments"
* item[aortaSegments].answer 1..1
* item[aortaSegments].answer.value[x] only Coding
* item[aortaSegments].answer.value[x] from AortaSegmentsVS

* item[aorticProcedures].linkId = "aortic_procedures"
* item[aorticProcedures].answer 1..1
* item[aorticProcedures].answer.value[x] only Coding
* item[aorticProcedures].answer.value[x] from AorticProceduresVS

* item[endoscopicVein].linkId = "endoscopic_vein"
* item[endoscopicVein].answer 1..1
* item[endoscopicVein].answer.value[x] only boolean
