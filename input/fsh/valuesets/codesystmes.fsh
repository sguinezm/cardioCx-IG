CodeSystem: CardioCompositionSectionCodesCS
Id: CardioCompositionSectionCodesCS
Title: "Códigos para secciones de composition para cardio cirugías."
Description: "Códigos para secciones de composition para cardio cirugías."
* ^experimental = false
* ^caseSensitive = true
* ^version = "0.1"
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "PatientSection"
* #2 "QuestionnaireSection"
* #3 "PractitionerSection"
* #4 "ProcedureCardio"
* #5 "ValveProcedureSection"
* #6 "ProcedureEcocardio"
* #7 "PerfusionProcedureSection"


CodeSystem: PreviousAngioplastyCS
Id: PreviousAngioplastyCS
Title: "Códigos para tiempo transcurrido de angioplastias previas."
Description: "Códigos para tiempo transcurrido de angioplastias previas."
* ^experimental = false
* ^caseSensitive = true
* ^version = "0.1"
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #1 "No PA"
* #2 "PA < 24 hours before surgery; same admission"
* #3 "PA > 24 hours before surgery; same admission"
* #4 "PA > 24 hours before surgery; previous admission"


CodeSystem: PreviousSurgeriesCS
Id: PreviousSurgeriesCS
Title: "Códigos para las cirugías realizadas previamente"
Description: "Códigos para las cirugías realizadas previamente"
* ^experimental = false
* ^caseSensitive = true
* ^version = "0.1"
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #1 "None"
* #2 "Valve"
* #3 "CABG"
* #4 "Other"

CodeSystem: NumberOfPreviousCardiacSurgeriesCS
Id: NumberOfPreviousCardiacSurgeriesCS
Title: "Códigos para definir el número de cirugías cardíacas previas"
Description: "Códigos para definir el número de cirugías cardíacas previas"
* ^experimental = false
* ^caseSensitive = true
* ^version = "0.1"
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #1 "One"
* #2 "Two"
* #3 "Three"
* #4 "Four"
* #5 "Five"


CodeSystem: HeartCatheterizationCS
Id: HeartCatheterizationCS
Title: "Cateterizaciones cardíacas"
Description: "Códigos en la que se reportan las cateterizaciones cardíacas"
* ^experimental = false
* ^caseSensitive = true
* ^version = "0.1"
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "never"
* #2 "this_admission"
* #3 "previous_admission"


CodeSystem: UrgencyLevelCS
Id: UrgencyLevelCS
Title: "Niveles de urgencia del procedimiento"
Description: "Códigos para definir el nivel de urgencia con la que se le realiza el procedimiento al paciente"
* ^experimental = false
* ^caseSensitive = true
* ^version = "0.1"
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "emergency"
* #2 "elective"

CodeSystem: FunctionalCapacityCS
Id: FunctionalCapacityCS
Title: "Escala de dolor de angina"
Description: "Dolor reportado por el paciente relacionado con una angina, en una escala."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #420300004 "Clasificación de la Asociación Cardiológica de Nueva York - Clase I (hallazgo)"
* #421704003 "Clasificación de la Asociación Cardiológica de Nueva York - Clase II (hallazgo)"
* #420913000 "Clasificación de la Asociación Cardiológica de Nueva York - Clase III (hallazgo)"
* #422293003 "Clasificación de la Asociación Cardiológica de Nueva York - Clase IV (hallazgo)"

CodeSystem: PreviousMICS
Id: PreviousMICS
Title: "Número de infartos al miocardio previos"
Description: "categorización del número de infartos al miocardio previos."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #"none" "Ninguno"
* #"one" "Uno"
* #"two or more" "Dos o más"
* #"unknown" "Desconocido"


CodeSystem: MostRecentMICS
Id: MostRecentMICS
Title: "Infarto al miocardio más reciente"
Description: "Categorización utilizada para describir cuándo fue el IM más reciente."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #"No MI" "Sin infartos al miocardio"
* #"< 6 hours before operation" "< 6 horas antes de la operación"
* #"6-24 hours before operation" "6-24 horas antes de la operación"
* #"1-7 days before operation" "1-7 días antes de la operación"
* #"8-21 days before operation" "8-21 días antes de la operación"
* #"22-90 days before operation" "22-90 días antes de la operación"
* #">90 days before operation" ">90 días antes de la operación"


