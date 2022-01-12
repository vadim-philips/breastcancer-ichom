Instance: SACQComorbidities2
InstanceOf: Questionnaire
Usage: #example
* meta.versionId = "12"
* meta.lastUpdated = "2022-01-11T18:54:01.9348918+00:00"
* url = "https://connect.ichom.org/fhir/Questionnaire/SACQComorbidities2"
* name = "SACQComorbidities2"
* title = "SACQ comorbidities2"
* status = #draft
* experimental = true
* publisher = "ICHOM"
* item.extension[0].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item.extension[=].valueExpression.name = "comorbidities"
* item.extension[=].valueExpression.language = #text/fhirpath
* item.extension[=].valueExpression.expression = "item.where(linkId = 'ComorbiditiesSACQ').answer.value"
* item.extension[+].url = "http://hl7.org/fhir/StructureDefinition/variable"
* item.extension[=].valueExpression.name = "extendedvalues"
* item.extension[=].valueExpression.language = #text/fhirpath
* item.extension[=].valueExpression.expression = "item.where(linkId in ('ComorbiditiesSACQ_HeartDiseaseFU1' | 'ComorbiditiesSACQ_HeartDiseaseFU2' | 'ComorbiditiesSACQ_HighBloodPressureFU1' | 'ComorbiditiesSACQ_HighBloodPressureFU2' | 'ComorbiditiesSACQ_LungDiseaseFU1' | 'ComorbiditiesSACQ_LungDiseaseFU2' | 'ComorbiditiesSACQ_DiabetesFU1' | 'ComorbiditiesSACQ_DiabetesFU2' | 'ComorbiditiesSACQ_StomachDiseaseFU1' | 'ComorbiditiesSACQ_StomachDiseaseFU2' | 'ComorbiditiesSACQ_KidneyDiseaseFU1' | 'ComorbiditiesSACQ_KidneyDiseaseFU2' | 'ComorbiditiesSACQ_LiverDiseaseFU1' | 'ComorbiditiesSACQ_LiverDiseaseFU2' | 'ComorbiditiesSACQ_BloodDiseaseFU1' | 'ComorbiditiesSACQ_BloodDiseaseFU2' | 'ComorbiditiesSACQ_CancerFU1' | 'ComorbiditiesSACQ_CancerFU2' | 'ComorbiditiesSACQ_DepressionFU1' | 'ComorbiditiesSACQ_DepressionFU2' | 'ComorbiditiesSACQ_OsteoarthritisFU1' | 'ComorbiditiesSACQ_OsteoarthritisFU2' | 'ComorbiditiesSACQ_BackPainFU1' | 'ComorbiditiesSACQ_BackPainFU2' | 'ComorbiditiesSACQ_RheumatoidArthritisFU1' | 'ComorbiditiesSACQ_RheumatoidArthritisFU2' | 'ComorbiditiesSACQ_Other')).answer.value.where($this=true)"
* item.linkId = "Group"
* item.text = "SACQ comorbidities questionnaire"
* item.type = #group
* item.item[0].linkId = "ComorbiditiesSACQ"
* item.item[=].text = "Have you been told by a doctor that you have any of the following?"
* item.item[=].type = #choice
* item.item[=].required = true
* item.item[=].repeats = true
* item.item[=].answerValueSet = "https://connect.ichom.org/fhir/ValueSet/SACQ-patient-comorbidity-history"
* item.item[+].linkId = "ComorbiditiesSACQ_HeartDiseaseFU1"
* item.item[=].text = "Do you receive treatment for heart disease (For example, angina, heart failure, or heart attack)?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#56265001
* item.item[+].linkId = "ComorbiditiesSACQ_HeartDiseaseFU2"
* item.item[=].text = "Does your heart disease limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#56265001
* item.item[+].linkId = "ComorbiditiesSACQ_HighBloodPressureFU1"
* item.item[=].text = "Do you receive treatment for high blood pressure?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#38341003
* item.item[+].linkId = "ComorbiditiesSACQ_HighBloodPressureFU2"
* item.item[=].text = "Does your high blood pressure limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#38341003
* item.item[+].linkId = "ComorbiditiesSACQ_LungDiseaseFU1"
* item.item[=].text = "Do you receive treatment for lung disease?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#19829001
* item.item[+].linkId = "ComorbiditiesSACQ_LungDiseaseFU2"
* item.item[=].text = "Does your lung disease limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#19829001
* item.item[+].linkId = "ComorbiditiesSACQ_DiabetesFU1"
* item.item[=].text = "Do you receive treatment for diabetes?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#73211009
* item.item[+].linkId = "ComorbiditiesSACQ_DiabetesFU2"
* item.item[=].text = "Does your diabetes limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#73211009
* item.item[+].linkId = "ComorbiditiesSACQ_StomachDiseaseFU1"
* item.item[=].text = "Do you receive treatment for an ulcer or stomach disease?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#429040005
* item.item[+].linkId = "ComorbiditiesSACQ_StomachDiseaseFU2"
* item.item[=].text = "Does your ulcer or stomach disease limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#429040005
* item.item[+].linkId = "ComorbiditiesSACQ_KidneyDiseaseFU1"
* item.item[=].text = "Do you receive treatment for kidney disease?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#90708001
* item.item[+].linkId = "ComorbiditiesSACQ_KidneyDiseaseFU2"
* item.item[=].text = "Does your kidney disease limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#90708001
* item.item[+].linkId = "ComorbiditiesSACQ_LiverDiseaseFU1"
* item.item[=].text = "Do you receive treatment for liver disease?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#235856003
* item.item[+].linkId = "ComorbiditiesSACQ_LiverDiseaseFU2"
* item.item[=].text = "Does your liver disease limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#235856003
* item.item[+].linkId = "ComorbiditiesSACQ_BloodDiseaseFU1"
* item.item[=].text = "Do you receive treatment for anemia or other blood disease?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#271737000
* item.item[+].linkId = "ComorbiditiesSACQ_BloodDiseaseFU2"
* item.item[=].text = "Does your anemia or other blood disease limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#271737000
* item.item[+].linkId = "ComorbiditiesSACQ_CancerFU1"
* item.item[=].text = "Do you receive treatment for cancer/another cancer?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://connect.ichom.org/fhir/CodeSystem/sacq-patient-comorbidity-history#cancer-within-5yrs
* item.item[+].linkId = "ComorbiditiesSACQ_CancerFU2"
* item.item[=].text = "Does your cancer/other cancer limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://connect.ichom.org/fhir/CodeSystem/sacq-patient-comorbidity-history#cancer-within-5yrs
* item.item[+].linkId = "ComorbiditiesSACQ_DepressionFU1"
* item.item[=].text = "Do you receive treatment for depression?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#35489007
* item.item[+].linkId = "ComorbiditiesSACQ_DepressionFU2"
* item.item[=].text = "Does your depression limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#35489007
* item.item[+].linkId = "ComorbiditiesSACQ_OsteoarthritisFU1"
* item.item[=].text = "Do you receive treatment for osteoarthritis/degenerative arthritis?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#396275006
* item.item[+].linkId = "ComorbiditiesSACQ_OsteoarthritisFU2"
* item.item[=].text = "Does your osteoarthritis/degenerative arthritis limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#396275006
* item.item[+].linkId = "ComorbiditiesSACQ_BackPainFU1"
* item.item[=].text = "Do you receive treatment for back pain?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#161891005
* item.item[+].linkId = "ComorbiditiesSACQ_BackPainFU2"
* item.item[=].text = "Does your back pain limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#161891005
* item.item[+].linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU1"
* item.item[=].text = "Do you receive treatment for rheumatoid arthritis?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#69896004
* item.item[+].linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU2"
* item.item[=].text = "Does your rheumatoid arthritis limit your activities?"
* item.item[=].type = #boolean
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://snomed.info/sct#69896004
* item.item[+].linkId = "ComorbiditiesSACQ_Other"
* item.item[=].text = "What other medical problems are you experiencing?"
* item.item[=].type = #text
* item.item[=].enableWhen.question = "ComorbiditiesSACQ"
* item.item[=].enableWhen.operator = #=
* item.item[=].enableWhen.answerCoding = http://connect.ichom.org/fhir/CodeSystem/sacq-patient-comorbidity-history#other-medical-problems
* item.item[+].extension.url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* item.item[=].extension.valueExpression.language = #text/fhirpath
* item.item[=].extension.valueExpression.expression = "%comorbidities.count() + %extendedvalues.count()"
* item.item[=].linkId = "ComorbiditiesSACQ_Score"
* item.item[=].text = "What is the total summed score of the patient's SACQ responses?"
* item.item[=].type = #integer
* item.item[=].readOnly = true