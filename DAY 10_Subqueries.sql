/*1. Scenario - Above Department Average Salary
The HR department wants to identify employees who earn more than the average salary of their own department.
Display the Employee ID, Employee Name, Department, and Salary.
Sort the result by Salary in descending order.*/
select * from employee;
use employee_db;
select Emp_ID, Emp_name, 
Department, 
Salary 
from Employee E
where Salary>
(
Select AVG(Salary)
from Employee
where Department = E.Department
)
order by salary desc;

/*2. Scenario - Highest Paid Employee in Each Department
The management wants to identify the employee(s) who receive the highest salary in each department.
Display the Employee Name, Department, Salary, and Experience.
Arrange the result in descending order of Salary.*/
select Emp_name, 
Department, 
Salary, Experience
from Employee E
where Salary = 
(
Select MAX(Salary)
from Employee
where Department = E.Department
)
order by salary desc;

/* 3.Scenario - Customers with Highest Order Amount
An e-commerce company wants to identify customers who placed the highest-value order.
Display the Customer Name, City, Order ID, and Order Amount.
Arrange the report alphabetically by Customer Name.*/
select * from customer_table;
select * from orders_table;
SELECT C.Cust_Name,
C.City,
O.Order_ID,
O.Order_Amount
FROM Customer_table C
INNER JOIN Orders_table O
ON C.Cust_ID = O.Cust_ID
WHERE O.Order_Amount =
(
    SELECT MAX(Order_Amount)
    FROM Orders_table
)
ORDER BY C.Cust_Name ASC;

/*4. Scenario - Employees Working in Departments with More Than Three Employees
The HR department wants to generate a report of employees who work in departments having more than three employees.
Display the Employee Name, Department, Salary, and Age.
Sort the result by Department and then by Salary in descending order.*/
select * from employee;

SELECT Emp_Name,
Department,
Salary,
Age
FROM Employee
WHERE Department IN
(
    SELECT Department
    FROM Employee
    GROUP BY Department
    HAVING COUNT(*) > 3
)
ORDER BY Department ASC,
Salary DESC;

/*5. Scenario - Products Never Ordered
An online shopping company wants to identify products that have never been ordered.
Display the Product ID, Product Name, Category, and Price.
Sort the report by Product Name.*/
use employee_db;
select * from warehouse_Stock;
use etl_testing;
select * from product;

SELECT P.Product_ID,
P.Product_Name,
P.Category,
P.Price
FROM etl_testing.product P
WHERE NOT EXISTS
(
    SELECT *
    FROM Warehouse_Stock O
    WHERE O.Product_ID = P.Product_ID
)
ORDER BY P.Product_Name ASC;

/*6. Scenario - Employees Matching Department and Experience
The HR team wants to identify employees whose Department and Experience match the Department and Experience of employees working in the Finance department.
Display the Employee Name, Department, Experience, and Salary.
Arrange the report by Experience in descending order.*/
use employee_db;
select * from employee;

SELECT Emp_Name, Department, Experience, Salary
FROM Employee
WHERE (Department, Experience) IN
(
SELECT Department, Experience
FROM Employee
WHERE Department = 'Finance'
)
ORDER BY Experience DESC;

/*7. Scenario - Employees Reporting to the Manager with the Highest Salary
The company wants to identify employees who report directly to the manager who receives the highest salary in the organization.
Display the Employee Name, Manager ID, Department, and Salary.
Sort the report by Employee Name.*/

select Emp_Name, Manager_ID, Department, Salary from employee 
where Salary = 
( select MAx(salary) from employee) 
order by Emp_Name;

