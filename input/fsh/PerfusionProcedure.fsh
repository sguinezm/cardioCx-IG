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
* performer[perfusionist].actor only Reference(PractitionerCardio)
* performer[perfusionist].actor ^definition = "Definición del médico que actúa como perfusionista"
/*
* usedCode ^slicing.discriminator.type = #value
* usedCode ^slicing.discriminator.path = "coding.code"
* usedCode ^slicing.rules = #open
* usedCode 1..1
* usedCode contains cardioplegiaSolution 1..1

* usedCode[cardioplegiaSolution] from CardioplegiaSolutionVS
*/

* extension contains ExtracorporealCirculationExt named extracorporeal_circulation 1..1 and
MyocardialProtectionExt named myocardial_protection 1..1 