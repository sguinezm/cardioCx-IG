Alias: $snomed = http://snomed.info/sct


Profile: PacksPerYearObservation
Parent: Observation
Description: "Packs por año"

Title: "PacksPerYearObservation"


* code.coding 1..1
* code from PacksPerYearVS


* value[x] only Quantity
* value[x] 1..1 MS 

* focus 1..1
