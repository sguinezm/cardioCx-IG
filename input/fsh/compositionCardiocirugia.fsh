Alias: $observation-bodyheight = http://hl7.org/fhir/StructureDefinition/bodyheight
Alias: $observation-bodyweight = http://hl7.org/fhir/StructureDefinition/bodyweight

Profile: CompositionCardiocirugia
Parent: Composition
Title: "Composition Cardiocirugia"
Description: "Recurso que contiene las referencias identificadas por secciones a los recursos necesarios para representar la información de cirugias cardiacas."


* section 1..10 MS
* section ^slicing.discriminator.type = #pattern
* section ^slicing.discriminator.path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Secciónes del documento."
* section ^definition = "Sección del documento que contiene los datos asociados a la atención clínica."
* section.code 1..1 MS
* section.code from CardioCompositionSectionCodesVS (required)
* section contains
    patientSection 1..1 MS and
    QuestionnaireSection 0..1 MS and
    PractitionerSection 1..1 MS and
    ProcedureCardio 1..1 MS and
    OrganizationSection 1..1 MS and 
    ValveProcedureSection 1..1 MS and 
    ProcedureEcocardio 1..1 MS and 
    PerfusionProcedureSection 1..1 MS 

* section[patientSection] ^short = "Sección del paciente"
* section[patientSection] ^definition = "Información acerca del paciente"
* section[patientSection].code = #1
* section[patientSection].focus only Reference(PatientCardio)

* section[patientSection].entry ^slicing.discriminator.type = #profile
* section[patientSection].entry ^slicing.discriminator.path = "resolve()"
* section[patientSection].entry ^slicing.rules = #open
* section[patientSection].entry 3..*
* section[patientSection].entry contains ageObservation 1..1 and
                                        bodyheightObservation 1..1 and
                                        bodyweightObservation 1..1 and
                                        bloodTypeObservation 0..1 and 
                                        emergencyContact 0..* and 
                                        DiabetesCondition 1..1  and
                                        HypertensionCondition 1..1 and 
                                        HypercholesterolemiaCondition 1..1 and
                                        CarotidBruitCondition 1..1 and
                                        neurologicDisfunction 1..1 and
                                        ChronicLungDiseaseCondition 1..1 and
                                        ExtraCardiacArteriopathyCondition 1..1 and
                                        NephropathyCondition 1..1 and
                                        TypeOfDiseaseCondition 1..1 and 
                                        PacksPerYear 1..1 and 
                                        SmokingHistory 1..1


