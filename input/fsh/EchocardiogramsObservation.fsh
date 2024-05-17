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
* component.code.coding 1..25
* component.code.coding contains PSAP 1..1 and 
                                 unmeasuredPSAP 1..1 and 
                                 leftAtrium 1..1 and 
                                 unmeasuredLeftAtrium 1..1 and
                                 aorticRoot 1..1 and 
                                 aorticRootUnmeasured 1..1 and 
                                 rightCavities 1..1 and 
                                 endocarditis 1..1 and 
                                 valve 1..1 and 
                                 vegetable 1..1 and 
                                 vegetableValue 1..1 and
                                 abscess 1..1 and 
                                 prosthesisDetachment 1..1 and
                                 cardiacTumor 1..1 and 
                                 leftVentricleDiastolicDiameter 1..1 and 
                                 leftVentricleSystolicDiameter 1..1 and 
                                 leftVentricleEjectionFraction 1..1 and 
                                 aorticValvesMainGradient 1..1 and 
                                 aorticValvesMediumGradient 1..1 and 
                                 aorticValvesMaximumSpeed 1..1 and 
                                 aorticValvesArea 1..1 and 
                                 aorticValvesInsufficiency 1..1 and 
                                 mitralValveMainGradient 1..1 and
                                 mitralValveMediumGradient 1..1 and 
                                 mitralValveMaximumSpeed 1..1 
                                                
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


* component.code.coding[vegetableValue].code = $snomed#246205007
* component.code.coding[vegetableValue].code 1..1
* component.code.coding[vegetableValue].code ^definition = "Se indica cuanto lleva en estado vegetal"


* component.code.coding[abscess].code = $snomed#128477000 
* component.code.coding[abscess].code 1..1
* component.code.coding[abscess].code ^definition = "Se indica si tiene absceso"


* component.code.coding[prosthesisDetachment].code = $snomed#302969009 
* component.code.coding[prosthesisDetachment].code 1..1
* component.code.coding[prosthesisDetachment].code ^definition = "Se indica si hay desprendimiento de prótesis"


* component.code.coding[cardiacTumor].code = $snomed#715403006 
* component.code.coding[cardiacTumor].code 1..1
* component.code.coding[cardiacTumor].code ^definition = "Se indica si hay tumor cardíaco"


* component.code.coding[leftVentricleDiastolicDiameter].code = $loinc#59078-6 
* component.code.coding[leftVentricleDiastolicDiameter].code 1..1
* component.code.coding[leftVentricleDiastolicDiameter].code ^definition = "Medición de diámetro diastólico de ventriculo izquierdo"

* component.code.coding[leftVentricleSystolicDiameter].code = $loinc#80011-0 
* component.code.coding[leftVentricleSystolicDiameter].code 1..1
* component.code.coding[leftVentricleSystolicDiameter].code ^definition = "Medición de diámetro sistólico de ventriculo izquierdo"

* component.code.coding[leftVentricleEjectionFraction].code = $loinc#10230-1 
* component.code.coding[leftVentricleEjectionFraction].code 1..1
* component.code.coding[leftVentricleEjectionFraction].code ^definition = "Fraccion de eyección de ventriculo izquierdo"

* component.code.coding[aorticValvesMainGradient].code = $loinc#79963-5
* component.code.coding[aorticValvesMainGradient].code 1..1
* component.code.coding[aorticValvesMainGradient].code ^definition = "Válvula principal de valvula aorta"

* component.code.coding[aorticValvesMediumGradient].code = $loinc#80011-0
* component.code.coding[aorticValvesMediumGradient].code 1..1
* component.code.coding[aorticValvesMediumGradient].code ^definition = "Válvula media de valvula aorta"


* component.code.coding[aorticValvesMaximumSpeed].code = $loinc#20183-0
* component.code.coding[aorticValvesMaximumSpeed].code 1..1
* component.code.coding[aorticValvesMaximumSpeed].code ^definition = "Máxima velocidad de valvula aorta"

* component.code.coding[aorticValvesArea].code = $loinc#17984-6
* component.code.coding[aorticValvesArea].code 1..1
* component.code.coding[aorticValvesArea].code ^definition = "área de valvula aorta"

* component.code.coding[aorticValvesInsufficiency].code = $loinc#77912-4
* component.code.coding[aorticValvesInsufficiency].code 1..1
* component.code.coding[aorticValvesInsufficiency].code ^definition = "Insuficiencia de valvula aorta"

* component.code.coding[mitralValveMainGradient].code = $loinc#18059-6
* component.code.coding[mitralValveMainGradient].code 1..1
* component.code.coding[mitralValveMainGradient].code ^definition = "Gradiente principal de valvula Mitral"


* component.code.coding[mitralValveMediumGradient].code = $snomed#45331000087106 
* component.code.coding[mitralValveMediumGradient].code 1..1
* component.code.coding[mitralValveMediumGradient].code ^definition = "Gradiente media de valvula Mitral"


* component.code.coding[mitralValveMaximumSpeed].code = $loinc#80070-6
* component.code.coding[mitralValveMaximumSpeed].code 1..1
* component.code.coding[mitralValveMaximumSpeed].code ^definition = "Máxima velocidad de valvula Mitral"






* focus only Reference(ProcedureCardio)
* focus 1..1
