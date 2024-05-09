Alias: $snomed = http://snomed.info/sct


Profile: SystolicPressureObservation
Parent: Observation
Description: "Observación de la presión sistólica."

Title: "SystolicPressureObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains systolicPressure 0..1 and absence 0..1 


* code.coding[systolicPressure].code 1..1
* code.coding[systolicPressure].system = $snomed
* code.coding[systolicPressure].code = $snomed#271649006
* code.coding[systolicPressure].code ^definition = "Systolic blood pressure"

* code.coding[absence].code 1..1
* code.coding[absence].system = $snomed
* code.coding[absence].code = $snomed#272519000
* code.coding[absence].code ^definition = "Absence findings"




* value[x] only integer
* value[x] 0..1 MS

* focus only Reference(ProcedureCardio)
* focus 1..1
