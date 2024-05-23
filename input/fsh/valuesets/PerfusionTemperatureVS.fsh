Alias: $snomed = http://snomed.info/sct

ValueSet: PerfusionTemperatureVS
Id: PerfusionTemperatureVS
Title: "Valor de la temperatura de perfusión."
Description: "Valor de la temperatura de perfusión."
* ^experimental = false
* ^version = "0.1"
* ^status = #active
* ^date = "2023-01-15"
* ^contact.name = "Jaime González"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "jjgondiaz@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"

* $snomed#262004005  "Normothermia"
* $snomed#261941006  "Mild hypothermia"
* $snomed#261946001  "Moderate hypothermia" 
* $snomed#262071003  "Profound hypothermia"