CodeSystem: DiabetesConditionCS
Id: DiabetesConditionCS
Title: "Presencia de diabetes en el paciente"
Description: "Categorización utilizada para descibir si el paciente tiene (o no) diabetes y cuál es su tratamiento"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

 
* #225302006 "Insulin regime (regime/therapy)"
* #170746002 "Diabetic on oral treatment (finding)"
* #418995006 "Feeding and dietary regime (regime/therapy)"

CodeSystem: CLDConditionCS
Id: CLDConditionCS
Title: "Presencia de enfermedad pulmonar crónica"
Description: "Categorización utilizada para descibir si el paciente tiene (o no) alguna enfermedad pulmonar crónica"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

 
* #195967001 "Asthma (disorder)"
* #13645005 "Chronic obstructive pulmonary disease (disorder)"


CodeSystem: ExtracardiacArteriopathyCS
Id: ExtracardiacArteriopathyCS
Title: "Presencia de arteriopatía extracardíaca"
Description: "Categorización utilizada para descibir si el paciente tiene (o no) alguna arteriopatía extracardíaca  "
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #400047006 "Peripheral vascular disease (disorder) "
* #62914000 "Cerebrovascular disease (disorder)"


CodeSystem: NephropathyConditionCS
Id: NephropathyConditionCS
Title: "Presencia de arteriopatía extracardíaca"
Description: "Categorización utilizada para descibir si las nefropatías del paciente"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "None"
* #2 "Functional transplant"
* #3 "creatinene > 200 umol/l"
* #4 "dialisis acute renal failure"
* #5 "dialisis chronic renal failure"


CodeSystem: TypeOfDiseaseConditionCS
Id: TypeOfDiseaseConditionCS
Title: "Presencia de enfermedad"
Description: "Categorización del tipo de enfermedad"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #371632003 "coma"
* #230690007 "Cerebrovascular accident"
* #36179005 "Reversible ischemic neurologic deficit syndrome"
* #266257000 "Transient ischemic attack (disorder)"
* #415582006 "Stenosis"

CodeSystem: NumberDiseasedCoronarySegmentsCS
Id: NumberDiseasedCoronarySegmentsCS
Title: "Número de vasos con problemas"
Description: "Número de vasos con problemas"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #LA137-2	    "None"
* #LA24356-0	"1 vessel without left main coronary artery"
* #LA24358-6	"2 vessels without left main coronary artery"
* #LA24360-2	"3 vessels without left main coronary artery"
* #LA24354-5	"Left main coronary artery alone"
* #LA24355-2	"1 vessel and left main coronary artery"
* #LA24357-8	"2 vessels and left main coronary artery"
* #LA24359-4	"3 vessels and left main coronary artery"
* #LA13538-6    "Not tested"

CodeSystem: LeftMainCoronaryDiseaseCS
Id: LeftMainCoronaryDiseaseCS
Title: "Presencia de enfermedad en arteria coronaria principal izquierda"
Description: "Presencia de enfermedad en arteria coronaria principal izquierda"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "No LMS disease|LMS disease <= 50% diameter stenosis"
* #2 "LMS disease > 50% diameter stenosis"
* #3 "Not Investigated"


CodeSystem: ValvesNameCS
Id: ValvesNameCS
Title: "Válvulas"
Description: "Válvulas"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "Anillos MITRAL CARPENTIER - EDWARDS PHYSIO / MITRAL"
* #2 "Anillos MITRAL SORIN (Carbomedils Annuloflo)"
* #3 "Anillos MITRAL ST Jude (Rigid)"
* #4 "Anillos TRICUSPIDEO (Carpentier Edwards classic)"
* #5 "Anillos TRICUSPIDEO (MC 3 Eduwards)"
* #6 "No aplica"
* #7 "Válvulas Biológica Medtronic Mitral (Mosaic)"
* #8 "Válvulas Biológica Aórtica (Carpentier Edwards Perimount)"
* #9 "Válvulas Biológica Medtronic Aórtica (Hancock)"
* #10 "Válvulas Biológica Medtronic Aórtica (Mosaic)"
* #11 "Válvulas Biológica Mitral (Carpentier Edwards Perimount)"
* #12 "Válvulas Biológica ST Judes Medical Aórtica (EPIC)"
* #13 "Válvulas Biológica ST Judes Medical Mitral (EPIC)"
* #14 "Válvulas Mecánica Aórtica (Carbomedics)"
* #15 "Válvulas Mecánica Medtronic Aórtica (ATS)"
* #16 "Válvulas Mecánica Mitral (Carbomedics)"
* #17 "Válvulas Mecánica ST Judes Medical Aórtica"
* #18 "Válvulas Mecánica ST Judes Medical Mitral"
* #19 "Válvulas Mecánicas Medtronic Mitral (ATS)"
* #20 "Válvulas SORIN / CARBOMEDICS CARBO - SEAL - AORTICOS"


