Alias: $loinc = http://loinc.org


Profile: DiseasedCoronarySegmentObservation
Parent: Observation
Description: "Observación del número de vasos con problemas."

Title: "DiseasedCoronarySegmentObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains diseasedCoronarySegment 1..1 


* code.coding[diseasedCoronarySegment].code 1..1
* code.coding[diseasedCoronarySegment].system = $loinc
* code.coding[diseasedCoronarySegment].code = $loinc#LL3686-4
* code.coding[diseasedCoronarySegment].code ^definition = "Diseased coronary segment categories"

* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from NumberDiseasedCoronarySegmentsVS


* focus only Reference(ProcedureCardio)
* focus 1..1


* component.code.coding ^slicing.discriminator.type = #value
* component.code.coding ^slicing.discriminator.path = "code"
* component.code.coding ^slicing.rules = #open
* component.code.coding 1..1
* component.code.coding contains PercentStenosis 1..1 


* component.code.coding[PercentStenosis].code 1..1
* component.code.coding[PercentStenosis].system = $loinc
* component.code.coding[PercentStenosis].code = $loinc#78913-1
* component.code.coding[PercentStenosis].code ^definition = "Percent stenosis of Ramus intermedius branch from left main coronary artery by Cardiac angiogram"

* component.value[x] 0..1 MS
* component.value[x] only Quantity
