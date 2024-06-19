Alias: $snomed = http://snomed.info/sct


Profile: StenosisObservation
Parent: Observation
Description: "Observación para indicar la presencia de estenosis"

Title: "StenosisObservation"

* code 1..1
* code = $snomed#415582006
* code ^definition = "Stenosis"
* value[x] only boolean
* value[x] 1..1