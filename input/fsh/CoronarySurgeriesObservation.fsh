Alias: $snomed = http://snomed.info/sct


Profile: CoronarySurgeriesObservation
Parent: Observation
Description: "Observación del valor de la cirugía cardíaca"

Title: "CoronarySurgeriesObservation"

* code = $snomed#70822001
* code ^definition = "Cardiac surgerie"


* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from CoronarySurgeriesVS
* value[x].coding 1..6
* focus only Reference(ProcedureCardio)
* focus 1..1

