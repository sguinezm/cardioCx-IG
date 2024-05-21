Extension: ValveInsuficiencyExt
Id: ValveInsuficiencyExt
Title: "Valor de la insuficiencia de válvula"
Description: "Valor de la insuficiencia de válvula."

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "ValveInsuficiencyExt"
* . 0..*
* . ^definition = "Valor de la insuficiencia de válvula."
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from ValveInsuficiencyVS