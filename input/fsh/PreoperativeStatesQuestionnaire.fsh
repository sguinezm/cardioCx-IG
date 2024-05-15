Profile: PreoperativeStatesQuestionnaire
Parent: QuestionnaireResponse
Description: "Questionario utilizado para conocer el estado preoperativo previo del paciente, para el procedimiento de cardio cirugía."

* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #open
* item 1..5
* item contains intravenousNitrates 0..1 and
        intravenousInotropes 0..1 and
        mechanicalVentilation 0..1 and
        cardiogenicShock 0..1 and
        intraAorticBalloonPump 0..1

* item[intravenousNitrates].linkId = "intravenous_nitrates"
* item[intravenousNitrates].answer 1..1
* item[intravenousNitrates].answer.value[x] only boolean

* item[intravenousInotropes].linkId = "intravenous_inotropes"
* item[intravenousInotropes].answer 1..1
* item[intravenousInotropes].answer.value[x] only boolean

* item[mechanicalVentilation].linkId = "mechanical_ventilation"
* item[mechanicalVentilation].answer 1..1
* item[mechanicalVentilation].answer.value[x] only boolean

* item[cardiogenicShock].linkId = "cardiogenic_shock"
* item[cardiogenicShock].answer 1..1
* item[cardiogenicShock].answer.value[x] only boolean

* item[intraAorticBalloonPump].linkId = "intra_aortic_balloon_pump"
* item[intraAorticBalloonPump].answer 1..1
* item[intraAorticBalloonPump].answer.value[x] only boolean
