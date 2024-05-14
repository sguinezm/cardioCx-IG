Alias: $snomed = http://snomed.info/sct


Profile: EjectionFractionValueObservation
Parent: Observation
Description: "Observación del valor de fracción de eyección."

Title: "EjectionFractionValueObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains fractionValue 0..1 and absence 0..1 


* code.coding[fractionValue].code 1..1
* code.coding[fractionValue].system = $snomed
* code.coding[fractionValue].code = $snomed#70822001
* code.coding[fractionValue].code ^definition = "Cardiac ejection fraction"

* code.coding[absence].code 1..1
* code.coding[absence].system = $snomed
* code.coding[absence].code = $snomed#272519000
* code.coding[absence].code ^definition = "Absence findings"




* value[x] only Quantity
* value[x] 0..1 MS
* value[x].value 1..1  

* focus only Reference(ProcedureCardio)
* focus 1..1
