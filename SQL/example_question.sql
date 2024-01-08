/* 1.How do you make a table in a database?
		Customer(
			customer_id,
            customer_name,
            customer_address,
            city,
            state,
            ZIP_Code
            )
*/
create schema example_question
use example_questions

create table customer
(
Customer_Id int,
Customer_Name varchar(50),
Customer_Address varchar(150),
City varchar(50),
State varchar(50),
Zip_Code int
)

select * from customer

-- 2. Inserting records in the customer table
insert into customer values(1,"John Doe","392 Sunset Blvd.","New York","NT",10059); -- Use ; for insert all 4 data's 
insert into customer values(2,"Vimal Kumar","Kurubampalayam","Paris","CA",94032);
insert into customer values(3,"Shiiyam","Vadavalli","Coimbatore","CA",88830);
insert into customer values(4,"Yogesh","Karatumedu","Africa","AZ",9999)

select * from customer

-- 3. How can we change the 'Customer_Address' column to just 'address'???
alter table customer change Customer_Address address varchar(150)

-- 4. How do you add a new column called 'mobile_number'???
alter table customer add column mobile_number int

select * from customer

-- 5. How do you delete a column where mobile_number is null???
delete from customer where mobile_number = null
select * from customer

-- Null is not a value 

delete from customer where mobile_number is null
select * from customer

-- 6. Inserting records in the customer table
insert into customer values(1,"Yogesh","Karatumedu","Africa","AZ",9999,11111111);
insert into customer values(2,"Vimal","Kurumbampalayam","Pollachi","CB",9998,2222222);
insert into customer values(3,"Shiiyam","Vadavalli","Coimbatore","CB",9997,333);
insert into customer values(4,"Bala","GN Mills","Coimbatore","CB",9995,4444444);
insert into customer values(5,"Venky","Ganapathy","Coimbatore","CB",9992,5555555);
insert into customer values(6,"Krishna","Saravanampatti","Trichy","TZ",9993,666666)

-- 7. Show all records
select * from customer
-- To show particuar records
select Customer_name from customer
select state,city from customer

-- 8. Update phone number for Vimal to 9465789012
update customer set mobile_number="020202" where Customer_Name="Vimal"

-- 9. Delete the record where the ZIP_Code is "60601"
delete from customer where ZIP_Code = 9993 
select * from customer

-- 10. Select distinct data where the user is form a state = "CA"
select * from customer where state = "CB"

-- 11. How do you print customer IDs who are greater than 2
select * from customer where customer_id>2

-- 12. Delete the mobile number column
alter table customer drop column mobile_number
select * from customer

-- 13. Truncte a table
truncate table customer
select * from customer