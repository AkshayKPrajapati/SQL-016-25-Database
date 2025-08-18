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


-- create location table

create table location(
    location_id int primary key,
    city varchar(50),
    pincode int(8)
);


 -- create department table 
 create table department(
dept_id int primary key auto_increment,
dept_name varchar(20) not null,
loc_id int ,
constraint dept_location_fk foreign key(loc_id) references location(location_id)
);

select * from department;
-- create table of the employee

create table employee(
emp_id int primary key auto_increment,
emp_name varchar(20) not null,
salary int,
dept_id int not null,
constraint dept_id_fk foreign key(dept_id) references department(dept_id),
manager_id int ,
constraint manager_id_fk foreign key(manager_id) references employee(emp_id)
);
select * from employee;

-- use of the alter (change something)
alter table student add email varchar (20);

-- add contact on the employee table
alter table employee add contact bigint(10);

-- delete the email column on the student table
alter table student drop email; 

-- modefie the datatype
alter table student modify contact char(10);

-- change the name of the student table 
alter table student rename column sname to student_name;

--  remove the primary key of the student table
alter table location drop primary key;
-- departmentError Code: 1553. Cannot drop index 'PRIMARY': needed in a foreign key constraint

-- we cant be remove primary key if it have foreign key reference
alter table department drop primary key;
alter table location add primary key (pincode);

-- Error Code: 1553. Cannot drop index 'PRIMARY': needed in a foreign key constraint

-- rename table
rename table student to std;

-- delete table std;
drop table std;


select * from std;
