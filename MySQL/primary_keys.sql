create schema pri_key

use pri_key

create table Books(
BookID int,
Title varchar(225)
);

create table Authors (
AuthorID int,
AuthorName varchar(255)
);

insert into books(BookID,Title) values (1,"Book1"),(2,"Book2"),(3,"Book3");
insert into authors(AuthorID,AuthorName)values (1,"Joe"),(2,"Vimal"),(3,"Shiiyam")

insert into books values(3,"Book4")

select * from books
 
 -- Primary keys use to manage the duplicate data's in a table. It is a set of rules.
 delete from books where title="book4"
 
 alter table books add constraint pk_bookid primary key(bookid)-- constraint(rule)
 insert into books values(3,"Book4")
 
 insert into books values(4,"Book4")
 select * from books
 
 -- primary keys can also be done while creating table
 create table title(
 id int primary key,
 title varchar(200)
 )
 
 