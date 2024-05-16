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
* component.code.coding 1..8
* component.code.coding contains PSAP 0..1 and 
                                 unmeasuredPSAP 0..1 and 
                                 leftAtrium 1..1 and 
                                 unmeasuredLeftAtrium 0..1 and
                                 aorticRoot 1..1 and 
                                 aorticRootUnmeasured 1..1 and 
                                 rightCavities 1..1 and 
                                 endocarditis 1..1 and 
                                 valve 1..1 and 
                                 vegetable 1..1
                                                
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
* component.code.coding[unmeasuredLeftAtrium].code ^definition = "Se indica si la arteria izquierda no es medida"


* component.code.coding[aorticRoot].code = $snomed#8128003
* component.code.coding[aorticRoot].code 1..1
* component.code.coding[aorticRoot].code ^definition = "Se indica el estado de la raíz de la aorta"

* component.code.coding[aorticRootUnmeasured].code = $snomed#272519000
* component.code.coding[aorticRootUnmeasured].code 1..1
* component.code.coding[aorticRootUnmeasured].code ^definition = "Se indica si la raíz de la aorta no fue medida"

* component.code.coding[rightCavities].code = $snomed#73834008
* component.code.coding[rightCavities].code 1..1
* component.code.coding[rightCavities].code ^definition = "Estado de la cavidad derecha"

* component.code.coding[endocarditis].code = $snomed#56819008
* component.code.coding[endocarditis].code 1..1
* component.code.coding[endocarditis].code ^definition = "Presencia de endocarditis"

* component.code.coding[valve].code = $snomed#260852006 
* component.code.coding[valve].code 1..1
* component.code.coding[valve].code ^definition = "Tipo de válvula"

* component.code.coding[vegetable].code = $snomed#37163200
* component.code.coding[vegetable].code 1..1
* component.code.coding[vegetable].code ^definition = "Se indica si está en estado vegetal"















* focus only Reference(ProcedureCardio)
* focus 1..1
