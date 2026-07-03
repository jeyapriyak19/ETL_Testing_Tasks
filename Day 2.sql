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
/* Scenario 1 
Employee Directory Report Dispaly full Emplyee Directory
Interview Question
The HR department wants a complete employee directory containing every column for all
employees. */
select * from Employee;

/* Scenario 2
Finance Salary Report 
Interview Question
The Finance Manager needs a report showing only employee names and their salaries*/
select Emp_Name, Salary from Employee;

/* Scenario 3 
Unique Department List
Interview Question
The Administration team wants to know how many different departments exist in the company
without repeating department names.*/
select distinct(Department) from Employee;

/*Scenario 4 
Unique Employee Cities (
Interview Question
The company is planning new branch offices and wants a list of all unique cities where
employees are currently located. */
select distinct(City) from Employee;

/* Scenario 5 
Dashboard Preview Report
Interview Question
A dashboard should initially show only a small preview of employee records instead of loading
the entire table. */
select * from Employee Limit 3;

commit;



