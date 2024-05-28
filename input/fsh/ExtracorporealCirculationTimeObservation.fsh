Alias: $snomed = http://snomed.info/sct


Profile: ExtracorporealCirculationTimeObservation
Parent: Observation
Description: "Tiempo de procedimiento"

Title: "ExtracorporealCirculationTimeObservation"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains extracorporealCirculationTimeObservation 1..1 
                      


* code.coding[extracorporealCirculationTimeObservation].code 1..1
* code.coding[extracorporealCirculationTimeObservation].system = $snomed
* code.coding[extracorporealCirculationTimeObservation].code = $snomed#251276001
* code.coding[extracorporealCirculationTimeObservation].code ^definition = "Time of procedure"

* value[x] only Quantity

* focus only Reference(PerfusionProcedure)

