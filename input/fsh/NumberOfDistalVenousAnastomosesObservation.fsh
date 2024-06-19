Alias: $snomed = http://snomed.info/sct


Profile: NumberOfDistalVenousAnastomosesObservation
Parent: Observation
Description: "Número de arterias venosas distal"

Title: "NumberOfDistalVenousAnastomoses"

* code.coding.system = $snomed
* code.coding.code = $snomed#233449002
* code.coding.code ^definition = "Number Of Distal venous Anastomoses"
* code.coding 1..1



* value[x] only Quantity
* value[x] 1..1 MS 

* focus only Reference(ProcedureCardio)
* focus 1..1
