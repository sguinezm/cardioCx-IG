Alias: $snomed = http://snomed.info/sct


Profile: SmokingObservation
Parent: Observation
Description: "Historial fumador"

Title: "SmokingObservation"

* code.coding.code ^definition = "Smoking observation"
* code.coding 1..1


* value[x] from SmokingObservationVS
* value[x] only Quantity
* value[x] 1..1 MS 

* focus 1..1
