Alias: $snomed = http://snomed.info/sct


Profile: PerfusionTemperatureObservation
Parent: Observation
Description: "Observación de la temperatura de perfusión"

Title: "PerfusionTemperatureObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains perfTemp 1..1 


* code.coding[perfTemp].code 1..1
* code.coding[perfTemp].code = $snomed#252089004
* code.coding[perfTemp].code ^definition = "Tissue perfusion temperature"


* value[x] only CodeableConcept
* value[x] from PerfusionTemperatureVS (required)
