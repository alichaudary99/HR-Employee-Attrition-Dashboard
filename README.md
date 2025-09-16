# HR-Employee-Attrition-Dashboard
Problem Statement

Employee attrition (turnover) is a major challenge for HR departments.
This project analyzes why employees are leaving, focusing on key factors like department, salary, work-life balance, and age group, and builds an interactive dashboard in Power BI to help HR take data-driven actions.

📂 Dataset

Source: IBM HR Analytics Employee Attrition & Performance Dataset (Kaggle)

Rows: 1,470 employees

Columns: 35 features (Department, Age, MonthlyIncome, JobRole, WorkLifeBalance, Attrition, etc.)

🔧 Project Workflow
1️⃣ Data Collection

Downloaded CSV dataset from Kaggle.

2️⃣ Data Cleaning (SQL Server)

✅ Removed duplicate rows

✅ Handled missing values using COALESCE() and filling with median/mode

✅ Cleaned categorical data (trimmed spaces, standardized text case)

✅ Stored cleaned data into a final table HR_Attrition_Clean

3️⃣ Data Analysis (SQL Queries)

Attrition % by Department

Attrition % by Gender

Attrition % by Age Group

Salary Distribution vs Attrition

Overtime % vs Attrition

4️⃣ Data Visualization (Power BI)

Built an interactive HR Attrition Dashboard with:

🔑 KPIs (Top Section)

Overall Attrition %

Total Employees

Average Monthly Income

📊 Charts (Middle Section)

Bar Chart: Attrition % by Department

Clustered Bar: Attrition % by Gender

Stacked Bar: Attrition % by Age Group

Scatter Plot: Salary vs Attrition

🧮 Summary Table (Bottom Section)

Department-wise comparison:

Attrition %

Avg Salary

Avg Overtime %

Avg Job Satisfaction

✅ Added slicers for Department, Gender, and Age Group for interactive filtering.

📈 Insights & Key Findings
Insight	Recommendation
Sales Department has highest attrition (~28%)	Review workload, incentives, and career growth opportunities
Younger employees (26–35 years) leave more	Implement mentorship programs and career planning
High overtime correlates with higher attrition	Improve work-life balance by reducing workload
Lower monthly income groups show higher attrition	Revisit salary structure for fairness and competitiveness
