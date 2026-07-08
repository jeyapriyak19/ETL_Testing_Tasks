/* 1.Scenario
A company is developing an Employee Registration System. Every employee should have a
unique Employee ID and Email ID. During testing, one employee tries to register using an Email
ID that already exists in the database.
Interview Question
Which SQL Constraint should be implemented to prevent duplicate Email IDs, and why? */

Use Employee_DB;

create table Employee_Table(Emp_ID int primary key, 
Emp_Name varchar(20) NOT NULL, 
Email Varchar(50) UNIQUE, 
Phone varchar(15),
Department varchar(10));

/* 2.Scenario 
An order can be created only if the Customer already exists in the Customer table. 
During testing, a developer attempts to insert an order for a Customer ID that is not available in the Customer table.
Interview Question
Which SQL Constraint should be used to enforce this business rule? */

Use Employee_DB;
create table Customers(Cust_ID int Primary Key, 
Cust_name varchar(30),
 City Varchar(30));

create table orders(
Order_ID int, 
Cust_ID int, 
Product_ID int, 
Order_Date date,
FOREIGN KEY (Cust_ID) REFERENCES Customers(Cust_ID));

/* 3. Scenario
The college has decided that every student must provide their name during admission. While entering records, a staff member leaves the Student Name field empty.
Interview Question
Which SQL Constraint should be applied to ensure that every student record contains a Student Name? */

create table student(
Student_ID int Primary Key, 
Student_name varchar(30) Not NULL,
Age varchar(2),
Course varchar(10));

/* 4. Scenario The bank allows only two account types: Savings and Current. During data entry, an employee enters the Account Type as "Personal".
Interview Question
Which SQL Constraint should be used to restrict invalid account types from being stored in the database?*/

CREATE TABLE Bank_Account (
    Account_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(30), 
    Account_Type VARCHAR(15),
    Balance DECIMAL(10,2),
    CHECK (Account_Type IN ('Savings', 'Current'))
);

/* 5. Scenario 
Whenever a new asset is added to the system, if the user does not specify the Status, it should automatically be stored as 'Active'.
Interview Question
Which SQL Constraint can automatically assign a value when no value is provided during insertion?*/

CREATE TABLE Assets (
    Asset_ID INT PRIMARY KEY,
    Asset_Name VARCHAR(50),
    Status VARCHAR(20) DEFAULT "Active",
    Purchase_Date Date
);
commit