* section[patientSection].entry[ageObservation] only Reference(Observation)
* section[patientSection].entry[ageObservation] ^short = "Referencia  al recurso que contiene la observación de la edad del paciente"
* section[patientSection].entry[bodyheightObservation] only Reference($observation-bodyheight)
* section[patientSection].entry[bodyheightObservation] ^short = "Referencia  al recurso que contiene la observación de altura del paciente"
* section[patientSection].entry[bodyweightObservation] only Reference($observation-bodyweight)
* section[patientSection].entry[bodyweightObservation] ^short = "Referencia  al recurso que contiene la observación sobre el peso del paciente"
* section[patientSection].entry[bloodTypeObservation] only Reference(BloodTypeObservation)
* section[patientSection].entry[bloodTypeObservation] ^short = "Referencia  al recurso que contiene la observación que hace referencia al tipo de sangre del paciente"
* section[patientSection].entry[emergencyContact] only Reference(RelatedPerson)
* section[patientSection].entry[emergencyContact] ^short = "Se referencia a las personas que pueden ser contactadas al momento de una emergencia"
* section[patientSection].entry[DiabetesCondition] only Reference(DiabetesCondition)
* section[patientSection].entry[DiabetesCondition] ^short = "Condición de paciente con diabetes"
* section[patientSection].entry[HypertensionCondition] only Reference(HypertensionCondition)
* section[patientSection].entry[HypertensionCondition] ^short = "Condición de paciente con hipertensión"
* section[patientSection].entry[HypercholesterolemiaCondition] only Reference(HypercholesterolemiaCondition)
* section[patientSection].entry[HypercholesterolemiaCondition] ^short = "Condición de paciente con hipercolesterolemia"
* section[patientSection].entry[CarotidBruitCondition] only Reference(CarotidBruitCondition)
* section[patientSection].entry[CarotidBruitCondition] ^short = "Condición de paciente con soplos carotideos"
* section[patientSection].entry[neurologicDisfunction] only Reference(NeurologicDisfunctionCondition)
* section[patientSection].entry[neurologicDisfunction] ^short = "Condición de paciente con disfunción neurológica"
* section[patientSection].entry[ChronicLungDiseaseCondition] only Reference(ChronicLungDiseaseCondition)
* section[patientSection].entry[ChronicLungDiseaseCondition] ^short = "Condición de enfermedad pulmonar crónica"
* section[patientSection].entry[ExtraCardiacArteriopathyCondition] only Reference(ExtraCardiacArteriopathyCondition)
* section[patientSection].entry[ExtraCardiacArteriopathyCondition] ^short = "Condición de arteriopatía extra cardíaca"
* section[patientSection].entry[NephropathyCondition] only Reference(NephropathyCondition)
* section[patientSection].entry[NephropathyCondition] ^short = "Nefropatías del paciente"
* section[patientSection].entry[TypeOfDiseaseCondition] only Reference(TypeOfDiseaseCondition)
* section[patientSection].entry[TypeOfDiseaseCondition] ^short = "Tipo de enfermedad"
* section[patientSection].entry[PacksPerYear] only Reference(PacksPerYearObservation)
* section[patientSection].entry[PacksPerYear] ^short = "Observación de packs por año"
* section[patientSection].entry[SmokingHistory] only Reference(SmokingObservation)
* section[patientSection].entry[SmokingHistory] ^short = "Observación de historial fumador"



* section[QuestionnaireSection] ^short = "Cuestionario realizado al paciente."
* section[QuestionnaireSection] ^definition = "Antecedentes de intervenciones previas para realizar el procedimiento al paciente."
* section[QuestionnaireSection].code = #2
* section[QuestionnaireSection].focus only Reference(Procedure)
* section[QuestionnaireSection].entry ^slicing.discriminator.type = #profile
* section[QuestionnaireSection].entry ^slicing.discriminator.path = "resolve()"
* section[QuestionnaireSection].entry ^slicing.rules = #open
* section[QuestionnaireSection].entry 1..1
* section[QuestionnaireSection].entry contains Questionnaire 1..1
* section[QuestionnaireSection].entry[Questionnaire] only Reference(Questionnaire)
* section[QuestionnaireSection].entry[Questionnaire] ^short = "Referencia al recurso que contiene la información de antecedentes."

* section[PractitionerSection] ^short = "Profesionales involucrados."
* section[PractitionerSection] ^definition = "Sección en la que se definen los profesionales involucrados en el procedimiento."
* section[PractitionerSection].code = #3
* section[PractitionerSection].focus only Reference(Practitioner)
* section[PractitionerSection].entry ^slicing.discriminator.type = #profile
* section[PractitionerSection].entry ^slicing.discriminator.path = "resolve()"
* section[PractitionerSection].entry ^slicing.rules = #open
* section[PractitionerSection].entry 3..5
* section[PractitionerSection].entry contains SurgeonPractitioner 1..3
* section[PractitionerSection].entry[SurgeonPractitioner] only Reference(SurgeonPractitionerCardio)
* section[PractitionerSection].entry[SurgeonPractitioner] ^short = "Referencia al recurso del cirujano en cardiocirugía."
* section[PractitionerSection].entry contains PerfusionistPractitioner 1..1
* section[PractitionerSection].entry[PerfusionistPractitioner] only Reference(SurgeonPractitionerCardio)
* section[PractitionerSection].entry[PerfusionistPractitioner] ^short = "Referencia al recurso del cirujano en cardiocirugía para difinir el perfusionista."
* section[PractitionerSection].entry contains AntestesistPractitioner 1..1
* section[PractitionerSection].entry[AntestesistPractitioner] only Reference(SurgeonPractitionerCardio)
* section[PractitionerSection].entry[AntestesistPractitioner] ^short = "Referencia al recurso del cirujano en cardiocirugía para difinir el anestesista."




