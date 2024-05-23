
Alias: $snomed = http://snomed.info/sct


Profile: VenousCannulationsObservation
Parent: Observation
Description: "Indica si se realiza una canulación venosa"

Title: "VenousCannulationsObservation"


* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "code"
* code.coding ^slicing.rules = #open
* code.coding 1..1
* code.coding contains venousCannulations 1..1 
                      


* code.coding[venousCannulations].code 1..1
* code.coding[venousCannulations].system = $snomed
* code.coding[venousCannulations].code = $snomed#392231009 
* code.coding[venousCannulations].code ^definition = "venous cannulations"
* value[x] from VenousCannulationsVS







* focus only Reference(PerfusionProcedure)

