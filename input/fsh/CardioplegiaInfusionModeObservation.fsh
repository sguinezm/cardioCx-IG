Alias: $snomed = http://snomed.info/sct


Profile: CardioplegiaInfusionModeObservation
Parent: Observation
Description: "Observación del modo de infución de cardioplegía en perfusión"

Title: "CardioplegiaInfusionModeObservation"


* code =  $snomed#701595007
* code ^definition = "Observación del modo de infución de cardioplegía en perfusión"
* value[x] only CodeableConcept 
* value[x] from CardioplegiaInfusionModeVS   




* focus only Reference(PerfusionProcedure)
* focus 1..1
