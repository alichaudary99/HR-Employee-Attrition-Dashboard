SELECT 
    Attrition,
    AVG(MonthlyIncome) AS Avg_Monthly_Income,
    COUNT(*) AS Employees
FROM HR_Attrition_Clean
GROUP BY Attrition;
