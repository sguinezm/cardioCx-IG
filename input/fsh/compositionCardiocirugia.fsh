Alias: $observation-bodyheight = http://hl7.org/fhir/StructureDefinition/bodyheight
Alias: $observation-bodyweight = http://hl7.org/fhir/StructureDefinition/bodyweight

Profile: CompositionCardio
Parent: Composition
Title: "Composition Cardiocirugia"
Description: "Recurso que contiene las referencias identificadas por secciones a los recursos necesarios para representar la información de cirugias cardiacas."


* section 1..6 MS
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
    OrganizationSection 1..1 MS and
    PreoperativeRiskFactorsSection 1..1 MS

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
                                        emergencyContact 0..*
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
* section[ProcedureSection].entry contains cardioCxProcedure 1..1 and
                                            AnginaObservation 1..1
* section[ProcedureSection].entry[cardioCxProcedure] only Reference(ProcedureCardio)
* section[ProcedureSection].entry[cardioCxProcedure] ^short = "Procedimiento médico de la cardiocirugía."
* section[ProcedureSection].entry[AnginaObservation] only Reference(AnginaObservation)
* section[ProcedureSection].entry[AnginaObservation] ^short = "Angina reportada por el paciente"





* section[OrganizationSection] ^short = "Organizaciones involucradas"
* section[OrganizationSection] ^definition = "Sección en la que se informa qué instituciones están involucradas en el procedimiento (referente, referidor)."


* section[PreoperativeRiskFactorsSection] ^short = "Factores de riesgo preoperatorios"
* section[PreoperativeRiskFactorsSection] ^definition = "Sección en la que se describen los factores de riesgo preoperatorios del paciente."