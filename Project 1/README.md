# Project 1: Penicillin Yield Analysis

This repository contains my Project 1 submission for **STA 4163 – Statistical Methods II (Fall 2025, University of Central Florida)**.  
The goal of this project is to analyze how **treatment type** and **corn steep liquor concentration** affect penicillin yield using classical ANOVA techniques taught in class.

---

## 📂 Repository Contents

| File | Description |
|:--|:--|
| `Project1.ipynb` | Jupyter Notebook (R kernel) containing all code, analysis, and written conclusions for Q1–Q4. |
| `penicillin.xlsx` | Dataset provided by the instructor for the analysis. |
| `STA4163 Project 1 Instructions.docx` | Official project guidelines and grading criteria. |
| `penicilinTests.r` | R file used in Jupyter Notebook containing the code for the procedures |
| `README.md` | This file — summary of the project and repository structure. |

---

## Project Overview

### Objective
Determine whether penicillin yield is significantly affected by:
1. **Treatment type** (A–D)
2. **Corn steep liquor concentration** (Low vs High)
3. Their **interaction (Treatment × Corn)**

### Statistical Methods Used
All analyses follow procedures demonstrated in STA 4163 lectures and annotated notes.

| Question | Analysis | Key Functions Used |
|:--|:--|:--|
| **Q1** | Test of Equal Variance between Low vs High Corn | `var.test()`, `boxplot()`, `sd()` |
| **Q2** | ANOVA Assumption Checks for Treatment | `boxplot()`, `sd()`, SD ratio < 2 rule |
| **Q3a** | One-Way ANOVA for Treatment | `aov()`, `summary()` |
| **Q3b** | Nonparametric Alternative | `kruskal.test()` |
| **Q3c** | Decision: Which Test to Report | Boxplot + SD ratio justification |
| **Q4** | Two-Factor ANOVA + Interaction | `aov()`, `summary()`, `TukeyHSD()`, `mean()` |

All results are interpreted at **α = 0.05** with context-specific conclusions and manufacturer recommendations.

---

##  Key Findings

- **Equal Variance (Q1):** No significant difference in variance between Low and High corn concentrations.  
- **One-Way ANOVA (Q3a):** Treatment has a significant effect on yield (*p = 0.0324*).  
- **Two-Factor ANOVA (Q4):**  
  - Treatment effect significant (*p = 0.0157*).  
  - Corn effect significant (*p = 0.0147*).  
  - Interaction not significant (*p = 0.7284*).  
- **Post-Hoc Tests (Tukey):** Treatment C yields significantly higher output than A, B, and D.  
  High corn concentration yields significantly greater mean yield than Low.

---

## Recommendation

> **Treatment C under High corn concentration produces the highest mean penicillin yield (≈ 87.9 %) and should be used to maximize production.**

---

##  Technical Notes

- Language: **R** (run in **Jupyter Notebook with R kernel**)  
- Packages: `readxl`, base R (`aov`, `TukeyHSD`, `var.test`, `kruskal.test`)  

---

##  Author & Course Info

**Author:** Xavier Andres Soto Baron  
**Course:** STA 4163 – Statistical Methods II  
**Instructor:** Prof. Simone.  
**Semester:** Fall 2025, University of Central Florida  
