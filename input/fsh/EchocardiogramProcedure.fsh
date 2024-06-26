Alias: $snomed = http://snomed.info/sct

Profile: EchocardiogramProcedure
Parent: Procedure
Description: "Registro del procedimiento de ecocardiograma"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains ecocardiograma 1..1 

* code.coding[ecocardiograma].system = $snomed
* code.coding[ecocardiograma].code = $snomed#40701008
* code.coding[ecocardiograma].display = "Echocardiography"
* outcome from DiagnosticsResultVS (required)


