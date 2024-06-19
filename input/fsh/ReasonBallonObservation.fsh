
Alias: $snomed = http://snomed.info/sct


Profile: ReasonBallonObservation
Parent: Observation
Description: "Indica razón de uso de balón"

Title: "ReasonBallonObservation"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains reasonBallon 1..1 
                      


* code.coding[reasonBallon].code 1..1
* code.coding[reasonBallon].system = $snomed
* code.coding[reasonBallon].code = $snomed#16965008  
* code.coding[reasonBallon].code ^definition = "venous cannulations"
* value[x] from ReasonForBallonUsageVS
* value[x] only CodeableConcept






* focus only Reference(PerfusionProcedure)

