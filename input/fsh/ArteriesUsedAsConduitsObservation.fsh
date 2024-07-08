Alias: $snomed = http://snomed.info/sct


Profile: ArteriesUsedAsConduitsObservation
Parent: Observation
Description: "Observación de arterias usadas como cinductos"

Title: " ArteriesUsedAsConduitsObservation"


* code.coding.system = $snomed
* code ^definition = "Arterias usadas como conductos"


* value[x] only CodeableConcept
* value[x] from ArteriesUsedAsConduitsVS
* value[x].text 0..1 MS 
* value[x].text ^short = "Indicar valor cuando el concepto del valueset utilizado es de id 6"


* focus only Reference(ProcedureCardio)
* focus 1..1
