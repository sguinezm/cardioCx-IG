Alias: $snomed = http://snomed.info/sct


Profile: CumulativeCrossClampTimeObservation
Parent: Observation
Description: "Tiempo de procedimiento"

Title: "CumulativeCrossClampTimeObservation"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains cumulativeCrossClampTimeObservation 1..1 
                      


* code.coding[cumulativeCrossClampTimeObservation].code 1..1
* code.coding[cumulativeCrossClampTimeObservation].system = $snomed
* code.coding[cumulativeCrossClampTimeObservation].code ^definition = "Time of procedure"
* value[x] from CumulativeCrossClampTimeVS
* value[x] only Quantity

* focus only Reference(PerfusionProcedure)

