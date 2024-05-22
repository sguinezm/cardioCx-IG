Alias: $snomed = http://snomed.info/sct


Profile: NativeValvePathologyObservation
Parent: Observation
Description: "Presencia de alguna patología de válvula nativa"

Title: "EndocarditisInfecciosaObservation"


* code.coding 1..1
* code from NativeValvePathologyVS






* value[x] only CodeableConcept
* value[x] 1..1 MS 
* value[x] from EndocarditisInfecciosaVS

* focus only Reference(ValveProcedure)
* focus 1..1
