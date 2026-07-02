-- Create Employee Database 

create database Employee_DB;
use Employee_DB;
-- Create Employee table

create table Employee(Emp_ID int primary key, Emp_Name varchar(20) NOT NULL, Department varchar(10), Salary decimal(7,2), City varchar(15));
-- Insert values into Employee table

insert into Employee(Emp_ID, Emp_Name, Department, Salary, City)values
                    (101,'John','IT', '50000', 'Chennai');
insert into Employee(Emp_ID, Emp_Name, Department, Salary, City)values
                    (102,'Mary','HR', '35000', 'Bangalore');
insert into Employee(Emp_ID, Emp_Name, Department, Salary, City)values
                    (103,'Davaid','Finance', '60000', 'Hyderabad');
insert into Employee(Emp_ID, Emp_Name, Department, Salary, City)values
                    (104,'Sam','IT', '45000', 'Chennai');
insert into Employee(Emp_ID, Emp_Name, Department, Salary, City)values
                    (105,'Priya','HR', '40000', 'Madurai');

commit;
-- Scenario 1 - Dispaly full Emplyee Directory
select * from Employee;

-- Scenario 2 - List Employee Names & Salaries
select Emp_Name, Salary from Employee;

-- Scenario 3 - List Department names in the company
select distinct(Department) from Employee;

-- Scenario 4 - List all unique cities of the employees
select distinct(City) from Employee;

-- Scenario 5 - Display first Three Employee Records
select * from Employee Limit 3;