CodeSystem: ExplantTypeCS
Id: ExplantTypeCS
Title: "Tipos de explantes."
Description: "Tipos de explantes."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #262005006  "Not applied"
* #263818007  "Native"
* #261018001  "Mechanical" 
* #12893009  "Biologic"
* #15879007  "Autograft"
* #256681002  "Allograft of skin"
* #72070000  "Ring, device"

CodeSystem: ReoperationValveReasonCS
Id: ReoperationValveReasonCS
Title: "Razón por la cual la válvula es reoperada."
Description: "Razón por la cual la válvula es reoperada."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #1 "Not Applicable"
* #2 "Thrombosis"
* #3 "Dehiscence"
* #4 "Embosis"
* #5 "Infection"
* #6 "Intrinsic Failure"
* #7 "Haemolysis"
* #8 "Other Reason"




CodeSystem: ArterialCannulationsCS
Id: ArterialCannulationsCS
Title: "Canulación arterial"
Description: "Canulación arterial"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-22"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #1 "Ascending aorta"
* #2 "TABC"
* #3 "Femoral"
* #4 "Subde"
* #5 "Other"


CodeSystem: NativeValvePathologyCS
Id: NativeValvePathologyCS
Title: "Valores para la patología de válvula nativa."
Description: "Valores aceptados para la presencia de alguna patología de válvula nativa."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #1  "Reumatic"
* #2  "Degenerative" 
* #3  "Congenital"
* #4  "Myxomatous"
* #5  "Endocarditis"
* #6  "Traumatic"
* #7  "Other"


CodeSystem: ExtracorporealCirculationCS
Id: ExtracorporealCirculationCS
Title: "Códigos para la circulación extracorpórea."
Description: "Códigos para la circulación extracorpórea."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #1 "No"
* #2  "Yes-planned" 
* #3  "Yes-Conversion from off-pump"


CodeSystem: CardioplegiaSolutionCS
Id: CardioplegiaSolutionCS
Title: "Solución cardioplegia."
Description: "Solución cardioplegia."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #1 "Not Applicable"
* #2  "Blood" 
* #3  "Crystalloid"

CodeSystem: CardioplegiaTemperatureCS
Id: CardioplegiaTemperatureCS
Title: "Temperatura de la cardioplejía"
Description: "Temperatura de la cardioplejía"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #1 "Not Applicable"
* #2  "Warm" 
* #3  "Cold"



CodeSystem: PreoperativeHeartRythmObservationCS
Id: PreoperativeHeartRythmObservationCS
Title: "Ritmo del corazón en preoperación"
Description: "Ritmo del corazón en preoperación"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #419351001  "Sinus (morphologic abnormality)"
* #25569003 "Ventricular tachycardia (disorder)"
* #49436004  "Atrial fibrillation (disorder)"
* #27885002  "Complete atrioventricular block (disorder)"
* #15976004  "Abnormal circadian rhythm (finding)"

CodeSystem: ArteriesUsedAsConduitsCS
Id: ArteriesUsedAsConduitsCS
Title: "arterias usadas como conductos"
Description: "arterias usadas como conductos"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "No arteries were used"
* #2 "Right radial"
* #3 "Right GEPA"
* #4 "Left AMI"
* #5 "Right AMI"
* #6 "Left radial"
* #7 "Other"



