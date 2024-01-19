/* 
Having Clause - It is used while a condition is to be based in aggregate function
*/
create schema having_clause

use having_clause

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

select * from employee where department="IT"
select count(*) from employee where department="IT"

select count(*),department from employee group by department
select avg(salary),department from employee group by department

select avg(salary),department from employee group by department having avg (salary)<60000


