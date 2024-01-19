/*
Aggregate Function
1.sum()
2.max()
3.min()
4.avg()
5.count()
*/
create schema agg

use agg

create table student(
student_name varchar(100),
student_mark int,
department varchar(100)
)

insert into student values ("Praveen",1,"CSE");
insert into student values ("Manoj",2,"MECH");
insert into student values ("karthi",3,"ECE");
insert into student values ("Raju",4,"MECH");
insert into student values ("Deepak",5,"CSE");

-- sum() - Used to find total of a column
select sum(student_mark) from student

-- To change the title
select sum(student_mark) as total_mark from student

-- max() - Used to find max of a column
select max(student_mark) from student

-- To change the title
select max(student_mark) as max_mark from student

-- min() - Used to find min of a column
select min(student_mark) from student

-- To change the title
select min(student_mark) as min_mark from student

-- avg() - Used to find avg of a column
select avg(student_mark) from student

-- To change the title
select avg(student_mark) as avg_mark from student

-- count() - Used to find avg of a column
select count(student_name) from student

-- To change the title
select count(student_name) as count from student

-- count of cse student
select count(student_name) from student where department ="cse"