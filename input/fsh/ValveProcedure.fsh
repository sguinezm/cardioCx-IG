Alias: $snomed = http://snomed.info/sct

Profile: ValveProcedure
Parent: Procedure
Description: "Registro del procedimiento de valvula"

* code.coding.system = $snomed
* code.coding.code = $snomed#64915003
* code.coding.display = "Operation on vessels of heart"

* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open
* performer 1..5
* performer contains surgeon1 1..3 and
                anesthetist 1..1 and
                perfusionist 1..1


* performer[surgeon1].actor 1..1
* performer[surgeon1].actor only Reference(SurgeonPractitionerCardio)
* performer[surgeon1].actor ^definition = "Definición del médico que actúa como cirujano"

* performer[anesthetist].actor 1..1
* performer[anesthetist].actor only Reference(SurgeonPractitionerCardio)
* performer[anesthetist].actor ^definition = "Definición del médico que actúa como anestesista"

* performer[perfusionist].actor 1..1
* performer[perfusionist].actor only Reference(SurgeonPractitionerCardio)
* performer[perfusionist].actor ^definition = "Definición del médico que actúa como perfusionista"

* performed[x] only dateTime

* bodySite ^slicing.discriminator.type = #value
* bodySite ^slicing.discriminator.path = "code"
* bodySite ^slicing.rules = #open
* bodySite 1..1
* bodySite contains valve 1..1

* bodySite[valve] only CodeableConcept
* bodySite[valve] from ValvesVS


* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference 0..*
* reasonReference contains stenosis 0..1

* reasonReference[stenosis] only Reference(StenosisCondition)


* usedReference ^slicing.discriminator.type = #profile
* usedReference ^slicing.discriminator.path = "resolve()"
* usedReference ^slicing.rules = #open
* usedReference 0..*
* usedReference contains valveName 0..1
* usedReference[valveName] only Reference(ValveDevice)


* extension contains UrgencyLevelCardioCx named urgency_level 1..1 and ValveInsuficiencyExt named valve_insuficiency 1..1
/*
* extension[supportingInfo] ^slicing.discriminator.type = #profile
* extension[supportingInfo] ^slicing.discriminator.path = "resolve()"
* extension[supportingInfo] ^slicing.rules = #open
* extension[supportingInfo] 1..1
* extension[supportingInfo] contains primer 1..1
* extension[supportingInfo][primer].value[x] only Reference(Observation)
*/