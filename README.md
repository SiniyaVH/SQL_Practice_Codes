# 🗄️ MySQL Practice Code & Assignments

Welcome to my *MySQL Practice & Assignment Repository*! 👋

This repository contains my SQL practice codes, assignments, queries, and exercises that I have worked on while learning and improving my *MySQL and database management skills*.

The main goal of this repository is to build a strong foundation in SQL by solving practical problems and working with relational databases.

## 📚 Topics Covered

This repository includes practice on:

* Database and table creation
* Data types and constraints
* CREATE, ALTER, DROP
* INSERT, UPDATE, DELETE
* SELECT statements
* WHERE conditions
* Comparison and logical operators
* ORDER BY
* GROUP BY
* HAVING
* Aggregate functions

  * COUNT()
  * SUM()
  * AVG()
  * MIN()
  * MAX()
* DISTINCT
* LIKE
* BETWEEN
* IN
* IS NULL
* Joins

  * INNER JOIN
  * LEFT JOIN
  * RIGHT JOIN
* Primary Keys and Foreign Keys
* AUTO_INCREMENT
* ENUM
* Date and time functions
* Subqueries
* Conditional queries
* Employee and department-based queries
* Salary and designation analysis
* Location-based analysis

## 📝 Practice Examples

Some of the queries practiced in this repository include:

### Employees with salary greater than ₹50,000

sql
SELECT *
FROM employees
WHERE salary > 50000;


### Employees hired before January 1, 2016

sql
SELECT *
FROM employees
WHERE hire_date < '2016-01-01';


### Departments with fewer than 3 employees

sql
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) < 3;


### Locations where female employees have an average age below 30

sql
SELECT location_id, AVG(age) AS average_age
FROM employees
WHERE gender = 'F'
GROUP BY location_id
HAVING AVG(age) < 30;


## 🛠️ Tools Used

* *MySQL*
* *MySQL Workbench*

## 🎯 Learning Objectives

Through these exercises, I am focusing on:

* Understanding relational databases
* Writing efficient SQL queries
* Working with multiple related tables
* Analyzing data using aggregate functions
* Understanding relationships between tables
* Solving real-world, scenario-based SQL problems
* Improving problem-solving and analytical skills

## 📈 My Learning Journey

This repository represents my ongoing journey in *SQL and Data Analytics*.

I regularly add new practice questions, assignments, and SQL solutions as I learn new concepts and improve my database querying skills.

## 🚀 Future Learning

I plan to expand this repository by adding:

* Advanced SQL queries
* Complex joins
* Subqueries and CTEs
* Window functions
* Stored procedures
* Views
* SQL optimization
* Real-world SQL projects
* Data analysis case studies

## 👩‍💻 About Me

I am building my skills in *SQL, Excel, Power BI, and Data Analytics* through hands-on projects, assignments, and practice exercises.

This repository is a collection of my learning progress and practical work.

---

⭐ *If you find this repository useful, feel free to explore the SQL queries and practice along with me!*

*Keep Learning • Keep Practicing • Keep Analyzing 📊*
