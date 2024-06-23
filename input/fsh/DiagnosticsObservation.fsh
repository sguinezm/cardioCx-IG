Alias: $snomed = http://snomed.info/sct


Profile: DiagnosticsObservation
Parent: Observation
Description: "Observación de diagnósticos"

Title: "DiagnosticsObservation"


* code =  $snomed#261004008
* code.coding.system = $snomed
* code ^definition = "Observación de diagnóstico"
* value[x] only CodeableConcept 
* value[x] from DiagnosticsObservationVS  