* section[ProcedureCardio] ^short = "Historial cardíaco"
* section[ProcedureCardio] ^definition = "Sección en la que se describe el historial cardiaco del paciente."
* section[ProcedureCardio].focus only Reference(Observation)
* section[ProcedureCardio].entry ^slicing.discriminator.type = #profile
* section[ProcedureCardio].entry ^slicing.discriminator.path = "resolve()"
* section[ProcedureCardio].entry ^slicing.rules = #open
* section[ProcedureCardio].entry 4..5  
* section[ProcedureCardio].entry contains AnginaObservation 1..1 and
                                                    FunctionalCapacityObservation 1..1 and
                                                    PreviousIMObservation 1..1 and
                                                    MostRecentIMObservation 1..1 and
                                                    CongestiveHeartFailureCondition 0..1 and 
                                                    LastCatheterizationObservation 0..1 and 
                                                    DiseasedCoronarySegmentObservation 0..1 and 
                                                    EjectionFractionObservation 0..1 and 
                                                    EjectionFractionValueObservation 0..1 and 
                                                    SystolicPressureObservation 0..1 and 
                                                    AVGradient 0..1 and
                                                    LVEDPObservation 0..1 and 
                                                    PAWPObservation 0..1 and 
                                                    NumberOfDistalArterialAnastomoses 0..1 and 
                                                    NumberOfDistalVenousAnastomoses 0..1 and 
                                                    ArteriesUsedAsConduitsObservation 0..1 
 
* section[ProcedureCardio].entry[AnginaObservation] only Reference(AnginaObservation)
* section[ProcedureCardio].entry[AnginaObservation] ^short = "Angina de pecho reportada por el paciente"
* section[ProcedureCardio].entry[FunctionalCapacityObservation] only Reference(FunctionalCapacityObservation)
* section[ProcedureCardio].entry[FunctionalCapacityObservation] ^short = "Capacidad funcional del paciente"
* section[ProcedureCardio].entry[PreviousIMObservation] only Reference(PreviousIMObservation)
* section[ProcedureCardio].entry[PreviousIMObservation] ^short = "Número de infartos al miocardio previos"
* section[ProcedureCardio].entry[MostRecentIMObservation] only Reference(MostRecentIMObservation)
* section[ProcedureCardio].entry[MostRecentIMObservation] ^short = "Días transcurridos desde el último infarto al miocardio"
* section[ProcedureCardio].entry[CongestiveHeartFailureCondition] only Reference(CongestiveHeartFailureCondition)
* section[ProcedureCardio].entry[CongestiveHeartFailureCondition] ^short = "Se indica que el paciente presenta falla cardíaca congestiva"
* section[ProcedureCardio].entry[LastCatheterizationObservation] only Reference(LastCatheterizationObservation)
* section[ProcedureCardio].entry[LastCatheterizationObservation] ^short = "Se indica que la fecha en la que el paciente tuvo su última cateterización"
* section[ProcedureCardio].entry[DiseasedCoronarySegmentObservation] only Reference(DiseasedCoronarySegmentObservation)
* section[ProcedureCardio].entry[DiseasedCoronarySegmentObservation] ^short = "Observación del número de vasos con problemas."
* section[ProcedureCardio].entry[EjectionFractionObservation] only Reference(EjectionFractionObservation)
* section[ProcedureCardio].entry[EjectionFractionObservation] ^short = "Observación de la última fracción de eyección."
* section[ProcedureCardio].entry[EjectionFractionValueObservation] only Reference(EjectionFractionValueObservation)
* section[ProcedureCardio].entry[EjectionFractionValueObservation] ^short = "Observación del valor de la última fracción de eyección"
* section[ProcedureCardio].entry[SystolicPressureObservation] only Reference(SystolicPressureObservation)
* section[ProcedureCardio].entry[SystolicPressureObservation] ^short = "Presión sistólica observación"
* section[ProcedureCardio].entry[AVGradient] only Reference(AVGradient)
* section[ProcedureCardio].entry[AVGradient] ^short = "Gradiente AV"
* section[ProcedureCardio].entry[LVEDPObservation] only Reference(LVEDPObservation)
* section[ProcedureCardio].entry[LVEDPObservation] ^short = "Presión de Fin de Diástole del Ventrículo Izquierdo"
* section[ProcedureCardio].entry[PAWPObservation] only Reference(PAWPObservation)
* section[ProcedureCardio].entry[PAWPObservation] ^short = "Medida de la presión de la aurícula izquierda (LA) o presión de enclavamiento capilar pulmonar (PAWP)"
* section[ProcedureCardio].entry[NumberOfDistalArterialAnastomoses] only Reference(NumberOfDistalArterialAnastomosesObservation)
* section[ProcedureCardio].entry[NumberOfDistalArterialAnastomoses] ^short = "Observación de número de arterias distal"
* section[ProcedureCardio].entry[NumberOfDistalVenousAnastomoses] only Reference(NumberOfDistalVenousAnastomoses)
* section[ProcedureCardio].entry[NumberOfDistalVenousAnastomoses] ^short = "Observación de número de arterias venosas"
* section[ProcedureCardio].entry[ArteriesUsedAsConduitsObservation] only Reference(ArteriesUsedAsConduitsObservation)
* section[ProcedureCardio].entry[ArteriesUsedAsConduitsObservation] ^short = "Observación de arterias usadas como conductos"





