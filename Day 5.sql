/*1. Scenario
A company's HR department wants to know the total salary expense paid to all employees every month.
Write a SQL query to generate the required report.*/

use employee_db;
select * from employee;
select sum(salary) from employee;

/*2. Scenario 
A training institute wants to calculate the average marks scored by all students in the SQL course.
Write a SQL query to display the average marks.*/

select * from student;
select AVG(Marks) from student;

/*3. Scenario
An e-commerce company wants to identify the most expensive product and the least expensive product available in its inventory.
Write a SQL query to generate the report.*/
use etl_testing;
select * from product;
select max(price) as Expensive_Price, min(price) as Least_Expensive_Price from product;

/*4.Scenario
A banking application needs to know how many customers have registered in the system.
Write a SQL query to display the total number of customer records. */
use employee_db;
select * from customer;
select count(Cust_ID) from customer;

/*5. Scenario
The management team wants a salary summary dashboard that displays the following information:
• Total number of employees
• Total salary paid
• Average salary
• Highest salary
• Lowest salary
Write a single SQL query to generate the dashboard.*/
use employee_db;
select count(Emp_ID) As Total_Employees, sum(salary) as Sum_Salary, avg(salary) as Average_Salary, max(Salary) as Higbest_Salary,min(salary) as Lowest_Salary from employee;
commit;



