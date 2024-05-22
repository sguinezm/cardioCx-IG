Extension: ImplantTypeExt
Id: ImplantTypeExt
Title: "Valores que acepta el tipo de implante."
Description: "Valores que acepta el tipo de implante."

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "ImplantTypeExt"
* . 0..1
* . ^definition = "Valores que acepta el tipo de implante."
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from ImplantTypeVS