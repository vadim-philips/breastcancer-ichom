RuleSet: enableWhen(code)
* enableWhen
  * question = "ComorbiditiesSACQ"
  * operator = #=
  * answerCoding = {code}

RuleSet: calculatedFhirPathExpression( expression )
* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
* extension[=].valueExpression.language  = #text/fhirpath
* extension[=].valueExpression.expression = {expression}
