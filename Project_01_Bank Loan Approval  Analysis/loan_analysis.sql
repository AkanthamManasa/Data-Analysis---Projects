-- Business Question: What is the overall loan approval rate?
SELECT Loan_Status,
       COUNT(*) AS total_applications,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM loans), 2)
       AS percentage
FROM loans
GROUP BY Loan_Status
ORDER BY total_applications DESC;


-- Business Question: Does credit history affect loan approval?
SELECT Credit_History,
       Loan_Status,
       COUNT(*) AS total,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER
       (PARTITION BY Credit_History), 2) AS percentage
FROM loans
GROUP BY Credit_History, Loan_Status
ORDER BY Credit_History DESC;

-- Business Question: Which property area has highest approval rate?
SELECT Property_Area,
       Loan_Status,
       COUNT(*) AS total_applications
FROM loans
GROUP BY Property_Area, Loan_Status
ORDER BY Property_Area, Loan_Status;

-- Business Question: Does education affect approval chances?
SELECT Education,
       Loan_Status,
       COUNT(*) AS total,
       ROUND(AVG(LoanAmount), 2) AS avg_loan_amount,
       ROUND(AVG(ApplicantIncome), 2) AS avg_income
FROM loans
GROUP BY Education, Loan_Status
ORDER BY Education, Loan_Status;

-- Business Question: What is average loan amount approved vs rejected?
SELECT Loan_Status,
       ROUND(AVG(ApplicantIncome), 2) AS avg_applicant_income,
       ROUND(AVG(CoapplicantIncome), 2) AS avg_coapplicant_income,
       ROUND(AVG(LoanAmount), 2) AS avg_loan_amount,
       COUNT(*) AS total_applications
FROM loans
GROUP BY Loan_Status;

-- Business Question: Which loan size category gets approved most?
SELECT
    CASE
        WHEN LoanAmount &lt; 100 THEN 'Small (below 100)'
        WHEN LoanAmount &lt; 200 THEN 'Medium (100-200)'
        ELSE 'Large (above 200)'
    END AS loan_category,
    Loan_Status,
    COUNT(*) AS total_applications,
    ROUND(AVG(ApplicantIncome), 2) AS avg_income
FROM loans
GROUP BY loan_category, Loan_Status
ORDER BY loan_category, Loan_Status;</sql><current_tab id="0"/></tab_sql></sqlb_project>
