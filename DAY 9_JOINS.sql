/*1. Scenario 
The HR department wants to generate a report showing employee details along with their department names.
Display the Employee ID, Employee Name, Department Name, and Salary for employees who are assigned to a valid department.
Sort the report by Salary in descending order.*/

use employee_db;
select * from employee3;
select * from department;
select E.EMP_ID, E.EMP_NAME, D.DEPARTMENT_NAME,E.Salary, D.Department_ID
from employee3 E
INNER JOIN department D
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
order by E.Salary DESC;

/*2. Scenario 
An online shopping company wants to identify customers who have registered on the website but have not placed any orders.
Display the Customer ID, Customer Name, City, and Order ID.
Arrange the result in ascending order of Customer Name.*/

select C.Cust_ID,C.Cust_Name,C.City,O.Order_ID 
from customer_table C 
LEFT JOIN orders_table O 
ON C.Cust_ID=O.Cust_ID 
where O.Order_ID IS NULL
order by Cust_Name;

select * from customer_table;
select * from orders_table;

/* 3.Scenario
The management wants to identify departments that currently have no employees assigned.
Display the Department ID, Department Name, Employee ID, and Employee Name.
Sort the result by Department Name.*/

select * from employee_table;
select * from department_table;

select D.Department_ID,D.Department_Name, E.Emp_ID, E.EMP_Name 
from Employee_table E 
RIGHT JOIN Department_table D
ON E.Department_ID=D.Department_ID
where E.EMP_ID IS NULL
order by D.Department_Name;

/*An inventory management team wants to compare the Product Master table with the
Warehouse Stock table.
Generate a report containing:
• Products available in both tables
• Products available only in the Product Master
• Products available only in the Warehouse Stock
Display the Product ID, Product Name, Warehouse Quantity.
Sort the report by Product ID.*/
select * from product_master;
select * from warehouse_stock;
select P.Product_ID, P.Product_Name, W.Quantity 
from Product_Master P 
Left join Warehouse_Stock W
ON P.Product_ID=W.Product_ID
UNION
select P.Product_ID, P.Product_Name, W.Quantity 
from Product_Master P 
right join Warehouse_Stock W
ON P.Product_ID=W.Product_ID
Order by Product_ID;

/*5.Scenario
A company wants to generate an organization hierarchy report.
Display each Employee Name along with their Reporting Manager Name.
Include employees even if they do not have a manager.
Sort the report alphabetically by Employee Name.*/

select 
E.EMP_NAME AS Employee_Name,
M.EMP_NAME AS Manager_Name
from Employee6 E
LEFT JOIN Employee6 M
ON E.MANAGER_ID=M.EMP_ID
order by E.EMP_NAME;

select * from employee6;
