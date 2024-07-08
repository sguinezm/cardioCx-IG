Alias: $snomed = http://snomed.info/sct

ValueSet: EjectionFractionVS
Id: EjectionFractionVS
Title: "Fracción de eyección"
Description: "Fracción de eyección"
* ^experimental = false
* ^version = "0.1"
* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* $snomed#20572008  "Good"
* $snomed#6736007   "Moderate" 
* $snomed#255351007 "Poor" 
* $snomed#24484000  "Severe" // Representa a very poor 
* $snomed#272519000 "Absence findings" // Representa a not measure