cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  hypertension-uncomplicated-elixhauser-primary-care---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  hypertension-uncomplicated-elixhauser-primary-care-month---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-month---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-specified---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-month---primary/output
  trial-hypertension-uncomplicated-elixhauser-primary-care---primary:
    run: trial-hypertension-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-specified---primary/output
  renovascular-hypertension-uncomplicated-elixhauser-primary-care---primary:
    run: renovascular-hypertension-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: trial-hypertension-uncomplicated-elixhauser-primary-care---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-admin---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-admin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: renovascular-hypertension-uncomplicated-elixhauser-primary-care---primary/output
  essential-hypertension-uncomplicated-elixhauser-primary-care---primary:
    run: essential-hypertension-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-admin---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-treatment---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-treatment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: essential-hypertension-uncomplicated-elixhauser-primary-care---primary/output
  antihypertensive-hypertension-uncomplicated-elixhauser-primary-care---primary:
    run: antihypertensive-hypertension-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-treatment---primary/output
  clinic-hypertension-uncomplicated-elixhauser-primary-care---primary:
    run: clinic-hypertension-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antihypertensive-hypertension-uncomplicated-elixhauser-primary-care---primary/output
  secondary-hypertension-uncomplicated-elixhauser-primary-care---primary:
    run: secondary-hypertension-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: clinic-hypertension-uncomplicated-elixhauser-primary-care---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-monitoring---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-monitoring---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: secondary-hypertension-uncomplicated-elixhauser-primary-care---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-malignant---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-malignant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-monitoring---primary/output
  hypertension---primary:
    run: hypertension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-malignant---primary/output
  other-hypertension-uncomplicated-elixhauser-primary-care---primary:
    run: other-hypertension-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: hypertension---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-control---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: other-hypertension-uncomplicated-elixhauser-primary-care---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-stage---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-stage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-control---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-therapy---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-therapy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-stage---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-review---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-therapy---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-reaction---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-review---primary/output
  hypertension-uncomplicated-elixhauser-primary-care-benign---primary:
    run: hypertension-uncomplicated-elixhauser-primary-care-benign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-reaction---primary/output
  severe-hypertension-uncomplicated-elixhauser-primary-care---primary:
    run: severe-hypertension-uncomplicated-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: hypertension-uncomplicated-elixhauser-primary-care-benign---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: severe-hypertension-uncomplicated-elixhauser-primary-care---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
