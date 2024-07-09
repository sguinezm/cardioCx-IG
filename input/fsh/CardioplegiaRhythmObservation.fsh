Alias: $snomed = http://snomed.info/sct


Profile: CardioplegiaRhytmObservation
Parent: Observation
Description: "Observación del ritmo de  cardioplegía en perfusión"

Title: "CardioplegiaRhytmObservation"


* code =  $snomed#404684003
* code ^definition = "Ritmo de cardioplegía en perfusión"
* value[x] only CodeableConcept 
* value[x] from CardioplegiaRhytmVS   




* focus only Reference(PerfusionProcedure)
* focus 1..1
