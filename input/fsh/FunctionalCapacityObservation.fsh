Alias: $snomed = http://snomed.info/sct
Alias: $loinc = http://loinc.org
Alias: $us-core-vital-signs = http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs


Profile: FunctionalCapacityObservation
Parent: Observation
Description: "Observación del nivel de angina presentado por el paciente en la plataforma CardioCx"

Title: "FunctionalCapacityObservation"

* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains NYIndex 1..1 

* code.coding[NYIndex].code 1..1
* code.coding[NYIndex].code = $loinc#420816009
* code.coding[NYIndex].code ^definition = "Clasificación de la New York Heart Association (escala de evaluación)"


* value[x] only CodeableConcept
* value[x] from FunctionalCapacityVS (preferred)

Alias: $loinc = http://loinc.org
Alias: $us-core-vital-signs = http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs


Profile: PreviousMIObservation
Parent: Observation
Description: "Número de infartos al miocardio previos"

Title: "PreviousMIObservation"
* code.coding = $snomed#22298006
* value[x] only CodeableConcept
* value[x] from PreviousMIVS (preferred)


Profile: MostRecentMIObservation
Parent: Observation
Description: "Días transcurridos desde el infarto al miocardio más reciente"

Title: "MostRecentMIObservation"
* code.coding = $snomed#428752002
* value[x] only CodeableConcept
* value[x] from MostRecentMIVS (preferred)

Profile: CongestiveHeartFailureObservation
Parent: Observation
Description: "Se indica que el paciente presenta la condición de falla cardíaca congestiva"

Title: "CongestiveHeartFailureObservation"

* value[x] only boolean
* code = $snomed#88805009
* code ^short = "Código snomed que representa a el fallo congestivo del corazón"