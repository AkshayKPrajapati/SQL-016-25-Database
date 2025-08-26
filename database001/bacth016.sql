-- create 
Create database batch016;
-- use
use batch016;

-- create table
CREATE table student(
sid int primary key,
sname varchar(20) not null,
contact bigint unique,
location varchar(20) default 'Pune',
dob date,
gender enum ('F','M','O'),
age int check(age>=18)
);

create table location(
location_id int primary key,
city varchar(20),
pincode char(6)
);

create table department(
dept_id int primary key,
dept_name varchar(20),
loc_id int,
constraint dept_loc_FK foreign key(loc_id) references location(location_id)
);

create table employee(
emp_id int primary key,
emp_name varchar(20),
salary int,
dept_id int,
manager_id int,
constraint dept_emp_FK foreign key(dept_id) references department(dept_id),
constraint emp_mng_Fk foreign key(manager_id) references employee(emp_id)
);

-- create customer
CREATE TABLE CUSTOMER(
CID INT PRIMARY KEY auto_increment,
CNAME VARCHAR(20) NOT NULL,
CONTACT BIGINT,
ADDRESS VARCHAR(20)
);

-- PRODUCT
CREATE TABLE PRODUCT(
PID INT PRIMARY KEY,
PNAME VARCHAR(20),
BRAND VARCHAR(20)
);

-- ORDER
CREATE TABLE ORDERINFO(
OREDR_ID INT PRIMARY KEY auto_increment,
ORDERDATE DATE,
CUST_ID INT,
PRODUCT_ID INT,
FOREIGN KEY(CUST_ID) references CUSTOMER(CID),
FOREIGN KEY(PRODUCT_ID) references PRODUCT(PID)
);

-- ALTER
-- ADD A COLUMN
ALTER TABLE STUDENT ADD EMAIL VARCHAR(20);
-- EMPLOYEE CONTACT
ALTER TABLE EMPLOYEE ADD CONTACT BIGINT;
-- REMOVE COLUMN
ALTER TABLE STUDENT DROP COLUMN EMAIL;
-- DATATYPE MODIFY
ALTER TABLE STUDENT MODIFY CONTACT CHAR(10);
-- CHANGE COLUMN NAME
ALTER TABLE STUDENT RENAME COLUMN SNAME TO STUDENT_NAME;
-- REMOVE PK
ALTER TABLE STUDENT DROP PRIMARY KEY;
-- WE CAN NOT REMOVE OR UPDATE PK IF IT HAS FK REFERENCE.
ALTER TABLE location DROP primary key;
-- ADD PK
ALTER TABLE STUDENT ADD primary key(SID);
-- REMOVE FK
ALTER TABLE department DROP FOREIGN KEY dept_loc_FK;
-- add
ALTER TABLE DEPARTMENT ADD foreign key(loc_id) references location(location_id);
-- TABLE RENAME
RENAME TABLE STUDENT TO STD;
-- DROP TABLE
DROP TABLE STD;


-- DML
-- INSERT
INSERT INTO STUDENT VALUES(100,'shital',87677888,'Mumbai','2000-07-15','F',25);
INSERT INTO STUDENT VALUES(300,'shwets',99977898,'Mumbai','2007-03-19','F',18);
INSERT INTO STUDENT VALUES(400,'Nikita',87634888,'Mumbai','2000-07-15','F',25);

-- sid,sname,contact
insert into student(sid,sname,contact) values(500,'Rajesh',987655666);

INSERT INTO STUDENT VALUES(600,'pavan',8999677888,'Mumbai','2000-07-15','M',25),
(700,'shruti',23456979,'nagpur','2001-01-01','F',24);
SELECT * FROM STUDENT;

insert into location values(1000,'Pune',411014);
insert into location values(2000,'Mumbai',404006),(3000,'Nagpur',422002),(4000,'Delhi',469899);
select * from location;

insert into department values(10,'IT',1000);
insert into department values(20,'sales',3000);
insert into department values(30,'Marketing',1000);
select * from department;
-- 5 data insert into employee;
insert into employee values(100,'Akash',45000,20,null,6788887);
insert into employee values(200,'Akash',45000,10,null,2788887);
insert into employee values(300,'Lex',40000,20,100,899999);
insert into employee values(400,'Aman',70000,10,200,899900),(500,'Rani',45000,30,null,65000),(600,'Ram',45000,10,200,8990995);
select * from employee;

