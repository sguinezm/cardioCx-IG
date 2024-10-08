Alias: $snomed = http://snomed.info/sct


Profile: CardioplegiaObservation
Parent: Observation
Description: "Observación de cardioplegía en perfusión"

Title: "CardioplegiaSolution"

* code =  $snomed#404684003 
* code ^definition = "Cardioplegía en perfusión"
* value[x] only CodeableConcept 
* value[x] from CardioplegiaSolutionVS   


* focus only Reference(PerfusionProcedure)
* focus 1..1
