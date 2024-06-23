Alias: $snomed = http://snomed.info/sct


Profile: ValveObservation
Parent: Observation
Description: "Observación de válvulas"

Title: "ValveObservation"


* code =  $snomed#41244000
* code.coding.system = $snomed
* code ^definition = "Observación de válvulas"
* value[x] only CodeableConcept 
* value[x] from ValvesVS  