* section[ValveProcedureSection] ^short = "Sección de válvula"
* section[ValveProcedureSection] ^definition = "Información acerca de vávula del paciente"
* section[ValveProcedureSection].code = #1
* section[ValveProcedureSection].focus only Reference(ValveProcedure)

* section[ValveProcedureSection].entry ^slicing.discriminator.type = #profile
* section[ValveProcedureSection].entry ^slicing.discriminator.path = "resolve()"
* section[ValveProcedureSection].entry ^slicing.rules = #open
* section[ValveProcedureSection].entry 0..*
* section[ValveProcedureSection].entry contains stenosis 0..1 and 
                                                valve 0..1 and 
                                                insuficiency 0..1 and 
                                                valveName 0..1 and 
                                                valveSize 0..1 and 
                                                explantType 0..1 and 
                                                reoperationValveReason 0..1 and
                                                valveProcedure 0..1 and 
                                                implantType 0..1 and 
                                                endocarditisInfecciosa 0..1 and 
                                                nativeValvePathology 0..1 

* section[ValveProcedureSection].entry[stenosis] only Reference(StenosisCondition)
* section[ValveProcedureSection].entry[stenosis] ^short = "Indica la presencia de stenosis"

* section[ValveProcedureSection].entry[valve] only Reference(ValveProcedure)
* section[ValveProcedureSection].entry[valve] ^short = "Indica la presencia de stenosis"

* section[ValveProcedureSection].entry[insuficiency] only Reference(ValveProcedure)
* section[ValveProcedureSection].entry[insuficiency] ^short = "Indica la presencia de insuficiencia"

* section[ValveProcedureSection].entry[valveName] only Reference(ValveDevice)
* section[ValveProcedureSection].entry[valveName] ^short = "Indica el nombre de la válvula"

* section[ValveProcedureSection].entry[valveSize] only Reference(ValveDevice)
* section[ValveProcedureSection].entry[valveSize] ^short = "Indica el tamaño de la válvula"

* section[ValveProcedureSection].entry[explantType] only Reference(ValveProcedure)
* section[ValveProcedureSection].entry[explantType] ^short = "Indica tipo de explante"

