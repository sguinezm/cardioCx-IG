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
* component 1..25
* component contains             
                    PSAP  0..1 and 
                    leftAtrium 0..1 and 
                    aorticRoot 0..1 and 
                    rightCavities 0..1 and 
                    endocarditis 0..1 and 
                    valve 0..1 and 
                    vegetable 0..1 and 
                    abscess 0..1 and 
                    prosthesisDetachment 0..1 and
                    cardiacTumor 0..1 and 
                    leftVentricleDiastolicDiameter 0..1 and 
                    leftVentricleSystolicDiameter 0..1 and 
                    leftVentricleEjectionFraction 0..1 and 
                    aorticValvesMainGradient 0..1 and 
                    aorticValvesMediumGradient 0..1 and 
                    aorticValvesMaximumSpeed 0..1 and 
                    aorticValvesArea 0..1 and 
                    aorticValvesInsufficiency 1..1 and 
                    mitralValveMainGradient 0..1 and
                    mitralValveMediumGradient 1..1 and 
                    mitralValveMaximumSpeed 0..1 and
                    mitralValveArea 0..1 and
                    mitralValveInsufficiency 0..1 and 
                    tricuspideValvesInsuficiency 0..1 
                    

* component[PSAP] MS      
* component[PSAP] ^short = "Hace referencia a la presión sistólica de la arteria pulmonar (entidad observable)"                                            
* component[PSAP].code = $snomed#250768007 
* component[PSAP].code 1..1
* component[PSAP].code ^definition = "codigo de la presión sistólica de la arteria pulmonar (entidad observable)"
* component[PSAP].value[x] only integer
* component[PSAP].value[x] 1..1 



* component[leftAtrium].code = $snomed#50408007 
* component[leftAtrium].code 1..1
* component[leftAtrium] ^short = "Se indica el estado de la arteria izquierda"
* component[leftAtrium].code ^definition = "Se indica el estado de la arteria izquierda"
* component[leftAtrium].value[x] only integer
* component[leftAtrium].value[x] 1..1 

* component[aorticRoot].code = $snomed#8128003
* component[aorticRoot].code 1..1
* component[aorticRoot] ^short = "Se indica el estado de la raíz de la aorta"
* component[aorticRoot].code ^definition = "Se indica el estado de la raíz de la aorta"
* component[aorticRoot].value[x] only integer
* component[aorticRoot].value[x].value 1..1 

* component[rightCavities].code = $snomed#73834008
* component[rightCavities].code 1..1
* component[rightCavities] ^short = "Estado de la cavidad derecha"
* component[rightCavities].code ^definition = "Estado de la cavidad derecha"
* component[rightCavities].value[x] only CodeableConcept
* component[rightCavities].value[x] from RightCavitiesVS

* component[endocarditis].code = $snomed#56819008
* component[endocarditis].code 1..1
* component[endocarditis] ^short = "Presencia de endocarditis"
* component[endocarditis].code ^definition = "Presencia de endocarditis"
* component[endocarditis].value[x] only boolean
* component[endocarditis].value[x].value 1..1 

* component[valve].code = $snomed#260852006 
* component[valve].code 1..1
* component[valve] ^short = "Tipo de válvula"
* component[valve].code ^definition = "Tipo de válvula"

* component[vegetable].code = $snomed#37163200
* component[vegetable].code 1..1
* component[vegetable] ^short = "Se indica si está en estado vegetal, si no está no se debe agregar el recurso"
* component[vegetable].code ^definition = "Se indica si está en estado vegetal, si no está no se debe agregar el recurso"
* component[vegetable].value[x] only integer
* component[vegetable].value[x].value 1..1 


* component[abscess].code = $snomed#128477000 
* component[abscess].code 1..1
* component[abscess] ^short = "Se indica si tiene absceso"
* component[abscess].code ^definition = "Se indica si tiene absceso"
* component[abscess].value[x] only boolean
* component[abscess].value[x].value 1..1 

* component[prosthesisDetachment].code = $snomed#302969009 
* component[prosthesisDetachment].code 1..1
* component[prosthesisDetachment] ^short = "Se indica si hay desprendimiento de prótesis"
* component[prosthesisDetachment].code ^definition = "Se indica si hay desprendimiento de prótesis"
* component[prosthesisDetachment].value[x] only boolean
* component[prosthesisDetachment].value[x].value 1..1 

* component[cardiacTumor].code = $snomed#715403006 
* component[cardiacTumor].code 1..1
* component[cardiacTumor] ^short = "Se indica si hay tumor cardíaco"
* component[cardiacTumor].code ^definition = "Se indica si hay tumor cardíaco"
* component[cardiacTumor].value[x] only integer
* component[cardiacTumor].value[x].value 1..1 

* component[leftVentricleDiastolicDiameter].code = $loinc#59078-6 
* component[leftVentricleDiastolicDiameter].code 1..1
* component[leftVentricleDiastolicDiameter] ^short = "Medición de diámetro diastólico de ventriculo izquierdo"
* component[leftVentricleDiastolicDiameter].code ^definition = "Medición de diámetro diastólico de ventriculo izquierdo"
* component[leftVentricleDiastolicDiameter].value[x] only Quantity
* component[leftVentricleDiastolicDiameter].value[x].value 1..1 

* component[leftVentricleSystolicDiameter].code = $loinc#80011-0 
* component[leftVentricleSystolicDiameter].code 1..1
* component[leftVentricleSystolicDiameter] ^short = "Medición de diámetro sistólico de ventriculo izquierdo"
* component[leftVentricleSystolicDiameter].code ^definition = "Medición de diámetro sistólico de ventriculo izquierdo"
* component[leftVentricleSystolicDiameter].value[x] only Quantity 
* component[leftVentricleSystolicDiameter].value[x].value 1..1 

