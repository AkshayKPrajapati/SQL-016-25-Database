create database database001;
drop table student;
use  database001;
-- create student table
create table students(
sid integer primary key auto_increment,
sname varchar(20),
phone varchar(20),
email varchar(20)
);

select * from students;
 -- display product table
 select * from product;

-- limit 


select * from database001.employee limit 10;
-- skip the 3 row
select * from database001.employee limit 10 offset 3;
select * from database001.employee limit 3,10 ;

select first_name from employee limit 5,2; -- 2 recorad with skiip 5
-- show product name of the product table
select product_name from product;
-- remove the duplicate row in the table for the showing the result
select distinct product_name from product;

select distinct product_name,product_category from product;


-- operation
-- Arithmetic operations

-- display the first_name and salary with 10% hike ;

select FIRST_NAME,SALARY,SALARY+0.2 as  hike from database001.employee;



-- order by 
select FIRST_NAME,SALARY from database001.employee order by SALARY;
select FIRST_NAME,SALARY from database001.employee order by SALARY,FIRST_NAME;
select FIRST_NAME,SALARY from database001.employee order by SALARY desc;
select FIRST_NAME,SALARY from database001.employee order by SALARY asc;

-- find the hight salary  of the employee with name ;
select FIRST_NAME,SALARY from database001.employee  order by SALARY desc limit 1;


-- find the 2nd  hight salary  of the employee with name ;
select FIRST_NAME,SALARY from database001.employee  order by SALARY desc limit 1 offset 1;
select FIRST_NAME,SALARY from database001.employee  order by SALARY desc limit 1,1;

-- find the 3rd hight salary  of the employee with name ;
select FIRST_NAME,SALARY from database001.employee  order by SALARY desc limit 1 offset 2;
select FIRST_NAME,SALARY from database001.employee  order by SALARY desc limit 2,1;



-- logical operator

-- read first_name ,salary and dept_id of the employees 
-- who have salary > 5000 and in dept 10;
select first_name,salary,department_id from employee where salary>5000 and department_id=10;
select first_name,salary,department_id from employee where salary>5000 and department_id=60;
select first_name,salary,department_id from employee where salary>5000 or department_id=60
order by salary;



select * from employee where DEPARTMENT_ID in (10,60,100);



--  find details of employee whoes job id is IT PROG or FI_ACCOUNT or PU_MAN:
select * from employee where job_id in ('IT_PROG','FI_ACCOUNT','PU_MAN');


-- find the employee whoes emp_id is between  200 and 300;
select * from employee where emp_id between 200 and 300; -- (range between 200 and 300)

-- find the employee  
select * from students  where dob between '2002-01-01' and '2006-01-01';

use database001;
-- function in sql 

-- lenght () : return the number of the character in the String 
select FIRST_NAME ,length(first_name) as size from employee;

-- find the employee whoes  the last name has 5 character.

select * from employee where length(last_name)=5;
SELECT CONCAT('Hello ', first_name) AS greeting FROM employee;
select concat(FIRST_NAME,' ' ,last_name) as fullname from employee;

-- upper and lower function
select upper(first_name), lower(last_name) from employee;

-- substr(originalstring , starting from index, length)
select substr('fusion',1,3); -- fus
select substr('FusionInstitute ',3,5); -- sioni

-- stating 5 character of the full name
select First_name, last_name,
 substr(concat(first_name,last_name),1,5)
 as info from employee;
 
-- display half part of the employee's first name
SELECT 
    first_name, 
    SUBSTRING(first_name, 1, FLOOR(LENGTH(first_name) / 2)) AS halfpart 
FROM 
    employee;


-- instr

select instr('fusion','s');-- the the postion 

-- find the employee whoes first_name do not have 'n';
SELECT 
    first_name 
FROM 
    database001.employee 
WHERE 
    INSTR(first_name, 'n') = 0;

select substr('fusion',-4,2);   -- return the value output : si

-- aggrate /grouping  function
select count(SALARY) from employee;
select min(SALARY) from employee;
select max(SALARY) from employee;
select avg(SALARY) from employee;
select sum(SALARY) from employee;

-- group by

select DEPARTMENT_ID , max(salary) from employee group by DEPARTMENT_ID;

-- find how many employee are there for every ddepartment;
select DEPARTMENT_ID , count(*) from employee group by DEPARTMENT_ID; 

-- 

select FIRST_NAME , count(*) from employee group by FIRST_NAME;
-- having clause

 -- find duplicate employee name 
select FIRST_NAME , count(*) from employee group by FIRST_NAME having count(*)>1;
 


-- find the departments where minimum 3 employees are there;
select DEPARTMENT_ID , count(*) as emp_count from employee group by department_id having count(*)>3;

 



-- sub queries( query inside the another query)

-- find the empolyee who have salary smiliar to the lex salary;
select * from database001.employee where FIRST_NAME='lex';
SELECT * 
FROM employee 
WHERE SALARY = (
    SELECT SALARY 
    FROM employee 
    WHERE FIRST_NAME = 'Lex'
    LIMIT 1
);


-- find the the employee who are working in the pat's department;
select * from employee where DEPARTMENT_ID=(
select DEPARTMENT_ID from employee where FIRST_NAME='pat'
);

-- find employee who have salary similiar to the 'alexander';
select * from employee where salary in
(
select  salary from employee where first_name ='alexander'
);

-- -- find employee who have salary similiar to the 'alexander';
select * from employee where salary in
(
select  salary from employee where first_name ='alexander'
);

-- find the employee who have salary greater then all the 'alexander';
select * from employee where salary > all
(
select  salary from employee where first_name ='alexander'
);

-- find the employee who have salary greater then any the 'alexander';
select * from employee where salary > any
(
select  salary from employee where first_name ='alexander'
);


-- cascading delete 
delete from loan where loan_id=103;

-- cascading delete on set null;
delete from loan where loan_id=104;


select * from database001.customer_detail;

-- create index indexname on the table_name (column_name);
create index custIndex on customer_detail(account_num);

-- show 
show index from customer_detail;
use database001;
-- drop the index


-- view 
-- create view
create view emp_view as 
select first_name, last_name , salary  from employee;

-- show view
select * from emp_view;

-- drop view
drop view emp_view;

-- stored procedure;
-- according to department_id find employee 
-- create stored procedure 
Delimiter //
create procedure empdata(in id int )
begin
select * from employee where department_id=id;
end //
delimiter ;
-- call the empdata stored procedure
call empdata(20);
call empdata(100);


-- return name of the employee according to emp_id
delimiter //
create procedure getNameById(in id int, out empName varchar(20))
begin
select first_name into empName from employee where emp_id =id;

end //
delimiter ;


call getNameById(200,@empName);
select @empName;


-- create procedure to insert data into loan table

delimiter //
create procedure newLoan(in id int, in amount bigint, in interset decimal(3,1))
begin

insert into loan (loan_id,amount,intereset) value(id,amount,interset);
end //
delimiter ;

call newLoan(103,8000,3.6);


-- with into paramter
delimiter //
create procedure multiplyby100 (inout n int)
begin 
set n=n*100;
end //
delimiter ;

set @n=2;
call multiplyby100(@n);
select @n;




-- tigger 
delimiter //
create trigger empBackUp
after delete on empTable
for each row
begin 
insert into empBackUp values(old.emp_id,old.emp_name,old.contact);
end //
delimiter ;


delete from empTable where emp_id = 3;
