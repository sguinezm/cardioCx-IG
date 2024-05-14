Alias: $loinc = http://loinc.org


Profile: AVGradient
Parent: Observation
Description: "Gradiente de presión arterial venosa."

Title: "AVGradientObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains AVGradient 0..1 and absence 0..1 


* code.coding[AVGradient].code 1..1
* code.coding[AVGradient].system = $loinc
* code.coding[AVGradient].code = $loinc#76092-6
* code.coding[AVGradient].code ^definition = "Maximum gradient during systole [Pressure] Aortic valve"

* code.coding[absence].code 1..1
* code.coding[absence].system = $loinc
* code.coding[absence].code = $loinc#LA13538-6
* code.coding[absence].code ^definition = "Not tested"




* value[x] only Quantity
* value[x] 0..1 MS 
* value[x].value 1..1  

* focus only Reference(ProcedureCardio)
* focus 1..1
