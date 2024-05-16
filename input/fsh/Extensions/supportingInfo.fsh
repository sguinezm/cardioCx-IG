Extension: SupportingInfoCx
Id: workflow-supportingInfo
Title: "Supporting Information"
Description: "Other resources *from the patient record* that may be relevant to the event.  The information from these resources was either used to create the instance or is provided to help with its interpretation.  This extension **should not** be used if more specific  inline elements  or extensions are available.  For example, use `Observation.hasMember`  instead of supportingInformation for  representing the members of an Observation panel."
Context: DiagnosticReport, Observation, CommunicationRequest
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #fhir
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^status = #draft
* ^date = "2017-12-06"
* ^publisher = "Health Level Seven, Inc. - FHIR WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/fwg"
* . 0..*
* . ^short = "Other information that may be relevant to this event."
* . ^definition = "Other resources *from the patient record* that may be relevant to the event.  The information from these resources was either used to create the instance or is provided to help with its interpretation.  This extension **should not** be used if more specific  inline elements  or extensions are available.  For example, use `Observation.hasMember`  instead of supportingInformation for  representing the members of an Observation panel."
* value[x] 1..
* value[x] only Reference(Resource)