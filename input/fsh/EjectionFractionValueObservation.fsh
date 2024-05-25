Alias: $snomed = http://snomed.info/sct


Profile: EjectionFractionValueObservation
Parent: Observation
Description: "Observación del valor de fracción de eyección."

Title: "EjectionFractionValueObservation"

/*
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains fractionValue 0..1 //and absence 0..1 


* code.coding[fractionValue].code 1..1
* code.coding[fractionValue].system = $snomed
* code.coding[fractionValue].code = $snomed#70822001
* code.coding[fractionValue].code ^definition = "Cardiac ejection fraction"

* code.coding[absence].code 1..1
* code.coding[absence].system = $snomed
* code.coding[absence].code = $snomed#272519000
* code.coding[absence].code ^definition = "Absence findings"

* value[x] only Quantity
* value[x] 0..1 MS
* value[x].value 1..1  
*/
* code = $snomed#70822001
* code.coding.system = $snomed
* code.coding.display = "Cardiac ejection fraction"
* code ^definition = "Cardiac ejection fraction"

* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #open
* value[x] 1..1
* valueQuantity only Quantity
* valueQuantity ^sliceName = "valueQuantity"
* valueCodeableConcept only CodeableConcept
* valueCodeableConcept ^sliceName = "valueCodeableConcept"

* valueQuantity 0..1 MS
* valueQuantity.value 1..1

* valueCodeableConcept 0..1 MS
* valueCodeableConcept.coding.system = $snomed
* valueCodeableConcept.coding.code = $snomed#47492008

Instance: EjemploObservation
InstanceOf: EjectionFractionValueObservation
Usage: #example
Title: "Observation EjectionFraction"
Description: "Observation EjectionFraction"

* code = $snomed#70822001
* status = #final

* valueQuantity.value = 10

//* focus only Reference(ProcedureCardio)
//* focus 1..1
Instance: EjemploObservation1
InstanceOf: EjectionFractionValueObservation
Usage: #example
Title: "Observation EjectionFraction1"
Description: "Observation EjectionFraction1"

* code = $snomed#70822001
* status = #final

* valueCodeableConcept = $snomed#47492008