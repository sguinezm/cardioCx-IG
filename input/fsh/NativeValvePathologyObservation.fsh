Alias: $snomed = http://snomed.info/sct


Profile: NativeValvePathologyObservation
Parent: Observation
Description: "Presencia de alguna patología de válvula nativa"

Title: "NativeValvePathology"


* code.coding 1..1
* code from NativeValvePathologyVS


* value[x] only string
* value[x] 1..1 MS 

* focus only Reference(ValveProcedure)
* focus 1..1
