Alias: $observation-bodyheight = http://hl7.org/fhir/StructureDefinition/bodyheight
Alias: $observation-bodyweight = http://hl7.org/fhir/StructureDefinition/bodyweight

Profile: CompositionCardio
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
    EncounterSection 1..1 MS and
    ProcedureSection 1..1 MS and
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


* section[EncounterSection] ^short = "Descripción del encuentro médico"
* section[EncounterSection] ^definition = "Sección en la que se describe el encuentro médico."

* section[ProcedureSection] ^short = "Descripción del procedimiento"
* section[ProcedureSection] ^definition = "Sección en la que se describe el procedimiento realizado."
* section[ProcedureSection].focus only Reference(Procedure)
* section[ProcedureSection].entry ^slicing.discriminator.type = #profile
* section[ProcedureSection].entry ^slicing.discriminator.path = "resolve()"
* section[ProcedureSection].entry ^slicing.rules = #open
* section[ProcedureSection].entry 2..2  
* section[ProcedureSection].entry contains cardioCxProcedure 1..1 
* section[ProcedureSection].entry[cardioCxProcedure] only Reference(ProcedureCardio)
* section[ProcedureSection].entry[cardioCxProcedure] ^short = "Procedimiento médico de la cardiocirugía."

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
                                                    EjectionFractionValueObservation 0..1
 
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

















//Acá se agrega la sección de la organización

* section[OrganizationSection] ^short = "Organizaciones involucradas"
* section[OrganizationSection] ^definition = "Sección en la que se informa qué instituciones están involucradas en el procedimiento (referente, referidor)."




