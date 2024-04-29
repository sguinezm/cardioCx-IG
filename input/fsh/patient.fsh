// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: PatientCardio
Parent: PacienteCl
Description: "Recurso que representa al paciente chileno en la plataforma de Cardio."


Instance: PatientExample
InstanceOf: PatientCardio
Description: "An example of a patient with a license to krill."



// ------------------ Elementos obligatorios desde la Core ---------------- 
* identifier.type.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
* identifier.type.extension.valueCodeableConcept = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CodPais#152 "Chile"
* identifier.type = https://hl7chile.cl/fhir/ig/clcore/CodeSystem/CSTipoIdentificador#01 "Run"
* identifier.system = "http://www.cardio.com/identifiers/patient"
* identifier.value = "131234133"
* name
  * given[0] = "James"
  * family = "Pond"

* name[NombreOficial].use = #official
* name[NombreOficial].text = "Jaime Javier Rojas Bustos"
* name[NombreOficial].family = "Rojas"
* name[NombreOficial].family.extension.url = "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
* name[NombreOficial].family.extension.valueString = "Bustos"
* name[NombreOficial].given = "Jaime Rojas"
* birthDate = "1991-11-12"
* deceasedBoolean = false
* gender = #male

// -------------- Fin elementos obligatorios ---------------------------