-- to turn off the safe update mode
SET SQL_SAFE_UPDATES = 0;
-- update 
-- update salary of employee whoes name is Akash;
update employee set salary=60000 where emp_name='Akash';
-- update name of employee to Rajesh whoes id is 300;
update employee set emp_name='Rajesh' where emp_id=300;
-- give 10 percent hike to employee whoes salary is less than 50000;
update employee set salary=salary+(salary*0.1) where salary<50000;
-- update departmentid to 10 and manager id to 200
-- for employee whoes id is 500;
update employee set dept_id=10,manager_id=200 where emp_id=500;
 -- truncate 
truncate table employee;
-- delete
-- delete male candidates from student;
delete from student where gender='M';
-- delete students who are from mumbai and age<20;
delete from student where location='Mumbai'and age<=20;
-- delete student whoes id is 500;
delete from student where sid=500;
select * from student;
-- tcl
start transaction;
insert into location values(5000,'Surat',566670);
-- delete update
select * from location;
commit;

start transaction;
insert into location values(6000,'Nashik',516670);
select * from location;
rollback;

start transaction;
insert into location values(7000,'Nashik',566777);
savepoint s1;
delete from location where location_id=5000;
select * from location;
rollback to s1;

-- create user
Create user mybatch identified by 'pass123';
-- select grant location
grant select,insert on batch016.location to mybatch;
-- revoke
revoke select,insert on batch016.location from mybatch;
-- drop user
drop user mybatch;

alter table employees rename column Ã¯Â»Â¿EMPLOYEE_ID to emp_id;

-- read all data from employees
select * from employees;
-- emp_id,first_name,salary
select emp_id,first_name,salary from employees;
-- employees salary>5000;
select * from employees where salary>5000;
-- as /alias
select first_name,salary,salary+1000 as updated_sal from employees ;
-- display first_name and annual salary for all employees
select first_name,salary*12 as annual_sal from employees;
-- distinct
select * from product;
select distinct pname from product;
select distinct pname,brand from product;

-- limit and offset
select * from employees;
select * from employees limit 10; -- gives starting 10 records
select * from employees limit 10 offset 3; -- select 10 records by skiping 3
select * from employees limit 3,10;
select first_name from employees limit 5,2;
-- order by
select first_name,salary from employees order by salary,first_name; 
select first_name,salary from employees order by salary desc;
-- find first highest salary of employee with emp name
select first_name,salary from employees order by salary desc limit 1;
-- find second highest salary of employee with emp name
select first_name,salary from employees order by salary desc limit 1,1;
-- find third highest salary of employee with emp name
select first_name,salary from employees order by salary desc limit 2,1;

-- opeartors
-- Arithmetic operators
-- display first_name,original salary and salary with 20% hike;
select first_name,salary,salary+salary*0.2 as hike from employees;
-- logical  
-- read first_name ,salary and dept_id of the employees 
-- who have salary > 5000 and in dept 10;
select first_name,salary,department_id from employees where salary>5000 and department_id=60;
select first_name,salary,department_id from employees where salary>5000 or department_id=60 order by salary;

-- find details of employees who are working in department 10 or 60 or 100
-- in
select * from employees where department_id in(10,60,100);
select * from employees where department_id not in(10,60,100);
-- find details of employees whoes job id is IT_PROG or FI_ACCOUNT or PU_MAN;
select * from employees where job_id in('IT_PROG','FI_ACCOUNT','PU_MAN');
-- find employees whoes emp id is between 200 to 205;
select * from employees where emp_id between 200 and 205;
-- find student who are born in 2000;
select * from student where dob between '2000-01-01' and '2000-12-31';
-- find student who not are born in 2000;
select * from student where dob not between '2000-01-01' and '2000-12-31';
-- find students whoes contact is null
select * from student where contact is null;
-- find students whoes contact is not null
select * from student where contact is not null;
-- find employee who do not have manager/ who are manager
select * from employee where manager_id is null;

-- select employees whoes deptid is not equals to 100;
select * from employees where department_id !=100;
select * from employees where department_id <>100;

