Alias: $snomed = http://snomed.info/sct


Profile: EjectionFractionObservation
Parent: Observation
Description: "Observación de fracción de eyección."

Title: "EjectionFractionObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains ejectionFraction 1..1 


* code.coding[ejectionFraction].code 1..1
* code.coding[ejectionFraction].system = $snomed
* code.coding[ejectionFraction].code = $snomed#70822001
* code.coding[ejectionFraction].code ^definition = "Cardiac ejection fraction"




* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from EjectionFractionVS

* focus only Reference(ProcedureCardio)
* focus 1..1
