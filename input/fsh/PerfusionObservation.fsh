Alias: $snomed = http://snomed.info/sct


Profile: PerfusionObservation
Parent: Observation
Description: "Observación del procedimiento perfusión."

Title: "PerfusionObservation"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..4
* code.coding contains circulatoryAssistance 0..1 and 
                       venousCannulations 0..1 and
                       ArterialCannulations 0..1 and 
                       extracorporealCirculationTime 0..1

* code.coding[circulatoryAssistance].code 1..1
* code.coding[circulatoryAssistance].system = $snomed
* code.coding[circulatoryAssistance].code = $snomed#233573008 
* code.coding[circulatoryAssistance].code ^definition = "Circulatory Assistances"
* value[x] from PerfusionObservationVS


* code.coding[venousCannulations].code 1..1
* code.coding[venousCannulations].system = $snomed
* code.coding[venousCannulations].code = $snomed#392231009
* code.coding[venousCannulations].code ^definition = "venous cannulations"
* value[x] from VenousCannulationsVS


* code.coding[ArterialCannulations].code 1..1
* code.coding[ArterialCannulations].system = $snomed
* code.coding[ArterialCannulations].code = $snomed#233549000
* code.coding[ArterialCannulations].code ^definition = "arterial cannulations"
* value[x] from ArterialCannulationsVS





















* focus only Reference(PerfusionProcedure)

