Alias: $loinc = http://loinc.org


Profile: DiseasedCoronarySegmentObservation
Parent: Observation
Description: "Observación del número de vasos con problemas."

Title: "DiseasedCoronarySegmentObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains catheterization 1..1 


* code.coding[catheterization].code 1..1
* code.coding[catheterization].system = $loinc
* code.coding[catheterization].code = $loinc#72052-4
* code.coding[catheterization].code ^definition = "Date catheter placement"




* value[x] only dateTime
* value[x] 1..1

* focus only Reference(ProcedureCardio)
* focus 1..1
