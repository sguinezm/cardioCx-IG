Alias: $snomed = http://snomed.info/sct


Profile: EchocardiogramsObservation
Parent: Observation
Description: "Observación de ecocardiogramas"

Title: "EchocardiogramsObservation"

* code =  $snomed#433231002
* code ^definition = "echocardiograms"
* code.system = $snomed

* component.code.coding ^slicing.discriminator.type = #value
* component.code.coding ^slicing.discriminator.path = "code"
* component.code.coding ^slicing.rules = #open
* component.code.coding 1..15
* component.code.coding contains PSAP 0..1 and
                                 
#PSAP
* component.code.coding[PSAP].code.coding ^slicing.discriminator.type = #value
* component.code.coding[PSAP].code.coding ^slicing.discriminator.path = "code"
* component.code.coding[PSAP].code.coding ^slicing.rules = #open
* component.code.coding[PSAP].code.coding 1..2
* component.code.coding[PSAP].code.coding contains psap 1..1 and 
                                                   unmeasuredPSAP 0..1

#PSAP
* component.code.coding[PSAP].code.coding[psap].code = $snomed#250768007 
* component.code.coding[PSAP].code.coding[psap].code 1..1
* component.code.coding[PSAP].code.coding[psap].system = $snomed
* component.code.coding[PSAP].code.coding[psap] ^definition = "presión sistólica de la arteria pulmonar (entidad observable)"

#unmeasured
* component.code.coding[PSAP].code.coding[unmeasuredPSAP].code = $snomed#272519000
* component.code.coding[PSAP].code.coding[unmeasuredPSAP].code 1..1
* component.code.coding[PSAP].code.coding[unmeasuredPSAP].system = $snomed
* component.code.coding[PSAP].code.coding[unmeasuredPSAP] ^definition = "se indica si la presión sistólica en arteria pulmonar no es medida"


                            
#left atrium 
* component.code.coding[leftAtrium].code.coding ^slicing.discriminator.type = #value
* component.code.coding[leftAtrium].code.coding ^slicing.discriminator.path = "code"
* component.code.coding[leftAtrium].code.coding ^slicing.rules = #open
* component.code.coding[leftAtrium].code.coding 1..2
* component.code.coding[leftAtrium].code.coding contains leftatrium 1..1 and 
                                                   unmeasuredLeftAtrium 0..1


#leftatrium
* component.code.coding[leftAtrium].code.coding[leftatrium].code = $snomed#50408007 
* component.code.coding[leftAtrium].code.coding[leftatrium].code 1..1
* component.code.coding[leftAtrium].code.coding[leftatrium].system = $snomed
* component.code.coding[leftAtrium].code.coding[leftatrium] ^definition = "Se indica el estado de la arteria izquierda"

#unmeasuredLeftAtrium
* component.code.coding[leftAtrium].code.coding[unmeasuredLeftAtrium].code = $snomed#272519000
* component.code.coding[leftAtrium].code.coding[unmeasuredLeftAtrium].code 1..1
* component.code.coding[leftAtrium].code.coding[unmeasuredLeftAtrium].system = $snomed
* component.code.coding[leftAtrium].code.coding[unmeasuredLeftAtrium] ^definition = "Se indica si la arteria izquierda no es medida"

















* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from EchocardiogramsVS

* focus only Reference(ProcedureCardio)
* focus 1..1
