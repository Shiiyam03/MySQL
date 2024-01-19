/*
DDL - Data Definifion Language
1.Create
2.Alter
3.Drop
4.Truncate
*/

-- To Create a schema
create schema ddl

-- To Use a particular schema to create, alter, drop, or truncate a table
use ddl 

-- To Create a table teacher
create table teacher(
name varchar(100),
age int,
salary int,
department varchar(100)
)

-- To Create a table student
create table student(
name varchar(100),
department varchar(100),
Marks_scored int
)

-- To alter table teacher by adding column
alter table teacher add column degree varchar(100)

-- To alter table student by adding column
alter table student add column city varchar(100)

-- To change name or datatype of a column in table teacher
alter table teacher change department dept varchar(100)

-- To change name or datatype of a column in table student
alter table student change Marks_scored Mark int

alter table student change Mark Mark varchar(100)

-- To drop table teacher
drop table teacher

-- To drop table student
drop table student

-- To erase the data in a table (cannot be used in this code)
truncate table teacher


