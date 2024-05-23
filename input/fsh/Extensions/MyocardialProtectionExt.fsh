Extension: MyocardialProtectionExt
Id: MyocardialProtectionExt
Title: "Protección miocardial."
Description: "Protección miocardial."

* ^version = "1.0"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "MyocardialProtectionExt"
* . 0..*
* . ^definition = "Protección miocardial."
* value[x] 0..1
* value[x] only CodeableConcept
* value[x] from MyocardialProtectionVS