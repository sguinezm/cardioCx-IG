Alias: $loinc = http://loinc.org
Alias: $us-core-vital-signs = http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs
Alias: $LL2972-9 = http://loinc.org/LL2972-9


Profile: BloodTypeObservation
Parent: Observation
Description: "Observación en la se que define el tipo de sangre del paciente considerando grupo y factor RH"

Title: "BloodTypeObservation"

* code only CodeableConcept
* code = $loinc#882-1
* code MS
* code ^short = "Blood type"
* value[x] only CodeableConcept
* value[x] from $LL2972-9 (preferred)