-- like 
-- find employees whoes name start with A
select * from employees where first_name like 'A%';
-- find employees whoes name is starting with J and have 5 character in name;
select * from employees where first_name like 'J____';
-- find employees whoes name has 'a' as secong character;
select * from employees where first_name like '_a%';
 -- find employees whoes name ends  with r
select * from employees where first_name like '%r';
-- select employees whoes name have 2 times 'a' ;
select * from employees where first_name like '%a%a%';
-- select employees whoes name have double 'n' ;
select * from employees where first_name like '%nn%';
-- name has 3 charcater;
select * from employees where first_name like '___';

-- functions in sql ->
-- length
select first_name,length(first_name) as size from employees;
-- find employees whoes last name has 5 character
select * from employees where length(last_name)=5;
-- concat
-- hii first_name
select emp_Id,concat('hi ',first_name,' Welcome') as info from employees;
-- full name
select concat(first_name,' ',last_name) as full_name from employees;
-- upper lower
select upper(first_name),lower(last_name)from employees;
-- substr(originalstring,startingindex,length)
select substr('fusion',1,3);-- fus
select substr('fusioninstitute',3,5);-- sioni
select substr('fusion',-4,2); -- si
-- starting 5 character of full name
select first_name,last_name, substr(concat(first_name,last_name),1,5) as info from employees;
-- display half part of employee's first_name;
select first_name,substr(first_name,1,length(first_name)/2) as info from employees;
-- instr -->retruns position if charcter/string present or else return 0;
select instr('fusion','s');-- 3
select instr('fusion','y');-- 0
-- find employees whoes first_name do not have 'n' ;
select first_name from employees where instr(first_name,'n')=0;
--  aggregate / grouping 
select min(salary) from employees;
select max(salary) from employees;
select avg(salary) from employees;
select sum(salary) from employees;
select count(*) from employees;
-- group by
--  find max salary for every department
select department_id ,max(salary) from employees group by department_id;
-- find how many employees are there for every department;
select department_id ,count(*) from employees group by department_id; 
select first_name ,count(*) from employees group by first_name;
-- having
-- find duplicate first_name;
select first_name ,count(*) from employees 
group by first_name having count(*)>1;
-- find departments where minimun 3 employees are there;
select department_id ,count(*) as emp_count from employees 
group by department_id having count(*)>=3;

-- find department_id  and department wise average salary of employees whoes 
-- first_name name has 'a'  and avg salary should be greater than 5000;
select department_id,avg(salary) from employees where first_name like '%a%'
group by department_id having avg(salary)>5000 order by department_id;

-- windows
select *,
row_number() over(order by salary) as row_num,
rank() over(order by salary) as `rank`,
dense_rank() over(order by salary) as drank
from employees;

-- ranking in department according to salary
select *, 
dense_rank() over(partition by department_id order by salary desc)
from employees;

-- find employee who has highest salary for every department
with dept_rank1 as 
(select *, 
dense_rank() over(partition by department_id order by salary desc) as `rank`
from employees
order by department_id) 
select * from dept_rank1 where `rank` = 1;

-- joins
-- inner join---> only matched data
-- select emp_name and department name of emp
select emp_name,dept_name from employee e inner join department d
on(e.dept_id=d.dept_id);
-- outer join--->matched and unmached data
-- select all employee name and dept name even they are not working in any department
-- left outer
select emp_name,dept_name from employee e left join department d
on(e.dept_id=d.dept_id);
-- select employee name and all dept name even department do not have any employee
-- right outer
select emp_name,dept_name from employee e right join department d
on(e.dept_id=d.dept_id);
-- full join
select emp_name,dept_name from employee e left join department d
on(e.dept_id=d.dept_id)
union
select emp_name,dept_name from employee e right join department d
on(e.dept_id=d.dept_id);

create table result(
res_id int primary key,
res enum('pass','fail'),
sid int,
foreign key (sid) references student(sid)
);

select sname,res from student s inner join result r on(s.sid=r.sid);
select sname,res from student s left join result r on(s.sid=r.sid);
select sname,res from student s right join result r on(s.sid=r.sid);

-- read customer name and corresponding product name.
select cname,pname,brand from customer c join orderinfo o 
on(c.cid=o.cust_id) join product p on(o.product_id=p.pid);

-- self join
-- employee name and manager name;
select e1.emp_name as emp_name,e2.emp_name as manager_name from
employee e1 join employee e2
on(e1.manager_id =e2.emp_id);
