SELECT 
	 COUNT(*) AS Total_Employees,
	 AgeGroup,
     CAST(SUM(CASE WHEN Attrition = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS DECIMAL(5,2)) AS Attrition_Percentage
FROM HR_Attrition_Clean
GROUP BY 
		AgeGroup
ORDER BY
		AgeGroup;

