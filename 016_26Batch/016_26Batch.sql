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

-- how to add foreign key in the table;

ALTER TABLE students 
ADD CONSTRAINT dept_id_fk
FOREIGN KEY (dept_id) REFERENCES Department(dept_id);

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

-- ---------------------------------------------------------------------------------------------------------  -

-- create location table
create table location(
location_id int primary key,
city varchar(10),
pincoode varchar(6)
);
-- insert into data in location table
insert into 016_26batch.location value(01,'Pune','004587');
insert into 016_26batch.location value(02,'Mumbai','014587');
select * from 016_26batch.location;





-- department table 
select * from department;
alter table department add column location_id int ;

ALTER TABLE department 
ADD CONSTRAINT location_id_fk
FOREIGN KEY (location_id) REFERENCES location(location_id);

INSERT INTO 016_26batch.location (location_id, city, pincoode)
VALUES

(3, 'Delhi', '110001'),
(4, 'Bangalore', '560001'),
(5, 'Chennai', '600001'),
(6, 'Hyderabad', '500001'),
(7, 'Kolkata', '700001'),
(8, 'Ahmedabad', '380001'),
(9, 'Jaipur', '302001'),
(10, 'Surat', '395001');

alter table location rename column pincoode to pincode;

SELECT * FROM location;
SELECT location_id FROM location;
INSERT INTO Department (dept_id, dept_name, location_id)
VALUE
(1, 'Human Resources', 1);


INSERT INTO Department (dept_id, dept_name, location_id)
VALUES
(2, 'Finance', 2),
(3, 'Information Technology', 3),
(4, 'Marketing', 4),
(5, 'Sales', 5),
(6, 'Operations', 6),
(7, 'Research and Development', 7),
(8, 'Customer Support', 8),
(9, 'Administration', 9),
(10, 'Quality Assurance', 10);

-- create manager table
CREATE TABLE manager(
    manager_id INT,
    manager_name VARCHAR(20),
    CONSTRAINT manager_id_pk PRIMARY KEY (manager_id)
);
insert into manager value(1,'Manoj');


alter table 016_26batch.employee add column dept_id int ;
ALTER TABLE 016_26batch.employee 
ADD CONSTRAINT department_id_fk
FOREIGN KEY (dept_id) REFERENCES department(dept_id);

use 016_26Batch;

select * from employee;
select *  from department;
select * from manager;

alter table employee add foreign key(manager_id) references manager(manager_id);

INSERT INTO `016_26batch`.`manager` (`manager_id`, `manager_name`) VALUES ('2', 'Rakesh');
INSERT INTO `016_26batch`.`manager` (`manager_id`, `manager_name`) VALUES ('3', 'Vivek');
INSERT INTO `016_26batch`.`manager` (`manager_id`, `manager_name`) VALUES ('4', 'Akshay');
INSERT INTO `016_26batch`.`manager` (`manager_id`, `manager_name`) VALUES ('5', 'Ajay');
INSERT INTO `016_26batch`.`manager` (`manager_id`, `manager_name`) VALUES ('6', 'Sneha');
INSERT INTO `016_26batch`.`manager` (`manager_id`, `manager_name`) VALUES ('7', 'Neha');
INSERT INTO `016_26batch`.`manager` (`manager_id`, `manager_name`) VALUES ('8', 'Divya');

-- read
select * from manager;

-- insert data
INSERT INTO `016_26batch`.`employee` (`emp_id`, `emp_name`, `contact`, `dept_id`, `manager_id`) VALUES ('1', 'Akshay', '62003059', '1', '1');
INSERT INTO `016_26batch`.`employee` (`emp_id`, `emp_name`, `contact`, `dept_id`, `manager_id`) VALUES ('2', 'Soham', '6200305902', '2', '2');
INSERT INTO `016_26batch`.`employee` (`emp_id`, `emp_name`, `contact`, `dept_id`, `manager_id`) VALUES ('3', 'Mahadev', '6200305903', '3', '3');
INSERT INTO `016_26batch`.`employee` (`emp_id`, `emp_name`, `contact`, `dept_id`, `manager_id`) VALUES ('4', 'Naina', '6200305904', '4', '4');

-- update data 
UPDATE `016_26batch`.`employee` SET `contact` = '6200305901' WHERE (`emp_id` = '1');
select * from employee;

alter table employee add column salary int ;

-- update data 
UPDATE `016_26batch`.`employee` SET `salary` = '89630' WHERE (`emp_id` = '2');

-- update salary for the employee whoses name is Akash
update employee set salary =12000 where emp_name="Akash";

-- update name of the employee to Rajesh whose id is 3
update employee set emp_name="Rajesh" where emp_id=3;

