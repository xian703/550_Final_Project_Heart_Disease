# Heart Disease Analysis Final Project

## 1. Project Overview

This project performs exploratory data analysis and visualization on the UCI Heart Disease dataset.
- **Course/Assignment:** 550 Final Project
- **Objective:** Explore key factors related to heart disease and present findings through tables and figures.
- **Data Source:** [UCI Heart Disease Dataset](https://archive.ics.uci.edu/dataset/45/heart+disease)

---

## 2. Data Description

The dataset for this project comes from multiple files provided by the UCI repository. The files included in the `heart_disease_data/` directory are:
- **cleveland.data:** Raw data from the Cleveland dataset.
- **hungarian.data:** Raw data from the Hungarian dataset.
- **switzerland.data:** Raw data from the Switzerland dataset.
- **processed.cleveland.data:** Preprocessed version of the Cleveland dataset.
- **heart-disease.names:** Metadata file describing the attributes and data structure.

**Note:**  
- T use one of the datasets  `processed.cleveland.data` for analysis or merge multiple files after ensuring that the columns align.  
- All table and figure generation code is in the final_report.Rmd
- Use Makefile or Knit to generate the final_report.
---

## 3. Directory Structure

Below is the project directory tree:

```
heart-disease-analysis/
├── data/
│   ├── cleveland.data
│   ├── hungarian.data
│   ├── switzerland.data
│   ├── processed.cleveland.data
│   └── heart-disease.names
├── code/
│   ├── create_table.R         # R script to generate the required table
│   └── create_figure.R        # R script to generate the required figure
├── final_report.Rmd           # R Markdown file for the final analysis report
├── Makefile                   # Makefile to build the final report
└── README.md                  # This file
