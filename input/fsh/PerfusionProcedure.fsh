Alias: $snomed = http://snomed.info/sct

Profile: PerfusionProcedure
Parent: Procedure
Description: "Registro del procedimiento de perfusión"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains perfusion 1..1 

* code.coding[perfusion].system = $snomed
* code.coding[perfusion].code = $snomed#88058003
* code.coding[perfusion].display = "Perfusion"


* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open
* performer 1..1
* performer contains perfusionist 1..1

* performer[perfusionist].actor 1..1
* performer[perfusionist].actor only Reference(SurgeonPractitionerCardio)
* performer[perfusionist].actor ^definition = "Definición del médico que actúa como perfusionista"

