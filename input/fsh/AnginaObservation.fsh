Alias: $snomed = http://snomed.info/sct
Alias: $us-core-vital-signs = http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs


Profile: AnginaObservation
Parent: Observation
Description: "Observación del nivel de angina presentado por el paciente en la plataforma CardioCx"

Title: "AnginaObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 2..2
* code.coding contains angina 1..1 and
                grado 1..1 


* code.coding[angina].code 1..1
* code.coding[angina].code = $snomed#194828000
* code.coding[angina].code ^definition = "Angina"

* code.coding[grado].code 1..1
* code.coding[grado].code = $snomed#103421006
* code.coding[grado].code ^definition = "Grado"


* value[x] only CodeableConcept
* value[x] from AnginaObservationVS (preferred)
