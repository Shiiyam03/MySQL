-- 1.Create Table
create schema prac

use prac

create table student(
ID int,
Name varchar(100),
Age int
)

select * from student

-- 2.Add new column Grade
alter table student add column Grade varchar(100) 
select * from student

-- 3.Rename Grade to FinalGrade
alter table student change Grade FinalGrade varchar(100)
select * from student

-- 4.Insert Records
insert into student (ID, Name, Age, FinalGrade) values
(101, 'John Doe', 20, 'A'),
(102, 'Jane Smith', 22, 'B'),
(103, 'Bob Johnson', 19, 'C'),
(104, 'Alice Brown', 21, 'A'),
(105, 'Charlie Davis', 20, 'B'),
(106, 'Emma Wilson', 23, 'A'),
(107, 'Michael Lee', 20, 'C'),
(108, 'Olivia Moore', 19, 'B'),
(109, 'William Turner', 21, 'A'),
(110, 'Sophia Rodriguez', 22, 'C');

select*from student

-- 5.Update age of student with id 101 to 21
update student set age=21 where ID=101
select * from student

-- 6.Delete the student ID 101
delete from student where ID=101
select * from student

-- 7.Retrive all students aged 19 or older
select * from student where age>=19 

-- 8.Retrive student named William Turner or Allice Brown
select * from student where name="William Turner" or name="Alice Brown"
select * from student where name in ( "William Turner" , "Alice Brown" )

-- 9.Retrive student with grades"A" or"B" and aged 20 or older
select * from student where FinalGrade = 'A' or FinalGrade = 'B' and age>=20

-- 10.Retrieve students aged between 19 and 21
select * from student where age between 19 and 21

-- 11.Retrive student with age greater than 20
select * from student where age > 20

-- 12.Retrive student with grades greater than A 
select * from student where FinalGrade > "A"

-- 13.Count total no of student
select count(*) from student

-- 14.Calculate the average age
select avg(age) from student

-- 15.Find sum of ages for students with grades "A" or "B"
select sum(age) from student where FinalGrade < "C"

-- 16.Group students by grade and count the no of students in eacg grade
select FinalGrade,count(Name) from student group by FinalGrade 
select FinalGrade,count(Name) from student group by FinalGrade order by FinalGrade

-- 17.Group students by age and calculate the average age
select FinalGrade,avg(age) from student group by FinalGrade order by FinalGrade

-- 18.Find grade with highest no of student
insert into student values(111,"Shiiyam",25,"C")
select FinalGrade,count(*) from student group by finalgrade order by FinalGrade desc limit 1

-- 19.Find grades with an average age greater than 21
select finalgrade, avg(age) finalgrade from student group by finalgrade having avg(age) > 21

-- 20.Find grades with fewer than 3 students
select finalgrade, count(name) finalgrade from student group by finalgrade having count(name)>3

-- 21.Find grades with an average age between 20 and 21
select finalgrade, avg(age) from student group by finalgrade having avg(age) between 20 and 21

-- 22.List all student in ascending order of age
select name, age from student order by age asc

-- 23.List student with grades "A" or "B" in desc order of age
select name,age from student where finalgrade = "A"or finalgrade = "B" order by age desc

-- 24.Sort student by grade in alphabetical order
select * from student order by finalgrade asc

-- 25.Delete the student table
drop table student