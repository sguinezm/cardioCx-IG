Alias: $snomed = http://snomed.info/sct


Profile: EndocarditisInfecciosaObservation
Parent: Observation
Description: "Presencia de endocarditis infecciosa"

Title: "EndocarditisInfecciosaObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains endocarditis 1..1 


* code.coding[endocarditis].code 1..1
* code.coding[endocarditis].system = $snomed
* code.coding[endocarditis].code = $snomed#233850007
* code.coding[endocarditis].code ^definition = "Infective endocarditis"





* value[x] only CodeableConcept
* value[x] 1..1 MS 
* value[x] from EndocarditisInfecciosaVS

* focus only Reference(ValveProcedure)
* focus 1..1
