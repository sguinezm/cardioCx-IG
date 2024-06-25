Profile: OtherProceduresQuestionnaire
Parent: QuestionnaireResponse
Description: "Cuestionario utilizado para conocer otros procedimiento o no procedimientos realizados al paciente."

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item 0..33
* item contains otherCardiacProcedureDetails 0..13 and
        otherNonCardiacProcedureDetails 1..4 and
        aortaSegments 0..5 and
        aorticProcedures 0..10 and
        endoscopicVein 0..1

* item[otherCardiacProcedureDetails].linkId = "other_cardiac_procedure_details"
* item[otherCardiacProcedureDetails].answer 0..13
* item[otherCardiacProcedureDetails].answer.value[x] only Coding
* item[otherCardiacProcedureDetails].answer.value[x] from OtherCardiacProcedureDetailsVS

* item[otherNonCardiacProcedureDetails].linkId = "other_non_cardiac_procedure_details"
* item[otherNonCardiacProcedureDetails].answer 1..4
* item[otherNonCardiacProcedureDetails].answer.value[x] only Coding
* item[otherNonCardiacProcedureDetails].answer.value[x] from OtherNonCardiacProcedureDetailsVS

* item[aortaSegments].linkId = "aorta_segments"
* item[aortaSegments].answer 0..5
* item[aortaSegments].answer.value[x] only Coding
* item[aortaSegments].answer.value[x] from AortaSegmentsVS

* item[aorticProcedures].linkId = "aortic_procedures"
* item[aorticProcedures].answer 0..10
* item[aorticProcedures].answer.value[x] only Coding
* item[aorticProcedures].answer.value[x] from AorticProceduresVS

* item[endoscopicVein].linkId = "endoscopic_vein"
* item[endoscopicVein].answer 0..1
* item[endoscopicVein].answer.value[x] only boolean
