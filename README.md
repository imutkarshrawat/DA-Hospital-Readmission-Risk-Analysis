# 🏥 Hospital Readmission Risk Analysis

## 📌 Problem Statement
Hospitals lose significant revenue when patients are readmitted within 30 days — insurance penalties, lost bed capacity, and repeated treatment costs add up fast. This project analyzes 100,000+ real US hospital records to identify **who** is being readmitted, **why**, and **how hospitals can reduce it**.

## 🎯 Objective
Identify key risk factors driving 30-day patient readmissions using SQL for analysis, Python for statistical validation, and Power BI for visualization.

## 📊 Dataset
**Diabetes 130-US Hospitals Dataset** (1999–2008)
- 130 hospitals, 100,000+ encounters
- Source: [Kaggle / UCI ML Repository](https://www.kaggle.com/datasets/brandao/diabetes)

## 🛠️ Tools Used
- **SQL (PostgreSQL)** — data querying & analysis
- **Power Query (Excel)** — data cleaning
- **Python (Pandas, Matplotlib, Seaborn)** — correlation analysis & visualization
- **Power BI** — interactive dashboard

## 🔍 Key Findings

1. **Prior hospitalizations are the strongest predictor** — patients with 5+ prior inpatient visits had a **28.4% readmission rate**, compared to just **8.1%** for first-time patients — nearly 3.5x higher risk.

2. **Age matters** — readmission risk steadily increases with age, peaking at **10.8%** for patients aged 80–90, compared to under **2%** for patients under 10.

3. **Longer hospital stays correlate with higher readmission** — counterintuitive at first, but explained by case complexity: sicker patients stay longer AND are more likely to return.

4. Sample size validation was applied throughout — initial findings showing 100% readmission rates were investigated and excluded once found to be based on samples of 2-3 patients, ensuring only statistically reliable insights were presented.

## 📈 Dashboard Preview
![Dashboard](images/dashboard_screenshot.png)

## 📁 Repository Structure
