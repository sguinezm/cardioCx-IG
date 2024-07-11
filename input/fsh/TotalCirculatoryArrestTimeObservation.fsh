Alias: $snomed = http://snomed.info/sct


Profile: TotalCirculatoryArrestTimeObservation
Parent: Observation
Description: "Tiempo de procedimiento"

Title: "TotalCirculatoryArrestTimeObservation"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains TotalCirculatoryArrestTimeObservation 1..1 
                      


* code.coding[TotalCirculatoryArrestTimeObservation].code 1..1
* code.coding[TotalCirculatoryArrestTimeObservation].system = $snomed 
* code.coding[TotalCirculatoryArrestTimeObservation].code = $snomed#698828003 
* code.coding[TotalCirculatoryArrestTimeObservation].code ^short = "Time of procedure"
* value[x] from TotalCirculatoryArrestTimeObservationVS
* value[x] only integer

* focus only Reference(PerfusionProcedure)

