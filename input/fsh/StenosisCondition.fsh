Alias: $snomed = http://snomed.info/sct


Profile: StenosisCondition
Parent: Condition
Description: "Condición para indicar la presencia de estenosis"

Title: "StenosisCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains stenosis 1..1 


* code.coding[stenosis].code 1..1
* code.coding[stenosis].code = $snomed#415582006
* code.coding[stenosis].code ^definition = "Stenosis"
