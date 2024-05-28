cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  affective-psychotic-disorders-depress---primary:
    run: affective-psychotic-disorders-depress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  affective-psychotic-disorders-remiss---primary:
    run: affective-psychotic-disorders-remiss---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-depress---primary/output
  affective-psychotic-disorders-psychoses---primary:
    run: affective-psychotic-disorders-psychoses---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-remiss---primary/output
  affective-psychotic-disorders-manicdepress---primary:
    run: affective-psychotic-disorders-manicdepress---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-psychoses---primary/output
  affective-psychotic-disorders-hallucination---primary:
    run: affective-psychotic-disorders-hallucination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-manicdepress---primary/output
  affective-psychotic-disorders-unspec---primary:
    run: affective-psychotic-disorders-unspec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-hallucination---primary/output
  bipolar-affective-psychotic-disorders---primary:
    run: bipolar-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-unspec---primary/output
  visual-affective-psychotic-disorders---primary:
    run: visual-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: bipolar-affective-psychotic-disorders---primary/output
  mixed-affective-psychotic-disorders---primary:
    run: mixed-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: visual-affective-psychotic-disorders---primary/output
  subchronic-affective-psychotic-disorders---primary:
    run: subchronic-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: mixed-affective-psychotic-disorders---primary/output
  schizoaffective-affective-psychotic-disorders---primary:
    run: schizoaffective-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: subchronic-affective-psychotic-disorders---primary/output
  affective-psychotic-disorders-resolved---primary:
    run: affective-psychotic-disorders-resolved---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: schizoaffective-affective-psychotic-disorders---primary/output
  hypomanic-affective-psychotic-disorders---primary:
    run: hypomanic-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-resolved---primary/output
  affective-psychotic-disorders-mania---primary:
    run: affective-psychotic-disorders-mania---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: hypomanic-affective-psychotic-disorders---primary/output
  affective-psychotic-disorders-schizophrenia---primary:
    run: affective-psychotic-disorders-schizophrenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-mania---primary/output
  affective-psychotic-disorders---primary:
    run: affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-schizophrenia---primary/output
  affective-psychotic-disorders-psychosis---primary:
    run: affective-psychotic-disorders-psychosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders---primary/output
  other-affective-psychotic-disorders---primary:
    run: other-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-psychosis---primary/output
  current-affective-psychotic-disorders---primary:
    run: current-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: other-affective-psychotic-disorders---primary/output
  severe-affective-psychotic-disorders---primary:
    run: severe-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: current-affective-psychotic-disorders---primary/output
  affective-psychotic-disorders-mention---primary:
    run: affective-psychotic-disorders-mention---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: severe-affective-psychotic-disorders---primary/output
  cyclic-affective-psychotic-disorders---primary:
    run: cyclic-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-mention---primary/output
  affective-psychotic-disorders-agitated---primary:
    run: affective-psychotic-disorders-agitated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: cyclic-affective-psychotic-disorders---primary/output
  moderate-affective-psychotic-disorders---primary:
    run: moderate-affective-psychotic-disorders---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-agitated---primary/output
  affective-psychotic-disorders-elated---primary:
    run: affective-psychotic-disorders-elated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: moderate-affective-psychotic-disorders---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: affective-psychotic-disorders-elated---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
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
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
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
