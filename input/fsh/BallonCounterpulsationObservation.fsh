Alias: $snomed = http://snomed.info/sct


Profile: BallonCounterpulsationObservation
Parent: Observation
Description: "Observación de balón en perfusión"

Title: "BallonCounterpulsationObservation"


* code =  $snomed#701595007
* code ^definition = "Observación de balón en perfusión"
* value[x] only CodeableConcept 
* value[x] from BallonCounterpulsationVS   




* focus only Reference(PerfusionProcedure)
* focus 1..1
