Extension: MainReasonSurgeryExt
Id: MainReasonSurgeryExt
Title: "Razón principal de operación"
Description: "Razón principal de operación"

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "MainReasonSurgeryExt"
* . 0..1
* . ^definition = "Valores que acepta razón de operación"
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from MainReasonSurgeryVS