* section[ValveProcedureSection].entry[reoperationValveReason] only Reference(ValveProcedure)
* section[ValveProcedureSection].entry[reoperationValveReason] ^short = "Indica la razón de reoperación"

* section[ValveProcedureSection].entry[valveProcedure] only Reference(ValveProcedure)
* section[ValveProcedureSection].entry[valveProcedure] ^short = "Indica el procedimiento de válvula"

* section[ValveProcedureSection].entry[implantType] only Reference(ValveProcedure)
* section[ValveProcedureSection].entry[implantType] ^short = "Indica el tipo de implante"

* section[ValveProcedureSection].entry[endocarditisInfecciosa] only Reference(EndocarditisInfecciosaObservation)
* section[ValveProcedureSection].entry[endocarditisInfecciosa] ^short = "Endocarditis infecciosa"

* section[ValveProcedureSection].entry[nativeValvePathology] only Reference(NativeValvePathologyObservation)
* section[ValveProcedureSection].entry[nativeValvePathology] ^short = "Observación de válvula nativa"



* section[ProcedureEcocardio] ^short = "Sección de ecocardiograma"
* section[ProcedureEcocardio] ^definition = "Información acerca del ecocardiograma"
* section[ProcedureEcocardio].code = #2
* section[ProcedureEcocardio].focus only Reference(EchocardiogramProcedure)

* section[ProcedureEcocardio].entry ^slicing.discriminator.type = #profile
* section[ProcedureEcocardio].entry ^slicing.discriminator.path = "resolve()"
* section[ProcedureEcocardio].entry ^slicing.rules = #open
* section[ProcedureEcocardio].entry 0..*
* section[ProcedureEcocardio].entry contains systolicPressureObservation 0..1 and 
                                             leftatrium 0..1 and 
                                             aorticRoot 0..1 and 
                                             rightCavities 0..1 and 
                                             endocarditis 0..1 and 
                                             valve 0..1 and 
                                             vegetable 0..1 and 
                                             abscess 0..1 and 
                                             prosthesisDetachment 0..1 and 
                                             cardiacTumor 0..1 and 
                                             other 0..1 and 
                                             leftVentricleDiastolicDiameter 0..1 and 
                                             leftVentricleSystolicDiameter 0..1 and 
                                             aorticValvesMainGradient 0..1 and 
                                             aorticValvesMediumGradient 0..1 and 
                                             aorticValvesMaximumSpeed 0..1 and 
                                             aorticValvesArea 0..1 and 
                                             aorticValvesInsufficiency 0..1 and 
                                             mitralValveMainGradient 0..1 and 
                                             mitralValveMediumGradient 0..1 and 
                                             mitralValveMaximumSpeed 0..1 and 
                                             mitralValveArea 0..1 and 
                                             mitralValveInsufficiency 0..1 and 
                                             tricuspideValvesInsuficiency 0..1 and 
                                             diagnostics 0..1

* section[ProcedureEcocardio].entry[systolicPressureObservation] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[systolicPressureObservation] ^short = "observación de PSAP"

* section[ProcedureEcocardio].entry[leftatrium] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[leftatrium] ^short = "observación de arteria izquierda"

* section[ProcedureEcocardio].entry[aorticRoot] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[aorticRoot] ^short = "observación de arteria principal"

* section[ProcedureEcocardio].entry[rightCavities] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[rightCavities] ^short = "observación de cavidad derecha"

* section[ProcedureEcocardio].entry[endocarditis] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[endocarditis] ^short = "observación de endocarditis"

* section[ProcedureEcocardio].entry[valve] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[valve] ^short = "observación de tipo de válvua"

* section[ProcedureEcocardio].entry[vegetable] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[vegetable] ^short = "observación de estado de vegetación"

* section[ProcedureEcocardio].entry[abscess] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[abscess] ^short = "observación de presencia de absceso"

