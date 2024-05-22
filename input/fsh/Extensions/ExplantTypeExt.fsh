Extension: ExplantTypeExt
Id: ExplantTypeExt
Title: "Valores que acepta el tipo de explante."
Description: "Valores que acepta el tipo de explante."

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "ValveInsuficiencyExt"
* . 0..1
* . ^definition = "Valores que acepta el tipo de explante."
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from ExplantTypeVS