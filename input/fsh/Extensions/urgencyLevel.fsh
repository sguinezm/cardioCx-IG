Extension: UrgencyLevelCardioCx
Id: UrgencyLevelCardioCx
Title: "Nivel de urgencia de la operación"
Description: "Nivel de urgencia con la que está el paciente al momento de la operación"

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "UrgencyLevelCardioCx"
* . 0..*
* . ^definition = "Nivel de urgencia de la operación"
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from UrgencyLevelVS