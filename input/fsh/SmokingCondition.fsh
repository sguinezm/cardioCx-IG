Alias: $snomed = http://snomed.info/sct


Profile: SmokingCondition
Parent: Condition
Description: "Historial fumador"

Title: "SmokingCondition"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 0..1
* code.coding contains smokingHistory 1..1 
* code.coding[smokingHistory].code only code
* code.coding[smokingHistory].code from SmokingConditionVS
* code.coding[smokingHistory].code ^definition = "Historial fumador"

