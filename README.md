# Hypertension-Elixhauser-primary-care

Hypertension (uncomplicated) Elixhauser primary care - PH1082

## Requirements

[Docker](https://docs.docker.com/install/) and [CWLTool](https://github.com/common-workflow-language/cwltool#install)

## Configuration

Specify data source credentials in [js/read-potential-cases-omop.js](js/read-potential-cases-omop.js).

## Usage

Run: `cwltool Hypertension-Elixhauser-primary-care.cwl Hypertension-Elixhauser-primary-care-inputs.yml`

***

### Based on original definition developed by David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa
### Generated by [Phenoflow](https://kclhi.org/phenoflow).
