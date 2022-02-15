CodeSystem: EORTCQLQCodeSystem
Id: EORTCQLQCodeSystem
Title: "Codes used in EORTC-QLQ questionnaire response"
Description: "Codes used in the European Organization for Research and Treatment of Cancer Quality-of-Life Questionnaire"
* ^url = http://connect.ichom.org/fhir/CodeSystem/EORTC-QLQ
* ^caseSensitive = true

* #1 "Not at all"
* #2 "A little"
* #3 "Quite a bit"
* #4 "Very much"

ValueSet: EORTCQLQValueSet
Id: EORTCQLQValueSet
Title: "Values used in EORTC-QLQ questionnaire response"
Description: "Valueset used in the European Organization for Research and Treatment of Cancer Quality-of-Life Questionnaire"
* EORTCQLQCodeSystem#1
* EORTCQLQCodeSystem#2
* EORTCQLQCodeSystem#3
* EORTCQLQCodeSystem#4