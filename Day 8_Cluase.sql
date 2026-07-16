/* 1. Scenario
The HR department wants to identify departments where the average employee salary is greater than the company's salary benchmark.
Display the Department and its Average Salary.
Sort the result by Average Salary in descending order and display only the top 3 departments.*/
use employee_db;
select Department, avg(Salary) As Average_Salary from employee group by Department having Average_Salary > 60000
order by Average_Salary DESC limit 3;
select avg(salary) As Average_Salary from employee;

/*2. An e-commerce company wants to identify the top-selling products.
Display each Product Category along with the total quantity sold.
Only display categories that have sold more than the company's minimum sales requirement.
Sort the result from highest to lowest quantity sold and display only the top 5 categories.*/
use etl_testing;
select Category, 
SUM(Stock_Quantity) As Total_Quantities 
from product 
group by Category 
having Total_Quantities>100 
order by Total_Quantities DESC 
limit 5;

/* 3. Scenario
A retail company wants to prepare a customer purchase report.
Display only customers whose purchase amount satisfies the company's purchase criteria.
Remove duplicate city names in the report and display the customers in ascending alphabetical order.*/
use etl_testing;
select distinct City, CUST_NAME from customer where Purchase_Amount>25000 order by CUST_NAME ASC;

/* 4. Scenario
A hospital wants to analyze the number of patients treated in each department.
Display the Department Name and Total Patients.
Show only those departments that have treated more than the hospital's required minimum number of patients.
Sort the result based on the total number of patients in descending order.*/
use etl_testing;
select Department, count(*) as Patient_Count from patients group by Department Having Patient_Count>3 order by  Patient_Count DESC;

/*5. Scenario
A company wants to prepare a report of employees who satisfy both the company's age criteria and salary criteria.
Display the employee details, arrange the report by Salary in descending order, and return only the top 5 employees.*/

select * from employee where age>=30 and salary>=60000 order by salary desc limit 5;