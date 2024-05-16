Alias: $snomed = http://snomed.info/sct


Profile: EchocardiogramsObservation
Parent: Observation
Description: "Observación de ecocardiogramas"

Title: "EchocardiogramsObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains echocardiograms 1..1 


* code.coding[echocardiograms].code 1..1
* code.coding[echocardiograms].system = $snomed
* code.coding[echocardiograms].code = $snomed#433231002 
* code.coding[echocardiograms].code ^definition = "echocardiograms"




* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from EchocardiogramsVS

* focus only Reference(ProcedureCardio)
* focus 1..1
