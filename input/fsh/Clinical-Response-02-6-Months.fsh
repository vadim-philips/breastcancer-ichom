// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenTreatment02(code)
* enableWhen[+]
  * question = "TREATMENT_BREAST-02"
  * operator = #=
  * answerCoding = TreatmentTypesCodeSystem{code}

Instance: 6MonthsClinical
InstanceOf: Questionnaire
Usage: #definition
Description: "Clinical response questionnaire at 6 months post-treatment follow-up"
* insert PublicationInstanceRuleset

* name = "SixMonthsClinical"
* title = "Clinical response at 6 months post-treatment follow-up"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId =  "General-Information-02-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A-02-Clinical"
    * type = #integer //or string
    * text = "What is the patient's ID?"
    * required = true

  * item[+]
    * linkId = "LastName-02-Clinical"
    * type = #string
    * text = "Indicate the person's last name"
    * required = true

// GROUP 2 - TUMOR FACTORS
* item[+]
  * linkId =  "Tumor-Factors-02"
  * type = #group
  * text = "Tumor factors"
  * required = true

  * item[+]
    * linkId = "received_surgery-02"
    * type = #boolean
    * text = "Has the patient received surgery?"
    * required = true
    
  * item[+]
    * linkId = "TNMPT_BREAST-02"
    * type = #choice
    * text = "Indicate the pathological tumor stage (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "pTX"
    * answerOption[+].valueString = "pT0"
    * answerOption[+].valueString = "pTis"
    * answerOption[+].valueString = "pT1"
    * answerOption[+].valueString = "pT2"
    * answerOption[+].valueString = "pT3"
    * answerOption[+].valueString = "pT4"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTrue(received_surgery-02)
    * required = true

  * item[+]
    * linkId = "TNMPN_BREAST-02"
    * type = #choice
    * text = "Indicate the pathological nodal stage (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "pNX"
    * answerOption[+].valueString = "pN0"
    * answerOption[+].valueString = "pN1"
    * answerOption[+].valueString = "pN2"
    * answerOption[+].valueString = "pN3"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTrue(received_surgery-02)
    * required = true

  * item[+]
    * linkId = "TNMPM_BREAST-02"
    * type = #choice
    * text = "Indicate the pathological distant metastasis (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "pMX"
    * answerOption[+].valueString = "pM0"
    * answerOption[+].valueString = "pM1"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTrue(received_surgery-02)
    * required = true

  * item[+]
    * linkId = "SIZEINV-02"
    * type = #integer
    * text = "Indicate size of invasive component of tumor (in mm, 999 if unknown)"
    * required = true
    * initial.valueInteger = 999
    * insert enableWhenTrue(received_surgery-02)

  * item[+]
    * linkId = "NumLymphNodesResect-02"
    * type = #integer
    * text = "Indicate the number of lymph nodes resected (999 if unknown)"
    * required = true
    * initial.valueInteger = 999
    * insert enableWhenTrue(received_surgery-02)

  * item[+]
    * linkId = "LYMPHINV_BREAST-02"
    * type = #integer
    * text = "Indicate the number of lymph nodes involved according to the TNM stage AJCC 7th Ed. (999 if unknown)"
    * required = true
    * initial.valueInteger = 999
    * insert enableWhenTrue(received_surgery-02)

