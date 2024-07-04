Alias: $snomed = http://snomed.info/sct


Profile: CardioplegiaTemperatureObservation
Parent: Observation
Description: "Observación de la temperatura de cardioplegía en perfusión"

Title: "Cardioplegia temperature"


* code =  $snomed#404684003
* code.coding.system = $snomed
* code ^definition = "Temperatura de cardioplegía en perfusión" 
* value[x] only CodeableConcept 
* value[x] from CardioplegiaTemperatureVS   




* focus only Reference(PerfusionProcedure)
* focus 1..1
