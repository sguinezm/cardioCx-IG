Alias: $loinc = http://loinc.org

Profile: LastPreoperativeCreatinineObservation
Parent: Observation
Description: "Observación de la creatinina en última preoperación"

Title: "LastPreoperativeCreatinineObservation"

* code =  $loinc#42343007
* code.coding.system = $loinc
* code ^definition = "Observación de la creatinina en última preoperación"
* value[x] only Quantity

* focus 1..1