// GROUP 3 - TREATMENT VARIABLES 
* item[+]
  * linkId =  "Treatment-Variables-02"
  * type = #group
  * text = "Treatment Variables at 6 months follow-up"
  * required = true

  * item[+]
    * linkId = "TREATMENT_BREAST-02"
    * type = #choice
    * text = "Indicate whether the patient received one of the following treatment during the last year: (select all that apply)"
    * answerValueSet = Canonical(TreatmentTypeValueSet)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERY_BREAST-02"
    * type = #choice
    * text = "Indicate the type of surgery the patient received during the last year:"
    * answerValueSet = Canonical(BreastSurgeryTypeValueSet)    
    * insert enableWhenTreatment02(#1)
    * required = true

  * item[+]
    * linkId = "SurgeryDateKnown-02"
    * type = #boolean
    * text = "Is the date of surgery known?"
    * insert enableWhenTreatment02(#1)
    * required = true

  * item[+]
    * linkId = "SurgeryDate-02"
    * type = #date
    * text = "Provide the date of surgery:"
    * insert enableWhenTrue(SurgeryDateKnown-02)
    * required = true

  * item[+]
    * linkId = "SURGERYAX-02"
    * type = #choice
    * text = "Indicate the type of surgery to the axilla the patient received during the last year:"
    * answerValueSet = Canonical(SurgeryAxillaTypeValueSet)    
    * insert enableWhenTreatment02(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE-Known-02"
    * type = #boolean
    * text = "Is the date of surgery to the axilla known?"
    * insert enableWhenTreatment02(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE-02"
    * type = #date
    * text = "Please provide the date of surgery to the axilla:"  
    * insert enableWhenTrue(SURGERYAXDATE-Known-02)    
    * required = true

  * item[+]
    * linkId = "SURGERYAX2-02"
    * type = #choice
    * text = "Indicate whether the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year:"
    * answerOption[+].valueString = "No"
    * answerOption[+].valueString = "Yes"
    * answerOption[+].valueString = "Unknown"
    * enableWhen[+]
      * question = "SURGERYAX-02"
      * operator = #=
      * answerCoding = SurgeryAxillaCodeSystem#0
    * enableWhen[+]
      * question = "SURGERYAX-02"
      * operator = #=
      * answerCoding = SurgeryAxillaCodeSystem#1
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE-Known-02"
    * type = #boolean
    * text = "Is the date of axillary clearance known?"
    * enableWhen[+]
      * question = "SURGERYAX2-02"
      * operator = #=
      * answerString = "Yes"
    * required = true
// EnableWhen doesnt work with string answerOptions

  * item[+]  
    * linkId = "SURGERYAX2DATE-02"
    * type = #date
    * text = "Please provide the date of axillary clearance:"
    * enableWhenTrue(SURGERYAX2DATE-Known-02)
    * required = true

  * item[+] 
    * linkId = "RECONSTRUCT-02"
    * type = #choice
    * text = "Indicate the type of delayed reconstruction the patient received during the last year:"
    * answerOption[+].valueString = "Delayed reconstruction  (direct/staged implant)"
    * answerOption[+].valueString = "Delayed reconstruction ( autologous)"
    * answerOption[+].valueString = "Delayed reconstruction  (implant/autologous)"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment02(#3)
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE-Known-02"
    * type = #boolean
    * text = "Is the date of the delayed reconstruction known?"
    * insert enableWhenTreatment02(#3)
    * required = true

  * item[+]  
    * linkId = "RECONSTRUCTDATE-02"
    * type = #date
    * text = "Please provide the date of delayed reconstruction:"
    * insert enableWhenTrue(RECONSTRUCTDATE-Known-02)
    * required = true

  * item[+]  
    * linkId = "RADIOTX_BREAST-02"
    * type = #choice
    * text = "Please indicate the intent of radiotherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment02(#4)
    * required = true
    * repeats = true

  * item[+]  
    * linkId = "RADIOTXTYPE_BREAST-02"
    * type = #choice
    * text = "Indicate location/type of radiotherapy:"
    * answerOption[+].valueString = "Breast"
    * answerOption[+].valueString = "Chest wall"
    * answerOption[+].valueString = "Axillary nodal irradiation"
    * answerOption[+].valueString = "Supraclavicular irradiation"
    * answerOption[+].valueString = "Internal mammary node irradiation"
    * answerOption[+].valueString = "Tumor bed boost"
    * answerOption[+].valueString = "Brain metastases"
    * answerOption[+].valueString = "Bone metastases"
    * answerOption[+].valueString = "Any metastatic site"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment02(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate-Known-02"
    * type = #boolean
    * text = "Is the start date of radiotherapy known?"
    * insert enableWhenTreatment02(#4)
    * required = true

  * item[+]  
    * linkId = "RadioTxStartDate-02"
    * type = #date
    * text = "Please provide the start date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStartDate-Known-02)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate-Known-02"
    * type = #boolean
    * text = "Is the stop date of radiotherapy known?"
    * insert enableWhenTreatment02(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate-02"
    * type = #date
    * text = "Please provide the stop date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStopDate-Known-02)
    * required = true

  * item[+]
    * linkId = "CHEMOTXINTENT-02"
    * type = #choice
    * text = "Indicate the intent of chemotherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment02(#5)
    * required = true

  * item[+]
    * linkId = "CHEMOTXTYPE_BREAST-02"
    * type = #choice
    * text = "Indicate the type of chemotherapy (select all that apply):"
    * answerOption[+].valueString = "Anthracycline containing"
    * answerOption[+].valueString = "Taxane containing"
    * answerOption[+].valueString = "Platinum containing"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment02(#5)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "ChemoTxStartDate-Known-02"
    * type = #boolean
    * text = "Is the start date of chemotherapy known?"
    * insert enableWhenTreatment02(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStartDate-02"
    * type = #date
    * text = "Please provide the start date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStartDate-Known-02)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate-Known-02"
    * type = #boolean
    * text = "Is the stop date of chemotherapy known?"
    * insert enableWhenTreatment02(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate-02"
    * type = #date
    * text = "Please provide the stop date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStopdate-Known-02)
    * required = true

  * item[+]  
    * linkId = "HORMONTX_BREAST-02"
    * type = #choice
    * text = "Please indicate the intent of hormontherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment02(#6)
    * required = true

  * item[+]  
    * linkId = "HORMONTXTYPE-02"
    * type = #choice
    * text = "Indicate the type of hormonal therapy (select all that apply):"
    * answerOption[+].valueString = "Aromatase inhibitor"
    * answerOption[+].valueString = "Selective estrogen-receptor modulator (e.g. Tamoxifen)"
    * answerOption[+].valueString = "Oophorectomy"
    * answerOption[+].valueString = "LHRH agonist"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment02(#6)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "HORMONTXSTARTDATE-Known-02"
    * type = #boolean
    * text = "Is the start date of hormonal therapy known?"
    * insert enableWhenTreatment02(#6)
    * required = true

  * item[+]  
    * linkId = "HORMONTXSTARTDATE-02"
    * type = #date
    * text = "Please provide the start date of hormonal therapy:"
    * insert enableWhenTrue(HORMONTXSTARTDATE-Known-02)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTOPDATE-Known-02"
    * type = #boolean
    * text = "Is the stop date of hormonal therapy known?"
    * insert enableWhenTreatment02(#6)
    * required = true

  * item[+]  
    * linkId = "HORMONTXSTOPDATE-02"
    * type = #date
    * text = "Please provide the stop date of hormonal therapy, if applicable:"
    * insert enableWhenTrue(HORMONTXSTOPDATE-Known-02)
    * required = true

  * item[+]  
    * linkId = "TARGETTX_BREAST-02"
    * type = #choice
    * text = "Indicate the type of targeted therapy:"
    * answerOption[+].valueString = "Her-2 targeting therapy"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment02(#7)
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate-Known-02"
    * type = #boolean
    * text = "Is the start date of targeted therapy known?"
    * insert enableWhenTreatment02(#7)
    * required = true

  * item[+]  
    * linkId = "TargetTxStartDate-02"
    * type = #date
    * text = "Please provide the start date of targeted therapy"
    * insert enableWhenTrue(TargetTxStartDate-Known-02)
    * required = true

  * item[+]
    * linkId = "TargetTxStopDate-Known-02"
    * type = #boolean
    * text = "Is the stop date of targeted therapy known?"
    * insert enableWhenTreatment02(#7)
    * required = true

  * item[+]  
    * linkId = "TargetTxStopDate-02"
    * type = #date
    * text = "Please provide the stop date of targeted therapy"
    * insert enableWhenTrue(TargetTxStopDate-Known-02)
    * required = true
    
  * item[+]  
    * linkId = "SURGERYPATIENT-02"
    * type = #choice
    * text = "Indicate if the patient has had one of the following re-operations since their surgery for breast cancer? (select all that apply)"
    * answerValueSet = Canonical(ReoperationsValueSet)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT-Known-02"
    * type = #boolean
    * text = "Is the date of the reoperation known?"
    * enableWhen[+]
      * question = "SURGERYPATIENT-02"
      * operator = #!=
      * answerCoding = ReoperationsCodeSystem#0
    * enableWhen[+]
      * question = "SURGERYPATIENT-02"
      * operator = #!=
      * answerCoding = ReoperationsCodeSystem#999
    * enableBehavior = #all     
    * required = true

  * item[+]  
    * linkId = "SURGERYDATEPATIENT-02"
    * type = #date
    * text = "When was the reoperation?"
    * insert enableWhenTrue(SURGERYDATEPATIENT-Known-02)    
    * required = true

  * item[+]  
    * linkId = "SYSTPATIENT-02"
    * type = #choice
    * text = "Is the patient currently receiving systemic (ie drug) treatment for breast cancer?"
    * answerOption[+].valueString = "no, never had systemic treatment"
    * answerOption[+].valueString = "yes, but the treatment has stopped"
    * answerOption[+].valueString = "yes, on chemotherapy"
    * answerOption[+].valueString = "yes, on targeted therapy"
    * answerOption[+].valueString = "yes, on hormone therapy"
    * answerOption[+].valueString = "unkown"
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SYSTDATEPATIENT-Known-02"
    * type = #boolean
    * text = "Is the stop date of the systemic treatment known?"
    * enableWhen[+]
      * question = "SYSTPATIENT-02"
      * operator = #=
      * answerString = "yes, but the treatment has stopped"
    * required = true
// enableWhen is not working here with answerString

  * item[+]     
    * linkId = "SYSTDATEPATIENT-02"
    * type = #date
    * text = "When did the systemic treatment stop?"
    * insert enableWhenTrue(SYSTDATEPATIENT-Known-02)
    * required = true

// GROUP 4 - DISUTILITY OF CARE
* item[+]
  * linkId =  "DisutilityofCare-02"
  * type = #group
  * text = "Disutility of care"
  * required = true

  * item[+]
    * linkId = "REOP_BREAST-02"
    * type = #choice
    * text = "Indicate if the patient has undergone a reoperation due to involved margins after primary surgery:"
    * answerValueSet = Canonical(InvolvedMarginsValueSet)    
    * enableWhen[+]
      * question = "SURGERY_BREAST-02"
      * operator = #!=
      * answerCoding = BreastSurgeryTypesCodeSystem#999
    * required = true

  * item[+]
    * linkId = "REOPDATE_BREAST-Known-02"
    * type = #boolean
    * text = "Is the date of the reoperation due to positive margins known?"
    * enableWhen[+]
      * question = "REOP_BREAST-02"
      * operator = #!=
      * answerCoding = InvolvedMarginsCodeSystem#999
    * enableWhen[+]
      * question = "REOP_BREAST-02"
      * operator = #!=
      * answerCoding = InvolvedMarginsCodeSystem#0
    * enableBehavior = #all  
    * required = true    

  * item[+]
    * linkId = "REOPDATE_BREAST-02"
    * type = #date
    * text = "Please provide the date of the reoperation due to positive margins:"
    * insert enableWhenTrue(REOPDATE_BREAST-Known-02)
    * required = true

  * item[+]
    * linkId = "ComplicationImpact-02"
    * type = #choice
    * text = "Please state the impact of the complication experienced by the patient:"
    * answerValueSet = Canonical(ComplicationImpactValueSet)    
    * enableWhen[+]
      * question = "TREATMENT_BREAST-02"
      * operator = #!=
      * answerCoding = TreatmentTypesCodeSystem#0
    * enableWhen[+]
      * question = "TREATMENT_BREAST-02"
      * operator = #!=
      * answerCoding = TreatmentTypesCodeSystem#999
    * enableBehavior = #all
    * required = true
    * repeats = true


  * item[+]
    * linkId = "ComplicationAttrTreatment-02"
    * type = #choice
    * text = "Indicate whether the complication is attributable to treatment:"
    * answerOption[+].valueString = "No"
    * answerOption[+].valueString = "Yes"
    * answerOption[+].valueString = "Unknown"
    * enableWhen[+]
      * question = "TREATMENT_BREAST-02"
      * operator = #!=
      * answerCoding = ComplicationImpactCodeSystem#0
    * enableWhen[+]
      * question = "TREATMENT_BREAST-02"
      * operator = #!=
      * answerCoding = ComplicationImpactCodeSystem#999
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "COMPL_BREAST-02"
    * type = #choice
    * text = "Please indicate the type of complication:"
    * answerOption[+].valueString = "Wound infection"
    * answerOption[+].valueString = "Seroma/hematoma"
    * answerOption[+].valueString = "Hemorrhage"
    * answerOption[+].valueString = "Mastectomy skin flap necrosis"
    * answerOption[+].valueString = "Partial autologous graft loss"
    * answerOption[+].valueString = "Total autologous graft loss"
    * answerOption[+].valueString = "Loss of implant"
    * answerOption[+].valueString = "Thromboembolic event"
    * answerOption[+].valueString = "Nerve damage"
    * answerOption[+].valueString = "Delay wound healing/dehiscence"
    * answerOption[+].valueString = "Skin toxicity"
    * answerOption[+].valueString = "Pneumonia"
    * answerOption[+].valueString = "Neutropenic sepsis"
    * answerOption[+].valueString = "Unknown"
    * enableWhen[+]
      * question = "ComplicationAttrTreatment-02"
      * operator = #=
      * answerString = "Yes"
    * required = true
    * repeats = true
  //EnableWhen doesn't work here either because of string