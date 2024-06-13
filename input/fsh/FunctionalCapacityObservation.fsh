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

* value[x] only CodeableConcept
* value[x] from PreviousMIVS (preferred)


Profile: MostRecentMIObservation
Parent: Observation
Description: "Días transcurridos desde el infarto al miocardio más reciente"

Title: "MostRecentMIObservation"

* value[x] only CodeableConcept
* value[x] from MostRecentMIVS (preferred)

Profile: CongestiveHeartFailureObservation
Parent: Observation
Description: "Se indica que el paciente presenta la condición de falla cardíaca congestiva"

Title: "CongestiveHeartFailureObservation"

* value[x] only boolean
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 2..2
* code.coding contains CongestiveHeartFailure 1..1 and
                        historyOf 1..1

* code.coding[CongestiveHeartFailure].code 1..1
* code.coding[CongestiveHeartFailure].code = $loinc#42343007
* code.coding[CongestiveHeartFailure].code ^definition = "Insuficiencia cardíaca congestiva (trastorno)"
* code.coding[historyOf].code 1..1
* code.coding[historyOf].code = $loinc#246090004
* code.coding[historyOf].code ^definition = "Antecedente de (atributo)"