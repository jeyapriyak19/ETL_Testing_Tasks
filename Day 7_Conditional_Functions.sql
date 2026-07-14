/*1. Scenario
A training institute wants to generate a student result report.
Students who score 50 or above should be displayed as "Pass", and students scoring below 50 should be displayed as "Fail".
Write a SQL query to generate the report.*/
use etl_testing;
select STD_NAME,Course,Marks, if(Marks >=50, 'PASS', 'FAIL') AS Final_Result from Student1;

/*2. Scenario
The HR department wants to identify employees eligible for a yearly bonus.
Employees with a salary of ₹60,000 or more should be displayed as "Bonus Eligible"; all others should be displayed as "Not Eligible".
Write the SQL query.*/

use employee_db;
select Emp_Name, Salary, CASE WHEN Salary>=60000 THEN 'Bonus Eligible' ELSE 'Not Eligible' END As Eligiblity_Status from employee;

/*3. Scenario 
An online shopping company wants to classify customers based on their total purchase amount.
Customers meeting the company's purchase criteria should be displayed as "Premium Customer", otherwise display "Regular Customer".
Write the SQL query.*/

use etl_testing;
select * from customer;
select Cust_Name, Purchase_Amount, CASE WHEN Purchase_Amount>4000 THEN "Premium Customer" else "Regular Customer" end As Customer_status from customer;

/*4. Scenario
An inventory management system wants to display the stock status of every product.
Products satisfying the company's stock condition should display "In Stock", otherwise display "Out of Stock".
Write the SQL query.*/
use etl_testing;
SELECT Product_ID, Product_Name, Stock_Quantity,
CASE WHEN stock_quantity > 0 THEN 'In Stock'
ELSE 'Out of Stock'
END AS stock_status
FROM product;

/*5. Scenario
The HR department wants to classify employee performance into multiple levels based on their performance score.
Generate the report according to the company's performance policy.
Write the SQL query.*/
Select EMP_Name, performance_Score, 
CASE WHEN performance_Score>=85 THEN 'Excellent'
WHEN performance_Score>=70 then 'Good'
WHEN performance_Score>=50 then 'Average'
ELSE 'Needs Improvement' END as Performance_Level from employee_performance;

/* 6. Scenario
A university wants to classify students into different scholarship categories based on their semester marks.
Generate the scholarship report according to the university's scholarship rules.
Write the SQL query.*/
use etl_testing;
select * , CASE 
WHEN Marks>=85 THEN 'FULL SCHOLARSHIP'
WHEN Marks>=75 THEN 'HALF SCHOLARSHIP'
WHEN Marks>=55 THEN 'QUARTER SCHOLARSHIP'
ELSE 'NO SCHOLARSHIP' END as Scholarship_Category from student1;
           
/* 7. Scenario
A bank wants to classify loan applications into different approval categories based on the applicant's monthly income.
Generate the loan approval report according to the bank's business policy.
Write the SQL query.*/
select * from Loan_application;
select * , CASE 
when Monthly_Income >=60000 THEN "LOAN APPROVED"
when Monthly_Income >=40000 THEN "CONDITIONALLY APPROVED"
else "Rejected" END as Loan_Status from Loan_Application; 

/* 8.Scenario
An e-commerce company wants to classify products into different discount categories based on their selling price.
Generate the discount category report according to the company's pricing policy.
Write the SQL query.*/
select *, CASE
when Price >=50000 THEN "60% OFFER" 
when price >=25000 THEN "20% OFFER"
Else "NO OFFERS" END As Discount_Categories from product;

/* 9. A hospital wants to categorize patients based on their health score into different treatment priority levels.
Generate the patient priority report according to the hospital's treatment policy.
Write the SQL query.*/
select Patient_ID, Patient_Name, Health_Score, CASE 
when Health_Score<=40 THEN "High Priority"
when Health_Score<=70 THEN "Medium Priority"
ELSE "Low Priority" END as Treatment_Priority from Patients;

/*10. Scenario
The Finance department wants to classify employees into different salary bands based on their monthly salary.
Generate the salary band report according to the company's salary classification policy.
Write the SQL query.*/

select EMP_NAME, Department, Salary, CASE
when Salary>=70000 THEN "BAND A"
when Salary>=50000 THEN "BAND B"
when Salary>=40000 THEN "BAND C"
ELSE "BAND D" END as Salary_Bands from employee;







