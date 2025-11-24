# Project 2: COVID-19 Chi-Square Test & Credit Score Regression Analysis

This repository contains my **Project 2** submission for  
**STA 4163 – Statistical Methods II (Fall 2025, University of Central Florida)**.

This project includes:

1. A **chi-square test of independence** analyzing COVID-19 vaccine effectiveness.  
2. A **simple and multiple linear regression analysis** predicting credit scores using income, age, and education.

All analyses strictly follow the requirements outlined in the official instructions  
(see *STA4163 Project 2 Instructions Fa25-1.docx*).

---

## 📂 Repository Contents

| File | Description |
|------|-------------|
| `Project 2.ipynb` | Jupyter Notebook containing all code, analysis, plots, and written answers for Question 1 and Question 2. |
| `project2Code.R` | R file with the full reproducible R code used inside the notebook. |
| `STA4163 Project 2 Dataset.xlsx` | Dataset for the regression analyses (income, age, education, credit score). |
| `STA4163 Project 2 Instructions Fa25-1.docx` | Official project instructions from Webcourses. |
| `README.md` | This summary file. |

---

## 📘 Project Overview

### Objective
This project analyzes:

1. **COVID-19 vaccine vs infection status** using a chi-square test of independence.  
2. **Credit score prediction** using:
   - Simple Linear Regression (Income → Credit Score)  
   - Multiple Linear Regression (Income + Age + Education → Credit Score)

All procedures follow STA4163 lecture methods and annotated notes.

---

# 🧪 Question 1 – Chi-Square Test (COVID-19 Vaccine Effectiveness)

### Goal
Determine whether **treatment** (Vaccine vs Placebo) is associated with **infection status**.

### Statistical Methods Used
| Step | Method |
|------|--------|
| Assumption Check | Expected counts rule (≥ 1 and ≤ 20% < 5) |
| Hypothesis Test | Chi-square test of independence |
| R Functions | `matrix()`, `chisq.test()`, expected counts via `$expected` |

### Key Findings
- All chi-square assumptions are satisfied.  
- Test statistic ≈ **641.71**  
- p-value < **2.2e-16**

### Conclusion
Vaccination status and infection outcome are **highly dependent**.  
There is overwhelming statistical evidence that the vaccine significantly reduces infection rates.

---

# 📊 Question 2 – Regression Analysis for Credit Scores

The bank wants to predict credit score using **Income**, **Age**, and **Education**.

---

## Part I — Simple Linear Regression (Income → Rating)

### Key Results
- Regression line:  
  **ŷ = 193.2599 + 3.5573(Income)**
- Slope is highly significant (*p* < 2.2e-16)
- Correlation r ≈ **0.787**  
- R² ≈ **0.6194**
- All regression assumptions (linearity, variance, normality, independence) are met

### Interpretation
Higher income is associated with higher credit scores.  
The model is appropriate for prediction.

---

## Part II — Multiple Regression (Income + Age + Education → Rating)

### Regression Equation
**ŷ = 247.4118 + 3.5768(Income) − 0.3550(Age) − 2.6173(Education)**

### Key Results
- R² = **0.6236**, Adjusted R² = **0.6178**
- Overall F-test is highly significant → model is useful
- **Education is NOT a significant predictor** (p = 0.249)

### Recommendation to the Bank
Use **Income** (and possibly Age),  
but **do not use Education** as a predictor—it does not improve the model.

---

# 🔧 Technical Notes

### Software
- **R** (run in Jupyter Notebook with R kernel)
- Packages used:
  - `readxl`
  - Base R functions (`lm`, `summary`, `plot`, `chisq.test`)

### Reproducibility
All results, plots, hypothesis tests, and interval calculations are fully reproducible using:  
- `Project 2.ipynb`  
- `project2Code.R`

---

# 👤 Author & Course Info

**Author:** Xavier Andres Soto Baron  
**Course:** STA 4163 – Statistical Methods II  
**Instructor:** Prof. Simone  
**Semester:** Fall 2025, University of Central Florida

---

