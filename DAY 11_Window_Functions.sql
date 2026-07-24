/*1. Scenario - Company Salary Sequence
The HR department wants to assign a unique sequence number to every employee based on the highest salary.
Display the Employee ID, Employee Name, Department, Salary, and Sequence Number.
Arrange the employees from the highest salary to the lowest salary.*/
select * from employee;
select Emp_ID, EMP_Name, Department, Salary, row_number() over(
order by Salary DESC) As Sequence_Number
from Employee;

/*2. Scenario – Department-wise Salary Ranking
The HR team wants to rank employees based on salary within each department.
Display the Employee Name, Department, Salary, and Rank.
Highest salary should receive Rank 1 in every department.*/

select * from employee;
select EMP_Name, Department, Salary, row_number() over(
partition by Department
order by Salary DESC) As RANKING
from Employee;

/*3. Scenario – Branch-wise Employee Numbering
A company has multiple branches.
Assign a unique row number to employees within each branch based on Employee ID.
Display the Employee Name, Branch, Employee ID, and Row Number.*/
select * from employee;
select EMP_Name, City, EMP_ID , row_number() over(
partition by City
order by Emp_ID) As ROW_NUM
from Employee;

/*4. Scenario - Salary Ranking with Duplicate Salaries
The Finance department wants employees having the same salary to receive the same rank, and the next rank should not skip any number.
Display the Employee Name, Salary, and Salary Rank.*/
Use employee_db;
select * from employee;
select EMP_NAME, Salary, dense_rank() over(
order by salary) As RANKING
from employee;

/*5. Scenario - Branch and Department-wise Ranking
The company wants to rank employees separately for every Branch and Department combination based on salary.
Display the Employee Name, Branch, Department, Salary, and Rank.*/

select Emp_Name, City, Department, Salary, row_number() over
(
  partition by Department, CIty
  order by Salary) AS RANKING
  from employee;
  
/*6. Scenario - Salary Tie Breaker
The HR department wants employees sorted by highest salary.
If two employees receive the same salary, arrange them alphabetically by Employee Name.
Display the Employee Name, Salary, and Row Number.*/

select Emp_Name, Salary, row_number() over(
order by salary DESC, Emp_Name ASC) AS ROW_NUM
from employee;

/*7. Scenario - Department-wise Experience Ranking
The HR department wants to rank employees within each department.
Employees should first be sorted by Experience (Highest to Lowest).
If two employees have the same experience, sort them by Salary (Highest to Lowest).
Display the Employee Name, Department, Experience, Salary, and Rank.*/
select Emp_Name, Department, Experience, Salary, row_number() over
(
  partition by Department
  order by Experience DESC, salary desc) As RANKING
from employee;

/*8. Scenario - Multi-Level Employee Ranking
The management wants to assign row numbers separately for each Country and Branch.
Within each group, employees should be sorted by:
1. Salary (Highest)
2. Experience (Highest)
3. Employee Name (Alphabetically)
Display the Employee Name, Country, Branch, Salary, Experience, and Row Number.*/

select Emp_Name, Country, City, Salary, Experience, row_number()over
(
   partition by Country,City 
   order by Salary desc, Experience DESC, Emp_Name ASC) As ROW_NUM
from employee;

/*9. Scenario - Product Price Ranking by Category
The inventory team wants to rank products based on price within each product category.
Products with the same price should receive the same rank.
Display the Product Name, Category, Price, and Rank.*/
use etl_testing;
select * from product;
select Product_Name, Category, Price, Rank() over
( 
   partition by Category
   order by Price ) As RANKING
from product;

/*10. Scenario - Customer Order Sequence
An e-commerce company wants to assign order numbers separately for each Customer and Order Status.
Within each group, orders should be arranged by:
1. Order Date (Latest First)
2. Order Amount (Highest First)
Display the Customer ID, Order ID, Order Status, Order Date, Order Amount, and Sequence Number.*/
use employee_db;
select * from orders_table;

select *, row_number() over(
partition by Customer_ID, Order_status
order by Order_date DESC, Order_Amount DESC) AS Sequence_Number
from ord_table;