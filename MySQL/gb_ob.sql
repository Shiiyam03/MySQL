create schema gb_ob

use gb_ob

create table student(
student_name varchar(200),
mark int,
department varchar(200)
)

insert into student values ("Praveen",67,"CSE");
insert into student values ("Manoj",89,"MECH");
insert into student values ("karthi",23,"ECE");
insert into student values ("Raju",63,"CSE");
insert into student values ("Deepak",88,"CSE");
insert into student values ("Vimal",81,"MECH");
insert into student values ("Shiyam",91,"CSE");
insert into student values ("Yogesh",50,"ECE")

select * from student

-- Order By - ordering in ascending or descending
-- Student from CSE
select * from student where department = "CSE"

-- Student scored high marks to low and vice versa
select student_name, mark from student order by mark desc
select student_name, mark from student order by mark asc 

-- Group By - Finding the average of CSE or ECE or MECH (group by). Mostly used in aggregate function
select avg(mark), department from student group by department

select count(student_name), department from student group by department order by count(student_name) asc



-- Example Problem
use gb_ob

create table Employee(
EmployeeID int,
FirstName varchar(50),
LastName varchar(50),
Department varchar(50),
Salary int
)

insert into Employee (EmployeeID, FirstName, LastName, Department, Salary)
values
(1,'John','Doe','HR',55000),
(2,'Jane','Smith','IT',60000),
(3,'Bob','Johnson','IT',62000),
(4,'Alice','Williams','HR',54000),
(5,'Eva','Davis','Finance',58000),
(6,'Mike','Brown','Finance',59000)

select * from Employee

-- 1.List all employee in alphabetical order by last name
select * from employee order by Lastname asc

-- 2.List all employees in IT department and sort them by salary in descending order
select * from employee where department = "IT" order by salary desc

-- 3.Find the total number of employees in each department
select count(*),department from employee group by department

-- 4.Calculate the average salary for each department, sorted in ascending order by department name
select avg(salary),department from employee group by department order by department asc

-- 5.Find the department with the highest average salary
select avg(salary),department from employee group by department order by avg(salary) desc limit 1









