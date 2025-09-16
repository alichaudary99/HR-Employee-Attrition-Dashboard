SELECT 
    Department,
    CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS Attrition_Percentage,
    COUNT(*) AS Total_Employees
FROM HR_Attrition_Clean
GROUP BY Department
ORDER BY Attrition_Percentage DESC;
