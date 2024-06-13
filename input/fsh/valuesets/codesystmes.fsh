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


CodeSystem: ValvesCS
Id: ValvesCS
Title: "Válvulas usadas en el procedimiento de cardiocirugía"
Description: "Válvulas usadas en el procedimiento de cardiocirugía"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #34202007 "Válvula aórtica"
* #91134007 "Válvula mitral"
* #46030003 "Válvula tricúspide"
* #39057004 "Válvula pulmonar"

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

* #1 "elective"
* #2 "urgent"
* #3 "emergency"
* #4 "salvage"


CodeSystem: AnginaObservationCS
Id: AnginaObservationCS
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

* #272519000 "CCS 0"
* #61490001 "CCS 1"
* #41334000 "CCS 2"
* #85284003 "CCS 3"
* #89323001 "CCS 4"


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

CodeSystem: PreviousIMCS
Id: PreviousIMCS
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


CodeSystem: MostRecentIMCS
Id: MostRecentIMCS
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

CodeSystem: SmokingObservationCS
Id: SmokingObservationCS
Title: "Condición de fumador"
Description: "Categorización utilizada para describir la condición de fumador del paciente"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #8392000 "No fumador"
* #8517006 "Ex fumador"
* #77176002 "Fumador"


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

* #371632003 "coma (trastorno)"
* #230690007 "accidente cerebrovascular (trastorno)"
* #36179005 "síndrome de déficit neurológico isquémico reversible (trastorno)"
* #266257000 "ataque isquémico transitorio (trastorno)"
* #415582006 "estenosis (anomalía morfológica)"

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

* #LA137-2	"None"
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

CodeSystem: EjectionFractionCS
Id: EjectionFractionCS
Title: "Fracción de eyección"
Description: "Fracción de eyección"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #20572008 "Good"
* #6736007  "Moderate severity"
* #272519000 "Absence findings"
* #863932003 "Left ventricular ejection fraction decreased"


CodeSystem: ValveInsuficiencyCS
Id: ValveInsuficiencyCS
Title: "Insuficiencia de válvula"
Description: "Insuficiencia de válvula"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #272519000 "None"
* #86137003  "Trivial"
* #255604002  "Mild"
* #6736007  "Moderate"
* #24484000  "Severe"


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




CodeSystem: CirculatoryAssistancesCS
Id: CirculatoryAssistancesCS
Title: "Asistencias circulatorias"
Description: "Asistencias circulatorias"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-22"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #260413007 "none"
* #233573008  "Extracorporeal membrane oxygenation"
* #14414005 "Peripheral"
* #26216008  "Central"
* #74964007 "Other"
* #362981000 "other value"

CodeSystem: VenousCannulationsCS
Id: VenousCannulationsCS
Title: "Canulación venosa"
Description: "Canulación venosa"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-22"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #73829009 "right_atrium"
* #787588007 "bicava "
* #83419000 "femoral"
* #74964007 "Other"
* #362981000 "other value"



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


* #1 "ascending_aorta"
* #2 "TABC"
* #3 "femoral"
* #4 "subde"
* #5 "Other"
* #6 "other value"

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



CodeSystem: ReasonForBallonUsageCS
Id: ReasonForBallonUsageCS
Title: "Razón para utilizar balón"
Description: "Razón para utilizar balón"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #385432009 "Not applicable"
* #422773005  "Haemodynamic instability" 
* #11101003  "PTCA support"
* #63697000  "CPB wean"
* #4557003  "Unstable Angina"
* #262073000  "Prophylactic"


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


CodeSystem: CardioplegiaInfusionModeCS
Id: CardioplegiaInfusionModeCS
Title: "Observación del modo de infución de cardioplegía en perfusión"
Description: "Observación del modo de infución de cardioplegía en perfusión"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"


* #385432009 "Not Applicable"
* #103362004 "Antegrade" 
* #103363009 "Retrograde"

CodeSystem: CardioplegiaRhytmCS
Id: CardioplegiaRhytmCS
Title: "Observación del ritmo de cardioplegía en perfusión"
Description: "Observación del ritmo de cardioplegía en perfusión"
* ^experimental = false
* ^caseSensitive = true
* ^status = #active
* ^date = "2024-04-16"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* #385432009 "Not Applicable"
* #7087005 "Intermitente" 
* #255238004 "continuo"

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

* #1 "no_arteries_were_used"
* #2 "right_radial"
* #3 "right_GEPA"
* #4 "left_AMI"
* #5 "left_radial"
* #6 "other"
* #7 "other_value"

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

* #1 "none"
* #2 "left_ventricular_aneurysm_repair"
* #3 "ventricular_septal_defect_repair"
* #4 "interauricular_defect"
* #5 "batista"
* #6 "congenital"
* #7 "transmiocardial_laser_revascularisation"
* #8 "cardiac_trauma"
* #9 "cardiac_transplant"
* #10 "permanent_pacemarker"
* #11 "circulatory_assist_device_implant"
* #12 "auricular_fibrillation_treatment"
* #13 "cardiac_tumor"
* #14 "other"
* #15 "other_value"

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

* #1 "none"
* #2 "aorta"
* #3 "carotid_endarterectomy"
* #4 "other_toracic"
* #5 "other_vascular"
* #6 "other_value"

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

* #1 "root"
* #2 "ascending"
* #3 "descending"
* #4 "abdominal"
* #5 "arch"

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

* #1 "interposition_tube_graft"
* #2 "tube_graft_and_separate_AVR"
* #3 "root_replacement_graft"
* #4 "root_replacement_preservation"
* #5 "root_replacement_homograft"
* #6 "ross_procedure"
* #7 "aortic_patch_graft"
* #8 "valsalva_sinus_repair"
* #9 "aortoplastic_reduction"


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

* #1 "surgeon 1"
* #2 "surgeon 2"
* #3 "surgeon 3"
* #4 "anesthetist"
* #5 "perfusionist"



