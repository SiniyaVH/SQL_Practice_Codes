
/*1. Table Creation (CREATE): Write the SQL statements to create a database named
“employee” and the following tables based on the provided schema:
⦿ Departments
⦿ Location
⦿ Employees
*/

Create database employee;
use employee;
Create Table departments(department_id int primary key,department_name varchar(100));
insert into departments(department_id, department_name)
values (101,"HR"),(102,"IT"),(103,"Marketing");
Create Table location(location_id int primary key, location varchar(30));
insert into location(location_id,location)
values (2001,"Kozhikode"),
(2002,"Palakkad"),
(2003,"Apalppuzha"),
(2004,"Thrissur"),
(2005,"Kannur"),
(2006,"Ernakulam");
Create Table Employees(employee_id int auto_increment PRIMARY KEY, employee_name varchar(50),gender enum('M','F'),
age int,hire_date date,designation varchar(100), Department_id int, location_id int, salary decimal(10,2));
insert into employees(employee_name, gender, age, hire_date,designation,department_id,location_id,salary)
values("Rashid",'M',28,'2024-02-05',"IT",102,2001,45000),
	("Sarath",'M',24,'2024-10-10',"HR",101,2002,45000),
	("Anit",'F',28,'2024-09-01',"IT",102,2003,35000),
	("Anisha",'F',22,'2026-08-19',"IT",102,2004,45000),
	("Aneesh",'M',29,'2024-11-10',"Marketing",103,2005,50000),
	("Amal",'M',30,'2024-07-05',"Marketing",103,2006,60000);
select * from employees;

/*
2. Table Alteration (ALTER): Consider the following scenarios and write the SQL
statements to alter the structure of the tables accordingly:
⦿ Add a new column named "email" to the Employees table to store
employee email addresses.
⦿ Modify the data type of the "designation" column in the Employees
table to support a wider range of values.
⦿ Drop the “age” column from the Employees table.
⦿ Rename the “hire_date” column to “date_of_joining”.
*/

Alter table employees add column email varchar(100);
Alter table employees modify designation varchar(200);
Alter table employees drop column age;
Alter table employees rename column hire_date to date_of_joining;

/*
3. Table Renaming (RENAME): Rewrite the SQL statements to rename the
following tables:
⦿ Rename the "Departments" table to "Departments_Info".
⦿ Rename the "Location" table to "Locations".
*/

Rename table departments to departments_info;
Alter table Location Rename to locations;
select * from employees;

/*
4. Table Truncation (TRUNCATE): Write an SQL statement to truncate the
Employees table
 */

Truncate table employees;

/*
5. Database & Table Dropping (DROP): Write the SQL statements to drop the
Employees table and then the “employee” database.
*/

Drop table Employees;
Drop database Employee;

/*
Drop the 'employee' database if it exists and recreate it using the
provided schema, ensuring that all tables are created with the
appropriate constraints as instructed
*/

Drop database IF Exists employee;


Create database employee;
use employee;

/*
⦿ Ensure that the "department_id" uniquely identifies each department.
⦿ Set up constraints on the "department_name" to avoid duplicate and null
entries
*/

Create Table departments(department_id int primary key,department_name varchar(100) unique not null);

/*
⦿ Establish a mechanism to automatically generate unique identifiers for
each location, ensuring that they are incremented sequentially.
⦿ Implement constraints to prevent the insertion of null and duplicate
locations.
*/

Create Table location(location_id int auto_increment primary key, location varchar(30) unique not null);

/*
⦿ Guarantee that each employee has a distinct identifier.
⦿ Create a restriction to ensure that the employee's name is always
provided.
⦿ Limit the acceptable values for the "gender" field to only 'M' or 'F'.
⦿ Enforce a condition to ensure that the employee's age is 18 or above.
⦿ Automatically assign the current date to the "hire_date" field if not
specified.
⦿ Establish links between the "department_id" and "location_id" fields in
the "employees" table and their respective tables.
*/

Create Table Employees(employee_id int PRIMARY KEY, employee_name varchar(50) not null,gender enum('M','F'),
age int,check(age>=18),hire_date date Default (CURRENT_DATE),designation varchar(100),
 Department_id int, Foreign key(department_id) References Departments(department_id),
 location_id int, Foreign key(location_id) References Location(location_id), salary decimal(10,2));
 