select * from diabetic_data limit 10;

-- Query 1 — Overall Readmission Rate
select count(*),
	round((sum(readmitted_30days) *100.00/count(*)),2)AS Readmission_Rate
from diabetic_data;

-- Query 2 — Readmission Rate by Age Group
select age,count(*),
	round((avg(readmitted_30days) *100.00),2)AS Readmission_Rate_by_Age
from diabetic_data
group by age
order by age;

-- Query 3 — Does Length of Stay Affect Readmission?
select time_in_hospital,count(*),
	round((avg(readmitted_30days) *100.00),2) AS Readmission_Rate_by_Stay
from diabetic_data
group by time_in_hospital
order by  Readmission_Rate_by_Stay

-- Query 4 — Strongest Predictor: Prior Inpatient Visits
SELECT number_inpatient,
    COUNT(*) AS total_patients,
    ROUND(AVG(readmitted_30days) * 100.0, 2) AS readmission_rate_by_priorvisits
FROM diabetic_data
GROUP BY number_inpatient
HAVING COUNT(*) > 100
ORDER BY readmission_rate_by_priorvisits DESC;

-- Query 5 — Top 10 Diagnoses With Highest Readmission
SELECT 
    diag_1,
    COUNT(*) AS total_patients,
    ROUND(AVG(readmitted_30days) * 100.0, 2) AS readmission_rate
FROM diabetic_data
GROUP BY diag_1
HAVING COUNT(*) > 100
ORDER BY readmission_rate DESC
LIMIT 10;



