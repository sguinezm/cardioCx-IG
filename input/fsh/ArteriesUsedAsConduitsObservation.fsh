Alias: $snomed = http://snomed.info/sct


Profile: ArteriesUsedAsConduitsObservation
Parent: Observation
Description: "Observación de arterias usadas como cinductos"

Title: " ArteriesUsedAsConduitsObservation"


* code.coding.system = $snomed
* code ^definition = "Arterias usadas como conductos"
* value[x] only CodeableConcept 
* value[x] from ArteriesUsedAsConduitsVS

* focus 1..1
