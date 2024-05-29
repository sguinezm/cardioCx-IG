Alias: $snomed = http://snomed.info/sct


Profile: PacksPerYearObservation
Parent: Observation
Description: "Packs por año"

Title: "PacksPerYearObservation"

* code.coding.system = $snomed
* code.coding.code = $snomed#401201003
* code.coding.code ^definition = "Packs per year"
* code.coding 1..1



* value[x] only Quantity
* value[x] 1..1 MS 

* focus 1..1