CodeSystem: OtherCardiacProcedureDetailsCS
Id: OtherCardiacProcedureDetailsCS
Title: "CodeSystem para otros procedimientos cardiacos."
Description: "CodeSystem para otros procedimientos cardiacos."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "None"
* #2 "Left ventricular aneurysm repair"
* #3 "Ventricular septal defect repair"
* #4 "Interauricular defect"
* #5 "Batista"
* #6 "Congenital"
* #7 "Transmiocardial laser revascularisation"
* #8 "Cardiac trauma"
* #9 "Cardiac transplant"
* #10 "Permanent pacemarker"
* #11 "Circulatory assist device implant"
* #12 "Auricular fibrillation treatment"
* #13 "Cardiac tumor"
* #14 "Other"
* #15 "Other value"

CodeSystem: OtherNonCardiacProcedureDetailsCS
Id: OtherNonCardiacProcedureDetailsCS
Title: "CodeSystem para otros procedimientos no cardiacos."
Description: "CodeSystem para otros procedimientos no cardiacos."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "None"
* #2 "Aorta"
* #3 "Carotid endarterectomy"
* #4 "Other toracic"
* #5 "Other vascular"
* #6 "Other value"

CodeSystem: AortaSegmentsCS
Id: AortaSegmentsCS
Title: "CodeSystem para los segmentos de la Aorta."
Description: "CodeSystem para los segmentos de la Aorta."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "Root"
* #2 "Ascending"
* #3 "Descending"
* #4 "Abdominal"
* #5 "Arch"

CodeSystem: AorticProceduresCS
Id: AorticProceduresCS
Title: "CodeSystem para los procedimientos sobre la Aorta."
Description: "CodeSystem para los procedimientos sobre la Aorta."
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "Interposition tube graft"
* #2 "Tube graft and separate AVR"
* #3 "Root replacement graft"
* #4 "Root replacement preservation"
* #5 "Root replacement homograft"
* #6 "Ross procedure"
* #7 "Aortic patch graft"
* #8 "Valsalva sinus repair"
* #9 "Aortoplastic reduction"


CodeSystem: PractitionerRoleCardioCS
Id: PractitionerRoleCardioCS
Title: "CodeSystem para los roles"
Description: "CodeSystem para los roles"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "Surgeon 1"
* #2 "Surgeon 2"
* #3 "Surgeon 3"
* #4 "Anesthetist"
* #5 "Perfusionist"


CodeSystem: CoronarySurgeriesCS
Id: CoronarySurgeriesCS
Title: "CodeSystem para los coronary surgeries"
Description: "CodeSystem para los coronary surgeries"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "No arteries were used"
* #2 "Right radial"
* #3 "Right GEPA"
* #4 "Left AMI"
* #5 "Right AMI"
* #6 "Left radial"
* #7 "Other"
* #8 "Other value"

CodeSystem: UrgencyOfSurgeryCS
Id: UrgencyOfSurgeryCS
Title: "CodeSystem para la urgencia de la cirugía"
Description: "CodeSystem para la urgencia de la cirugía"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #1 "elective"
* #2 "urgent"
* #3 "emergency"
* #4 "salvage"



CodeSystem: ProcedureTypeCS
Id: ProcedureTypeCS
Title: "CodeSystem para tipo de procedimiento"
Description: "CodeSystem para tipo de procedimiento"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #232717009 "CABG"
* #17401000 "valve"
* #773996000 "TAVI"
* #243781005 "ECMO"
* #32413006 "Cardiac Transplant" 
* #360064003 "Ventricular Assistance"



CodeSystem: AorticValvesInsufficiencyCS
Id: AorticValvesInsufficiencyCS
Title: "Valores de insuficiencia"
Description: "Valores de insuficiencia"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #0  "0"
* #1  "1"
* #2  "2"
* #3  "3"
* #4  "4"

CodeSystem: MitralValveInsufficiencyCS
Id: MitralValveInsufficiencyCS
Title: "Valores de insuficiencia"
Description: "Valores de insuficiencia"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #0  "0"
* #1  "1"
* #2  "2"
* #3  "3"
* #4  "4"

CodeSystem: TricuspideValvesInsuficiencyCS
Id: TricuspideValvesInsuficiencyCS
Title: "Valores de insuficiencia"
Description: "Valores de insuficiencia"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #0  "0"
* #1  "1"
* #2  "2"
* #3  "3"
* #4  "4"



