Create database 016_26Batch;
use 016_26Batch;
show tables;
create table customers(
c_id int primary key auto_increment,
c_name varchar(20) not null,
contact bigint,
address varchar(20)
);

-- product table 
create table product(
p_id int primary key ,
p_name varchar(20),
branch varchar(20)
);

-- order 
create table orderInfo(
order_id int primary key auto_increment,
order_date date,
cust_id int ,
foreign key (cust_id) references customers(c_id),
product_id int ,
foreign key (product_id) references product(p_id)
);
-- alter operation 

create table student (
student_id int primary key not null auto_increment,
student_name varchar(255),
college varchar(725)
);

create table employee (
emp_id int primary key not null auto_increment,
emp_name varchar(255)
);


-- add a column in student table 
alter table student add column email varchar(255);
alter table student add column phone varchar(255);
alter table student add column website varchar(255);


-- add a  contact column in employee table
alter table employee add contact varchar(12);

-- remove column in student table ;
alter table student drop column website ;

-- datatype  modification
alter table student modify phone bigint(20);

-- change column name 
alter table student rename column college to collegeName;

-- change table name;
ALTER TABLE customers RENAME TO user;

-- remove primary key in student table ;
ALTER TABLE student
MODIFY student_id INT NOT NULL;

ALTER TABLE student
DROP PRIMARY KEY;

-- add primary key in student table 
alter table student add primary key (student_id);

-- Remove FOREIGN KEY 
-- Create Department table
CREATE TABLE Department (
    dept_id INT ,
    dept_name VARCHAR(50),
   CONSTRAINT PK_Department PRIMARY KEY (dept_id)
);
 
drop table Department;
-- Create Student table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    dept_id INT,
    constraint dept_id_fk
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);


drop table students;

-- We cannot drop , update & remove  the primary key because it is referenced by a foreign key.
alter table Department drop primary key ;

-- how to remove foreign key in the table;
alter table students drop foreign key  dept_id_fk;



-- Rename table
rename table students to NewStudent;

-- drop table  (data + structure)
drop table NewStudent;


-- dml(Data Manipulation Language)

-- create studentInfo table
create table studentInfo(
s_id int primary key ,
s_name varchar (20) not null,
contact bigint(20) unique,
dob date,
gender enum('M', 'F','o'),
age int check (age>=18)
);
alter table 016_26batch.studentinfo add column location varchar (20) default 'Pune';
alter table 016_26batch.studentinfo rename column loacation to location;
alter table 016_26batch.studentinfo drop column loacation;
-- read data 
select * from studentInfo;
-- insert 
insert into studentInfo(s_id,s_name,contact,dob,gender,age) 
value (1,'vivek',6200305901,'2002-12-12', 'M',23);

insert into studentInfo(s_id,s_name,contact,dob,gender,age,location ) 
value (2,'vivek',6200305902,'2002-12-12', 'M',23,'Pune');

insert into studentInfo(s_id,s_name,contact,dob,gender,age,location ) 
value (3,'Neha',6200305903,'2002-12-12', 'F',23,'Pune');


-- s_id,s_name,contact
insert into 016_26batch.studentinfo(s_id,s_name,contact ) values(4, 'Sonam',6200305904);
ALTER TABLE 016_26batch.studentinfo
MODIFY COLUMN location VARCHAR(50) DEFAULT 'Pune';

INSERT INTO `016_26batch`.studentinfo (s_id, s_name, contact) VALUES
(5, 'Neha', 9876543214),
(6, 'Amit', 9876543215),
(7, 'Kiran', 9876543216),
(8, 'Pooja', 9876543217),
(9, 'Rohan', 9876543218),
(10, 'Sneha', 9876543219),
(11, 'Vikram', 9876543220),
(12, 'Anjali', 9876543221),
(13, 'Deepak', 9876543222),
(14, 'Meera', 9876543223),
(15, 'Suresh', 9876543224),
(16, 'Kavita', 9876543225),
(17, 'Nikhil', 9876543226),
(18, 'Divya', 9876543227),
(19, 'Arjun', 9876543228),
(20, 'Ritika', 9876543229),
(21, 'Manish', 9876543230),
(22, 'Shreya', 9876543231),
(23, 'Harsh', 9876543232),
(24, 'Isha', 9876543233),
(25, 'Yash', 9876543234);


select * from studentinfo;