* section[ProcedureEcocardio].entry[prosthesisDetachment] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[prosthesisDetachment] ^short = "observación de extracción de protesis"

* section[ProcedureEcocardio].entry[cardiacTumor] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[cardiacTumor] ^short = "observación de presencia de tumor cardíaco"

* section[ProcedureEcocardio].entry[other] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[other] ^short = "Otra observación"

* section[ProcedureEcocardio].entry[leftVentricleDiastolicDiameter] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[leftVentricleDiastolicDiameter] ^short = "observación diámetro diastólico de ventrículo izquierdo"

* section[ProcedureEcocardio].entry[leftVentricleSystolicDiameter] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[leftVentricleSystolicDiameter] ^short = "Observación diámetro sistólico de ventrículo izquierdo"

* section[ProcedureEcocardio].entry[aorticValvesMainGradient] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[aorticValvesMainGradient] ^short = "observación del gradiente de a válvula principal"

* section[ProcedureEcocardio].entry[aorticValvesMediumGradient] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[aorticValvesMediumGradient] ^short = "observación del gradiente de a válvula aorta media"

* section[ProcedureEcocardio].entry[aorticValvesMaximumSpeed] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[aorticValvesMaximumSpeed] ^short = "observación de la máxima velocidad de válvula aorta"

* section[ProcedureEcocardio].entry[aorticValvesArea] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[aorticValvesArea] ^short = "observación del área de válvula aorta"

* section[ProcedureEcocardio].entry[aorticValvesInsufficiency] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[aorticValvesInsufficiency] ^short = "observación de la insuficiencia de válvula aorta"

* section[ProcedureEcocardio].entry[mitralValveMainGradient] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[mitralValveMainGradient] ^short = "observación de la gradiente principal de la válvula mitral"

* section[ProcedureEcocardio].entry[mitralValveMediumGradient] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[mitralValveMediumGradient] ^short = "observación de la gradiente media de la válvula mitral"

* section[ProcedureEcocardio].entry[mitralValveMaximumSpeed] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[mitralValveMaximumSpeed] ^short = "observación de la velocidad máxima de válvula mitral"

* section[ProcedureEcocardio].entry[mitralValveArea] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[mitralValveArea] ^short = "observación del área de válvula mitral"

* section[ProcedureEcocardio].entry[mitralValveInsufficiency] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[mitralValveInsufficiency] ^short = "observación de la insuficiencia de válvula mitral"

* section[ProcedureEcocardio].entry[tricuspideValvesInsuficiency] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[tricuspideValvesInsuficiency] ^short = "observación de la insuficiencia de válvula tricúspide"

* section[ProcedureEcocardio].entry[diagnostics] only Reference(EchocardiogramsObservation)
* section[ProcedureEcocardio].entry[diagnostics] ^short = "Diagnósticos de ecocardiograma"





* section[PerfusionProcedureSection] ^short = "Sección de perfusión"
* section[PerfusionProcedureSection] ^definition = "Información acerca de la perfusión"
* section[PerfusionProcedureSection].code = #6
* section[PerfusionProcedureSection].focus only Reference(PerfusionProcedure)

* section[PerfusionProcedureSection].entry ^slicing.discriminator.type = #profile
* section[PerfusionProcedureSection].entry ^slicing.discriminator.path = "resolve()"
* section[PerfusionProcedureSection].entry ^slicing.rules = #open
* section[PerfusionProcedureSection].entry 0..*
* section[PerfusionProcedureSection].entry contains extracorporealCirculation 0..1 and 
                                                    perfusionTemperature 0..1 and 
                                                    miocardicalProtection 0..1 and 
                                                    cardioplegiaSolution 0..1 and 
                                                    cardioplegiaTemperature 0..1 and 
                                                    cardioplegiaInfusionMode 0..1 and 
                                                    cardioplegiaRhythm 0..1 and 
                                                    reasonForBallonUsage 0..1 and 
                                                    extracorporealCirculationTime 0..1 and 
                                                    cumulativeCrossClampTime 0..1 and 
                                                    totalCirculatoryArrestTime 0..1 and 
                                                    arterialCannulations 0..1 and 
                                                    venousCannulations 0..1 and 
                                                    circulatoryAssistances 0..1


