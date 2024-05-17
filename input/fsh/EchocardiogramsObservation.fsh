Alias: $snomed = http://snomed.info/sct


Profile: EchocardiogramsObservation
Parent: Observation
Description: "Observación de ecocardiogramas"

Title: "EchocardiogramsObservation"

* code =  $snomed#433231002
* code ^definition = "echocardiograms"

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component 1..29
* component contains PSAP 1..1 and 
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
                                 mitralValveMaximumSpeed 1..1 and
                                 mitralValveArea 1..1 and
                                 mitralValveInsufficiency 1..1 and 
                                 tricuspideValvesInsuficiency 1..1 and 
                                 diagnostics 1..1
                                                
* component[PSAP].code = $snomed#250768007 
* component[PSAP].code 1..1
* component[PSAP].code ^definition = "presión sistólica de la arteria pulmonar (entidad observable)"


* component[unmeasuredPSAP].code = $snomed#272519000
* component[unmeasuredPSAP].code 1..1
* component[unmeasuredPSAP].code ^definition = "se indica si la presión sistólica en arteria pulmonar no es medida"



* component[leftAtrium].code = $snomed#50408007 
* component[leftAtrium].code 1..1
* component[leftAtrium].code ^definition = "Se indica el estado de la arteria izquierda"


* component[unmeasuredLeftAtrium].code = $snomed#272519000
* component[unmeasuredLeftAtrium].code 1..1
* component[unmeasuredLeftAtrium].code ^definition = "Se indica si la arteria izquierda no es medida"


* component[aorticRoot].code = $snomed#8128003
* component[aorticRoot].code 1..1
* component[aorticRoot].code ^definition = "Se indica el estado de la raíz de la aorta"

* component[aorticRootUnmeasured].code = $snomed#272519000
* component[aorticRootUnmeasured].code 1..1
* component[aorticRootUnmeasured].code ^definition = "Se indica si la raíz de la aorta no fue medida"

* component[rightCavities].code = $snomed#73834008
* component[rightCavities].code 1..1
* component[rightCavities].code ^definition = "Estado de la cavidad derecha"

* component[endocarditis].code = $snomed#56819008
* component[endocarditis].code 1..1
* component[endocarditis].code ^definition = "Presencia de endocarditis"

* component[valve].code = $snomed#260852006 
* component[valve].code 1..1
* component[valve].code ^definition = "Tipo de válvula"

* component[vegetable].code = $snomed#37163200
* component[vegetable].code 1..1
* component[vegetable].code ^definition = "Se indica si está en estado vegetal"


* component[vegetableValue].code = $snomed#246205007
* component[vegetableValue].code 1..1
* component[vegetableValue].code ^definition = "Se indica cuanto lleva en estado vegetal"


* component[abscess].code = $snomed#128477000 
* component[abscess].code 1..1
* component[abscess].code ^definition = "Se indica si tiene absceso"


* component[prosthesisDetachment].code = $snomed#302969009 
* component[prosthesisDetachment].code 1..1
* component[prosthesisDetachment].code ^definition = "Se indica si hay desprendimiento de prótesis"


* component[cardiacTumor].code = $snomed#715403006 
* component[cardiacTumor].code 1..1
* component[cardiacTumor].code ^definition = "Se indica si hay tumor cardíaco"


* component[leftVentricleDiastolicDiameter].code = $loinc#59078-6 
* component[leftVentricleDiastolicDiameter].code 1..1
* component[leftVentricleDiastolicDiameter].code ^definition = "Medición de diámetro diastólico de ventriculo izquierdo"

* component[leftVentricleSystolicDiameter].code = $loinc#80011-0 
* component[leftVentricleSystolicDiameter].code 1..1
* component[leftVentricleSystolicDiameter].code ^definition = "Medición de diámetro sistólico de ventriculo izquierdo"

* component[leftVentricleEjectionFraction].code = $loinc#10230-1 
* component[leftVentricleEjectionFraction].code 1..1
* component[leftVentricleEjectionFraction].code ^definition = "Fraccion de eyección de ventriculo izquierdo"

* component[aorticValvesMainGradient].code = $loinc#79963-5
* component[aorticValvesMainGradient].code 1..1
* component[aorticValvesMainGradient].code ^definition = "Válvula principal de valvula aorta"

* component[aorticValvesMediumGradient].code = $loinc#80011-0
* component[aorticValvesMediumGradient].code 1..1
* component[aorticValvesMediumGradient].code ^definition = "Válvula media de valvula aorta"


* component[aorticValvesMaximumSpeed].code = $loinc#20183-0
* component[aorticValvesMaximumSpeed].code 1..1
* component[aorticValvesMaximumSpeed].code ^definition = "Máxima velocidad de valvula aorta"

* component[aorticValvesArea].code = $loinc#17984-6
* component[aorticValvesArea].code 1..1
* component[aorticValvesArea].code ^definition = "área de valvula aorta"

* component[aorticValvesInsufficiency].code = $loinc#77912-4
* component[aorticValvesInsufficiency].code 1..1
* component[aorticValvesInsufficiency].code ^definition = "Insuficiencia de valvula aorta"

* component[mitralValveMainGradient].code = $loinc#18059-6
* component[mitralValveMainGradient].code 1..1
* component[mitralValveMainGradient].code ^definition = "Gradiente principal de valvula Mitral"


* component[mitralValveMediumGradient].code = $snomed#45331000087106 
* component[mitralValveMediumGradient].code 1..1
* component[mitralValveMediumGradient].code ^definition = "Gradiente media de valvula Mitral"


* component[mitralValveMaximumSpeed].code = $loinc#80070-6
* component[mitralValveMaximumSpeed].code 1..1
* component[mitralValveMaximumSpeed].code ^definition = "Máxima velocidad de valvula Mitral"

* component[mitralValveInsufficiency].code = $loinc#18113-1
* component[mitralValveInsufficiency].code 1..1
* component[mitralValveInsufficiency].code ^definition = "Insuficiencia de valvula mitral"



* component[tricuspideValvesInsuficiency].code = $loinc#18115-6
* component[tricuspideValvesInsuficiency].code 1..1
* component[tricuspideValvesInsuficiency].code ^definition = "Insuficiencia de valvula Tricuspide"



* component[diagnostics].code = $snomed#439401001
* component[diagnostics].code 1..1
* component[diagnostics].code ^definition = "diagnosticos"




* component.value[x] only Quantity
* focus only Reference(ProcedureCardio)
* focus 1..1
