Alias: $snomed = http://snomed.info/sct

Profile: ProcedureTypes
Parent: Procedure
Description: "Registro de tipos de procedimientos"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains cabg 0..1 and 
                       valve 0..1 and
                       tavi 0..1 and
                       ecmo 0..1 and 
                       cardiacTransplant 0..1 and 
                       ventricularAssistance 0..1 and 
                       other 0..1 and 
                       otherValue 0..1 and 
                       procedureCode 0..1

* code.coding[cabg].system = $snomed
* code.coding[cabg].code = $snomed#232717009
* code.coding[cabg].display = "CABG"

* code.coding[valve].system = $snomed
* code.coding[valve].code = $snomed#17401000
* code.coding[valve].display = "valve"

* code.coding[tavi].system = $snomed
* code.coding[tavi].code = $snomed#773996000
* code.coding[tavi].display = "tavi"

* code.coding[ecmo].system = $snomed
* code.coding[ecmo].code = $snomed#243781005
* code.coding[ecmo].display = "ECMO"

* code.coding[cardiacTransplant].system = $snomed
* code.coding[cardiacTransplant].code = $snomed#32413006
* code.coding[cardiacTransplant].display = "Cardiac transplant"

* code.coding[ventricularAssistance].system = $snomed
* code.coding[ventricularAssistance].code = $snomed#360064003
* code.coding[ventricularAssistance].display = "Ventricular assistance"

* code.coding[other].system = $snomed
* code.coding[other].code = $snomed#74964007
* code.coding[other].display = "Other"

* code.coding[otherValue].system = $snomed
* code.coding[otherValue].code = $snomed#394841004
* code.coding[otherValue].display = "Other value"

* code.coding[procedureCode].system = $snomed
* code.coding[procedureCode].code = $snomed#276218009
* code.coding[procedureCode].display = "Procedure Code"

