/* 1. Scenario
A company is planning to provide a fixed salary increment of ₹5,000 to every employee. The HR department wants to generate a report showing both the current salary and the revised salary after the increment.
Write a SQL query to generate the report.*/

SELECT Emp_Name, Salary, Salary + 5000 AS Revised_Salary FROM employee;

/* 2.Scenario
The HR department wants to identify employees who belong to the Sales department and whose salary is greater than ₹45,000.
Generate a report containing only employees who satisfy both conditions.*/

select Emp_Name, Department, Salary from employee where department='Sales'and salary > 45000;

/* 3. Scenario
The management wants to retrieve employees who are working in either the HR department or the IT department.
Generate a report displaying all matching employees.*/

select * from employee where Department in('IT' , 'HR');

/* 4. Scenario
The recruitment team wants to identify employees whose names start with the letter 'A' and employees whose names end with the letter 'n'.
Write the required SQL queries to generate both reports.*/

select * from employee where Emp_name like 'A%' and Emp_Name like '%n';

/* 5. Scenario
A company has migrated employee records from another system. During migration, some employees were assigned a department, while others were left without one.
Generate the following reports:
• Employees whose department information is missing.
• Employees whose department information is available.*/

SELECT *
FROM employee
WHERE department IS NULL;

SELECT *
FROM employee
WHERE department IS NOT NULL;