* component[leftVentricleEjectionFraction].code = $loinc#10230-1 
* component[leftVentricleEjectionFraction].code 1..1
* component[leftVentricleEjectionFraction] ^short = "Fraccion de eyección de ventriculo izquierdo"
* component[leftVentricleEjectionFraction].code ^definition = "Fraccion de eyección de ventriculo izquierdo"
* component[leftVentricleEjectionFraction].value[x] only Quantity 
* component[leftVentricleEjectionFraction].value[x].value 1..1 

* component[aorticValvesMainGradient].code = $loinc#79963-5
* component[aorticValvesMainGradient].code 1..1
* component[aorticValvesMainGradient] ^short = "Válvula principal de valvula aorta"
* component[aorticValvesMainGradient].code ^definition = "Válvula principal de valvula aorta"
* component[aorticValvesMainGradient].value[x] only integer 

* component[aorticValvesMediumGradient].code = $loinc#LP7026-0
* component[aorticValvesMediumGradient].code 1..1
* component[aorticValvesMediumGradient] ^short = "Válvula media de valvula aorta"
* component[aorticValvesMediumGradient].code ^definition = "Válvula media de valvula aorta"
* component[aorticValvesMediumGradient].value[x] only integer 
* component[aorticValvesMediumGradient].value[x].value 1..1 


* component[aorticValvesMaximumSpeed].code = $loinc#20183-0
* component[aorticValvesMaximumSpeed].code 1..1
* component[aorticValvesMaximumSpeed] ^short = "Máxima velocidad de valvula aorta"
* component[aorticValvesMaximumSpeed].code ^definition = "Máxima velocidad de valvula aorta"
* component[aorticValvesMaximumSpeed].value[x] only Quantity 
* component[aorticValvesMaximumSpeed].value[x].value 1..1 


* component[aorticValvesArea].code = $loinc#17984-6
* component[aorticValvesArea].code 1..1
* component[aorticValvesArea] ^short = "área de valvula aorta"
* component[aorticValvesArea].code ^definition = "área de valvula aorta"
* component[aorticValvesArea].value[x] only Quantity 
* component[aorticValvesArea].value[x].value 1..1 

* component[aorticValvesInsufficiency].code = $loinc#77912-4
* component[aorticValvesInsufficiency].code 1..1
* component[aorticValvesInsufficiency] ^short = "Insuficiencia de valvula aorta"
* component[aorticValvesInsufficiency].code ^definition = "Insuficiencia de valvula aorta"
* component[aorticValvesInsufficiency].value[x] only CodeableConcept
* component[aorticValvesInsufficiency]. value[x] from AorticValvesInsufficiencyVS


* component[mitralValveMainGradient].code = $loinc#18059-6
* component[mitralValveMainGradient].code 1..1
* component[mitralValveMainGradient] ^short = "Gradiente principal de valvula Mitral"
* component[mitralValveMainGradient].code ^definition = "Gradiente principal de valvula Mitral"
* component[mitralValveMainGradient].value[x] only Quantity 
* component[mitralValveMainGradient].value[x].value 1..1 


* component[mitralValveMediumGradient].code = $snomed#20250-7
* component[mitralValveMediumGradient].code 1..1
* component[mitralValveMediumGradient] ^short = "Gradiente media de valvula Mitral"
* component[mitralValveMediumGradient].code ^definition = "Gradiente media de valvula Mitral"
* component[mitralValveMediumGradient].value[x] only Quantity 


* component[mitralValveMaximumSpeed].code = $loinc#80070-6
* component[mitralValveMaximumSpeed].code 1..1
* component[mitralValveMaximumSpeed] ^short = "Máxima velocidad de valvula Mitral"
* component[mitralValveMaximumSpeed].code ^definition = "Máxima velocidad de valvula Mitral"
* component[mitralValveMaximumSpeed].value[x] only Quantity 
* component[mitralValveMaximumSpeed].value[x].value 1..1 

* component[mitralValveInsufficiency].code = $loinc#18113-1
* component[mitralValveInsufficiency].code 1..1
* component[mitralValveInsufficiency] ^short = "Insuficiencia de valvula mitral"
* component[mitralValveInsufficiency].code ^definition = "Insuficiencia de valvula mitral"
* component[mitralValveInsufficiency].value[x] only CodeableConcept 
* component[mitralValveInsufficiency].value[x] from MitralValveInsufficiencyVS

* component[mitralValveArea].code = $loinc#LP6584-9
* component[mitralValveArea].code 1..1
* component[mitralValveArea] ^short = "Área de valvula mitral"
* component[mitralValveArea].code ^definition = "Área de valvula mitral"
* component[mitralValveArea].value[x] only Quantity 


* component[tricuspideValvesInsuficiency].code = $loinc#18115-6
* component[tricuspideValvesInsuficiency].code 1..1
* component[tricuspideValvesInsuficiency] ^short = "Insuficiencia de valvula Tricuspide"
* component[tricuspideValvesInsuficiency].code ^definition = "Insuficiencia de valvula Tricuspide"
* component[tricuspideValvesInsuficiency].value[x] only CodeableConcept
* component[tricuspideValvesInsuficiency].value[x] from TricuspideValvesInsuficiencyVS


/**value[x] only CodeableConcept  
*value[x].coding 0..5*/



* focus only Reference(ValveProcedure)
* focus 1..1
