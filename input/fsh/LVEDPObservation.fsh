Alias: $snomed = http://snomed.info/sct


Profile: LVEDPObservation
Parent: Observation
Description: "Observación de la presión de fin de diástole del ventrículo izquierdo"

Title: "LVEDPObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains LVEDPPressure 0..1 and absence 0..1 


* code.coding[LVEDPPressure].code 1..1
* code.coding[LVEDPPressure].system = $snomed
* code.coding[LVEDPPressure].code = $snomed#276363007
* code.coding[LVEDPPressure].code ^definition = "End-diastolic left ventricular cavity shape"


* code.coding[absence].code 1..1
* code.coding[absence].system = $snomed
* code.coding[absence].code = $snomed#272519000
* code.coding[absence].code ^definition = "Absence findings"




* value[x] only Quantity
* value[x] 0..1 MS 
* value[x].value 1..1 

* focus only Reference(ProcedureCardio)
* focus 1..1
