Alias: $snomed = http://snomed.info/sct


Profile: NeurologicDisfunctionCondition
Parent: Condition
Description: "Condición para indicar la el paciente tiene disfunción neurológica"

Title: "NeurologicDisfunctionCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains neurologicDisfunctionCondition 1..1 


* code.coding[neurologicDisfunctionCondition].code 1..1
* code.coding[neurologicDisfunctionCondition].code = $snomed#13028004 
* code.coding[neurologicDisfunctionCondition].code ^definition = "Neurologic disfunction condition"
