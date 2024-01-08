/*
DML - Data Manipulation Language
		This command used to insert, update, delete data in the table
*/

-- To create a schema
create schema dml_dql

-- To Use a particular schema to create, alter, drop, or truncate a table
use dml_dql

-- To Create a table student
create table student(
name varchar(100),
age int,
department varchar(100)
)

-- To Create a table fruit
create table fruit(
name varchar(100),
price int
)

-- To insert data's in table student
insert into student values("John",23,"CSE") -- varchar data should be in ""  

insert into student values("Shiiyam",19,"CST")

insert into student values("Vimal",20,"AIDS")

/*
DQL - Data Query Language
		This command use "select" keyword to view or retrive the table data
*/

-- To view the data of student table
select * from student -- "*" is used show all the data's in the table 

-- To insert data's in table fruit
insert into fruit values("Apple",100) -- varchar data should be in ""  

insert into fruit values("Grape",70)

insert into fruit values("Banana",20)

-- To view the data of fruit table
select * from fruit

-- To update data of table student
update student set department="CST" where department="CSE"

-- To view the data of student table
select * from student 

-- To update data of table student
update student set age=30 where age=23

-- To view the data of student table
select * from student 

-- To update data in a particular column
update student set age=20 where name="Shiiyam"

-- To view the data of student table
select * from student 

-- To delete column in student table
delete from student where age=30

-- To view the data of student table
select * from student 

-- To delete column in student table
delete from student where department="AIDS"

-- To view the data of student table
select * from student 












