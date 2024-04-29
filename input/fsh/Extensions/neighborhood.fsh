Extension: AddressNeighborhoodCardioCx
Id: AddressNeighborhoodCardioCx
Title: "Población CardioCx"
Description: "Población/barrio en la dirección del paciente de la plataforma CardioCx"
Context: Address.line
* ^extension[0].url = "https:centrocardiovascular.cl/StructureDefinition/AddressNeighborhoodCardioCx"
* ^extension[=].valueCode = #fhir
* ^version = "0.1"
* ^experimental = false
* ^date = "2024-04-29"
* ^publisher = "Sergio Guíñez"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "sguinezm@gmail.com"
* ^jurisdiction = urn:iso:std:iso:3166#CL "Chile"
* . ^short = "AddressNeighborhoodCardioCx"
* . 0..*
* . ^definition = "Se puede indicar la población o barrio donde vive el paciente como una referencia"
* value[x] 0..1
* value[x] only string