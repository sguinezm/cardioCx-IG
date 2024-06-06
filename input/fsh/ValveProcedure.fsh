Alias: $snomed = http://snomed.info/sct

Profile: ValveProcedure
Parent: Procedure
Description: "Registro del procedimiento de valvula"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 2..2
* code.coding contains principalCode 1..1 and secundaryCodeOne 0..1
and secundaryCodeTwo 0..1  

* code.coding[principalCode].system = $snomed
* code.coding[principalCode].code = $snomed#73544002
* code.coding[principalCode].display = "Operation on heart valve"

* code.coding[secundaryCodeOne].system = $snomed
* code.coding[secundaryCodeOne].code = $snomed#713295009
* code.coding[secundaryCodeOne].display = "Surgical replacement - action"
* code.coding[secundaryCodeTwo].system = $snomed
* code.coding[secundaryCodeTwo].code = $snomed#4365001
* code.coding[secundaryCodeTwo].display = "Surgical repair"

* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "actor"
* performer ^slicing.rules = #open
* performer 1..5
* performer contains surgeon1 1..3 and
                anesthetist 1..1 and
                perfusionist 1..1


* performer[surgeon1].actor 1..1
* performer[surgeon1].actor only Reference(PractitionerCardio)
* performer[surgeon1].actor ^definition = "Definición del médico que actúa como cirujano"

* performer[anesthetist].actor 1..1
* performer[anesthetist].actor only Reference(PractitionerCardio)
* performer[anesthetist].actor ^definition = "Definición del médico que actúa como anestesista"

* performer[perfusionist].actor 1..1
* performer[perfusionist].actor only Reference(PractitionerCardio)
* performer[perfusionist].actor ^definition = "Definición del médico que actúa como perfusionista"

* performed[x] only dateTime

* bodySite ^slicing.discriminator.type = #value
* bodySite ^slicing.discriminator.path = "code"
* bodySite ^slicing.rules = #open
* bodySite 1..1
* bodySite contains valve 1..1

* bodySite[valve] only CodeableConcept
* bodySite[valve] from ValvesVS

* reasonCode 1..1 
* reasonCode from ReoperationValveReasonVS (required)


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


* extension contains UrgencyLevelCardioCx named urgency_level 1..1 and ValveInsuficiencyExt named valveInsuficiency 1..1
and ExplantTypeExt named explantType 1..1 and ImplantTypeExt named implantType 1..1
/*
* extension[supportingInfo] ^slicing.discriminator.type = #profile
* extension[supportingInfo] ^slicing.discriminator.path = "resolve()"
* extension[supportingInfo] ^slicing.rules = #open
* extension[supportingInfo] 1..1
* extension[supportingInfo] contains primer 1..1
* extension[supportingInfo][primer].value[x] only Reference(Observation)
*/