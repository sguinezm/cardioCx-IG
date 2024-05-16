Alias: $snomed = http://snomed.info/sct


Profile: EchocardiogramsObservation
Parent: Observation
Description: "Observación de ecocardiogramas"

Title: "EchocardiogramsObservation"

* code =  $snomed#433231002
* code ^definition = "echocardiograms"

* component.code.coding ^slicing.discriminator.type = #value
* component.code.coding ^slicing.discriminator.path = "code"
* component.code.coding ^slicing.rules = #open
* component.code.coding 1..4
* component.code.coding contains PSAP 0..1 and 
                                 unmeasuredPSAP 0..1 and 
                                 leftatrium 1..1 and 
                                 unmeasuredLeftAtrium 0..1
                                 
                                                
* component.code.coding[PSAP].code = $snomed#250768007 
* component.code.coding[PSAP].code 1..1
* component.code.coding[PSAP].code ^definition = "presión sistólica de la arteria pulmonar (entidad observable)"


* component.code.coding[unmeasuredPSAP].code = $snomed#272519000
* component.code.coding[unmeasuredPSAP].code 1..1
* component.code.coding[unmeasuredPSAP].code ^definition = "se indica si la presión sistólica en arteria pulmonar no es medida"



* component.code.coding[leftAtrium].code = $snomed#50408007 
* component.code.coding[leftAtrium].code 1..1
* component.code.coding[leftAtrium].code ^definition = "Se indica el estado de la arteria izquierda"


* component.code.coding[unmeasuredLeftAtrium].code = $snomed#272519000
* component.code.coding[unmeasuredLeftAtrium].code 1..1
* component.code.coding[lunmeasuredLeftAtrium].code ^definition = "Se indica si la arteria izquierda no es medida"

















* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from EchocardiogramsVS

* focus only Reference(ProcedureCardio)
* focus 1..1
