// shorthand notation to only show a particular question in the context of this questionnaire

Instance: SACQComorbidities3
InstanceOf: Questionnaire
Usage: #definition
Title: "SACQ comorbidities"
Description: "Based upon the Self-administered Comorbidity Questionnaire (Sangha et al, 2003)."
* insert PublicationInstanceRuleset

* name = "SACQComorbidities"
* status = #draft

* item[+]
  * linkId = "ComorbiditiesSACQ"
  * type = #choice
  * text = "Have you been told by a doctor that you have any of the following?"
  * answerValueSet = Canonical(SACQPatientComorbidityHistory)
  * required = true
  * repeats = true

* item[+]
  * linkId = "ComorbiditiesSACQ_HeartDisease"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your heart disease have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#56265001)

* item[+]
  * linkId = "ComorbiditiesSACQ_HighBloodPressure"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your high blood pressure disease have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#38341003)

* item[+]
  * linkId = "ComorbiditiesSACQ_LungDisease"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your lung disease have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#19829001)

* item[+]
  * linkId = "ComorbiditiesSACQ_Diabetes"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your diabetes disease have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#73211009)

* item[+]
  * linkId = "ComorbiditiesSACQ_StomachDisease"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your stomach disease have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#429040005)

* item[+]
  * linkId = "ComorbiditiesSACQ_KidneyDisease"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your kidney disease have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#90708001)

* item[+]
  * linkId = "ComorbiditiesSACQ_LiverDisease"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your liver disease have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#235856003)

* item[+]
  * linkId = "ComorbiditiesSACQ_BloodDisease"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your blood disease have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#271737000)

* item[+]
  * linkId = "ComorbiditiesSACQ_Cancer"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your cancer have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen(SACQPatientComorbidityCodeSystem#cancer-within-5yrs)

* item[+]
  * linkId = "ComorbiditiesSACQ_Depression"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your depression have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#35489007)

* item[+]
  * linkId = "ComorbiditiesSACQ_Osteoarthritis"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your osteoarthritis disease have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#396275006)

* item[+]
  * linkId = "ComorbiditiesSACQ_BackPain"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your Back Pain have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#161891005)

* item[+]
  * linkId = "ComorbiditiesSACQ_RheumatoidArthritis"
  * type = #choice
  * repeats = true
  * required = true
  * text = "Did your Rheumatoid Arthritis disease have any of the following impacts?"
  * answerValueSet = Canonical(SACQPatientComorbidityImpact)
  * insert enableWhen($SCT#69896004)

* item[+]
  * linkId = "ComorbiditiesSACQ_Other"
  * type = #text
  * text = "What other medical problems are you experiencing?"
  * insert enableWhen(SACQPatientComorbidityCodeSystem#other-medical-problems)

* item[+]
  * linkId = "ComorbiditiesSACQ_Score"
  * type = #integer
  * text = "What is the total summed score of the patient's SACQ responses?"
  * readOnly = true
  * insert calculatedFhirPathExpression("%resource.item.where(linkId != \'ComorbiditiesSACQ_Score\').answer.value.count()")
