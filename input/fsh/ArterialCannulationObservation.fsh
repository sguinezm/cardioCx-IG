Alias: $snomed = http://snomed.info/sct


Profile: ArterialCannulationObservation
Parent: Observation
Description: "Indica si se realiza una canulación venosa"

Title: "ArterialCannulation"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains arterialCannulation 1..1 
                      


* code.coding[arterialCannulation].code 1..1
* code.coding[arterialCannulation].system = $snomed
* code.coding[arterialCannulation].code = $snomed#233549000
* code.coding[arterialCannulation].code ^definition = "arterial cannulation"
* value[x] only CodeableConcept 
* value[x] from ArterialCannulationsVS
* value[x].text 0..1 MS 
* value[x].text ^short = "Indicar valor cuando el concepto del valueset utilizado es other value"







* focus only Reference(PerfusionProcedure)

