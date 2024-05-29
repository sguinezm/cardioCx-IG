Alias: $loinc = http://loinc.org


Profile: PAWPObservation
Parent: Observation
Description: "Medida de la presión de la aurícula izquierda (LA) o presión de enclavamiento capilar pulmonar (PAWP) "

Title: "PAWPObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains pawp 0..1 and absence 0..1 


* code.coding[pawp].code 1..1
* code.coding[pawp].system = $loinc
* code.coding[pawp].code = $loinc#75994-4
* code.coding[pawp].code ^definition = "Pulmonary artery wedge pressure"

* code.coding[absence].code 1..1
* code.coding[absence].system = $loinc
* code.coding[absence].code = $loinc#LA13538-6
* code.coding[absence].code ^definition = "Not tested"




* value[x] only Quantity
* value[x] 0..1
* value[x].value 1..1

* focus only Reference(ProcedureCardio)
* focus 1..1
