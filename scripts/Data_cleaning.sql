-- STEP 1: Create a cleaned table
SELECT
    -- Numeric columns
    Age,
    CASE 
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 55 THEN '46-55'
        ELSE '56+' 
    END AS AgeGroup,

    COALESCE(Attrition, 'No') AS Attrition,
    LTRIM(RTRIM(COALESCE(BusinessTravel, 'Unknown'))) AS BusinessTravel,
    DailyRate,
    LTRIM(RTRIM(COALESCE(Department, 'Unknown'))) AS Department,
    DistanceFromHome,
    COALESCE(Education, 0) AS Education,
    LTRIM(RTRIM(COALESCE(EducationField, 'Unknown'))) AS EducationField,
    -- Drop EmployeeCount (always 1)
    EmployeeNumber, -- Keep this if you need unique ID
    EnvironmentSatisfaction,
    LTRIM(RTRIM(Gender)) AS Gender,
    HourlyRate,
    JobInvolvement,
    JobLevel,
    LTRIM(RTRIM(JobRole)) AS JobRole,
    JobSatisfaction,
    LTRIM(RTRIM(MaritalStatus)) AS MaritalStatus,
    MonthlyIncome,
    MonthlyRate,
    COALESCE(NumCompaniesWorked, 0) AS NumCompaniesWorked,
    CASE WHEN Over18 IS NULL THEN 'Y' ELSE Over18 END AS Over18,
    CASE WHEN OverTime IS NULL THEN 'No' ELSE OverTime END AS OverTime,
    PercentSalaryHike,
    PerformanceRating,
    RelationshipSatisfaction,
    -- Drop StandardHours (always 80)
    StockOptionLevel,
    COALESCE(TotalWorkingYears, 0) AS TotalWorkingYears,
    TrainingTimesLastYear,
    WorkLifeBalance,
    YearsAtCompany,
    YearsInCurrentRole,
    YearsSinceLastPromotion,
    YearsWithCurrManager
INTO HR_Attrition_Clean
FROM HR_Employee_Attrition;
