Alias: $snomed = http://snomed.info/sct


Profile: ArteriesUsedAsConduitsObservation
Parent: Observation
Description: "Observación de arterias usadas como cinductos"

Title: " ArteriesUsedAsConduitsObservation"


* code.coding.system = $snomed
* code ^definition = "Arterias usadas como conductos"
* value[x] only string 
* value[x] from ArteriesUsedAsConduitsVS

* focus only Reference(ProcedureCardio)
* focus 1..1
