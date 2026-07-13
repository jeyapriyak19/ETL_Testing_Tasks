/* 1. Scenario 
A company stores employee names in different formats such as lowercase, uppercase, and mixed case. 
The HR department wants a report where all employee names are displayed in uppercase.
Write a SQL query to generate the required report.*/

use employee_db;

select * from employee;

select Emp_ID, upper(Emp_Name) as Emp_Name, Department, Salary, City from employee;

/* 2. Scenario
An online shopping company stores product prices with decimal values.
The finance team wants to generate a report showing:
• Original Price
• Rounded Price
• Ceiling Price
• Floor Price
Write a SQL query to generate the report.*/

Use etl_testing;

select Price, Round(Price), ceil(Price), floor(Price) from product;	

/*3. Scenario 
The HR department wants to analyze employee joining details.
Generate a report displaying:
• Employee Name
• Joining Date
• Joining Year
• Joining Month
• Joining Day
Write a SQL query to produce the report.*/

Use Employee_db;
select * from employee1;
select Emp_Name, Joining_Date, year(Joining_Date) As Year, month(Joining_Date) As month, day(Joining_Date) As Day from Employee1;

/* 4.Scenario
A customer database contains NULL values in mobile numbers and email addresses.
The customer support team wants a report where NULL values are replaced with appropriate display values without modifying the original data.
Write a SQL query to generate the report.*/

use employee_db;
create table customer(Cust_ID int primary Key, Cust_Name varchar(100), Mobile_No varchar(15), Email varchar(100));
insert into customer(Cust_ID, Cust_Name, Mobile_No, Email)values
				 (101, "Jeyapriya", "8765754321", "jeyapriya19@gmail.com"),
                 (102, "Meena", "9874563421", "Meena@gmail.com"),
                 (103, "Harish", "9034567321", "Harish@gmail.com"),
                 (104, "Aadvik", NULL, "Aadvik08@gmail.com"),
                 (105, "Ganesh", "8954642136", NULL),
                 (106, "Vani", NULL, "Vani21@gmail.com"),
                 (107, "Sandhya", "7689567436", NULL),
                 (108, "Ragavi", NULL, "Ragavi15@gmail.com");
select * from customer;
select Mobile_No, Email, ifnull(Mobile_No, 'Mobile Number is not available') as Mobile_Number, ifnull(Email, 'Email ID is not available' ) as Email_ID from customer;

/* 5.Scenario 
A training institute wants to categorize students based on their marks.
Generate a report that displays:
• Student Name
• Marks
• Performance Status based on a condition
The report should classify students according to the business rule provided by the trainer.
Write a SQL query to generate the report.*/

SELECT STD_NAME, Marks,
CASE
WHEN Marks >= 90 THEN 'Excellent'
WHEN Marks >= 75 THEN 'Good'
WHEN Marks >= 50 THEN 'Pass'
ELSE 'Fail' END AS Performance_Status
FROM Student1;
