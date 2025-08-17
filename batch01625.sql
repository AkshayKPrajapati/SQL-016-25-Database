use batch01625;

select * from student;

-- create student table
create table student(
sid int primary key auto_increment, 
sname varchar(25) not null,
contact bigint unique,
location varchar(20) default 'Pune',
dob date,
gender enum('Female' ,'Male', 'Other'),
age int(2) check(age>=18)
);

-- create customer table
create table customer(
customer_id int primary key auto_increment,
first_name varchar(20) not null,
last_name varchar(20),
phone_number bigint unique,
email varchar (20) unique not null,
dob date,
gender enum('Male', 'Female', 'Other'),
location varchar(20) default ' Pune',
age int(2),
create_date datetime
);
-- modifie the age row
ALTER TABLE customer MODIFY age INT;

show tables;
select * from customer;
 