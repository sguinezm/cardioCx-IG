Alias: $snomed = http://snomed.info/sct


Profile: NumberOfDistalArterialAnastomosesObservation
Parent: Observation
Description: "Número de arterias distal"

Title: "NumberOfDistalArterialAnastomosesObservation"

* code.coding.system = $snomed
* code.coding.code = $snomed#263551008
* code.coding.code ^definition = "number Of Distal Arterial Anastomoses"
* code.coding 1..1



* value[x] only Quantity
* value[x] 1..1 MS 

* focus only Reference(ProcedureCardio)
* focus 1..1