* section[PerfusionProcedureSection].entry[extracorporealCirculation] only Reference(PerfusionProcedure)
* section[PerfusionProcedureSection].entry[extracorporealCirculation] ^short = "Procedimiento de circulación extracorpórea"

* section[PerfusionProcedureSection].entry[perfusionTemperature] only Reference(PerfusionTemperatureObservation)
* section[PerfusionProcedureSection].entry[perfusionTemperature] ^short = "Observación de temperatura de perfusión"

* section[PerfusionProcedureSection].entry[miocardicalProtection] only Reference(PerfusionProcedure)
* section[PerfusionProcedureSection].entry[miocardicalProtection] ^short = "Observación de protección del miocardio"

* section[PerfusionProcedureSection].entry[cardioplegiaSolution] only Reference(CardioplegiaObservation)
* section[PerfusionProcedureSection].entry[cardioplegiaSolution] ^short = "Observación de la solución"


* section[PerfusionProcedureSection].entry[cardioplegiaTemperature] only Reference(CardioplegiaTemperatureObservation)
* section[PerfusionProcedureSection].entry[cardioplegiaTemperature] ^short = "Observación de la temperatura de la solución"

* section[PerfusionProcedureSection].entry[cardioplegiaInfusionMode] only Reference(CardioplegiaInfusionModeObservation)
* section[PerfusionProcedureSection].entry[cardioplegiaInfusionMode] ^short = "Observación del modo de la infusión de la cardioplegía"

* section[PerfusionProcedureSection].entry[cardioplegiaRhythm] only Reference(CardioplegiaRhytmObservation)
* section[PerfusionProcedureSection].entry[cardioplegiaRhythm] ^short = "Observación del ritmo de cardioplegía"

* section[PerfusionProcedureSection].entry[reasonForBallonUsage] only Reference(ReasonBallonObservation)
* section[PerfusionProcedureSection].entry[reasonForBallonUsage] ^short = "Observación de balón de la razón de uso de balón contrapulsación"

* section[PerfusionProcedureSection].entry[extracorporealCirculationTime] only Reference(ExtracorporealCirculationTimeObservation)
* section[PerfusionProcedureSection].entry[extracorporealCirculationTime] ^short = "Observación del tiempo de la perfusión"

* section[PerfusionProcedureSection].entry[cumulativeCrossClampTime] only Reference(CumulativeCrossClampTimeObservation)
* section[PerfusionProcedureSection].entry[cumulativeCrossClampTime] ^short = "Observación del tiempo acumulado"

* section[PerfusionProcedureSection].entry[totalCirculatoryArrestTime] only Reference(TotalCirculatoryArrestTimeObservation)
* section[PerfusionProcedureSection].entry[totalCirculatoryArrestTime] ^short = "Observación del tiempo total"

* section[PerfusionProcedureSection].entry[arterialCannulations] only Reference(ArterialCannulationObservation)
* section[PerfusionProcedureSection].entry[arterialCannulations] ^short = "Observación de canulación arterial"

* section[PerfusionProcedureSection].entry[venousCannulations] only Reference(VenousCannulationsObservation)
* section[PerfusionProcedureSection].entry[venousCannulations] ^short = "Observación de canulación venosa"

* section[PerfusionProcedureSection].entry[circulatoryAssistances] only Reference(CirculatoryObservation)
* section[PerfusionProcedureSection].entry[circulatoryAssistances] ^short = "Observación de las asistencias circulatorias"



//Acá se agrega la sección de la organización

* section[OrganizationSection] ^short = "Organizaciones involucradas"
* section[OrganizationSection] ^definition = "Sección en la que se informa qué instituciones están involucradas en el procedimiento (referente, referidor)."




