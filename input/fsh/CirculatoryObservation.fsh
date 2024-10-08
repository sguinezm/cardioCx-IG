Alias: $snomed = http://snomed.info/sct


Profile: CirculatoryObservation
Parent: Observation
Description: "Indica si se realiza una perfusión"

Title: "CirculatoryObservation"

* subject 1..1
//* subject only reference PatientCardio 
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains circulatoryAssistance 1..1 
                      


* code.coding[circulatoryAssistance].code 1..1
* code.coding[circulatoryAssistance].system = $snomed
* code.coding[circulatoryAssistance].code = $snomed#233573008 
* code.coding[circulatoryAssistance].code ^definition = "Circulatory Assistances"

* value[x] only CodeableConcept
* value[x] from CirculatoryObservationVS
* value[x].text 0..1 MS 
* value[x].text ^short = "Indicar valor cuando el concepto del valueset utilizado es other value"







* focus only Reference(PerfusionProcedure)

