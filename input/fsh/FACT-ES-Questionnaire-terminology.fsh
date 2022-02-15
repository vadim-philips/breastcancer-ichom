CodeSystem: FACTESCodeSystem
Id: FACTESCodeSystem
Title: "Codesystem of FACT-ES questionnaire"
Description: "Codes used in the Functional Assesment of Cancer Therapy questionnare"
* ^url = http://connect.ichom.org/fhir/CodeSystem/FACT-ES
* ^caseSensitive = true

* #0 "Not at all"
* #1 "A little"
* #2 "Somewhat"
* #3 "Quite a bit"
* #4 "Very much"

ValueSet: FACTESValueSet
Id: FACTESValueSet
Title: "Valueset of FACT-ES questionnaire "
Description: "Valueset used in the Functional Assesment of Cancer Therapy questionnare"
* FACTESCodeSystem#0
* FACTESCodeSystem#1
* FACTESCodeSystem#2
* FACTESCodeSystem#3
* FACTESCodeSystem#4