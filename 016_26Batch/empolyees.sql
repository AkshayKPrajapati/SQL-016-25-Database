use 016_26Batch;
select * from employees;
-- select EMPLOYEE_ID,FIRST_NAME,SALARY

select EMPLOYEE_ID,FIRST_NAME,SALARY from employees;

-- for condition 
-- salary >5000;
select * from employees where SALARY>=5000;

-- as modifie 
select EMPLOYEE_ID,FIRST_NAME,SALARY ,SALARY+1000 as updated_salary from employees;

insert into employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)
value(1,'AKSHAY','KUMAR','akshay.kumar@gmail.com','6200305994','08-July-2008','PHP DEVELOPER',17000,'-',100,52);

insert into employees (EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)
value(2,'AKASH','KUMAR','akash.kumar@gmail.com','6200305995','08-July-2007','PHP DEVELOPER',7000,' -',100,52);

update   employees set COMMISSION_PCT=' - ' where FIRST_NAME="AKASH";

-- read product data 
select * from product;

-- remove duplicate  p_name from product table query
select distinct p_name from product;
select distinct p_name,branch from product;
alter table product rename column branch to brand ;
select distinct brand from product;
select distinct brand,p_name from product;


-- operators
-- arithmetic operators
select 10%2;

-- display FIRST_NAME , SALARY and salary with 20% hike;
select FIRST_NAME,SALARY , SALARY+(SALARY*(20/100)) as hike_SALARY from employees;


select * from employees;
-- only show 10 data 
select * from employees limit 10;

-- skip 3 data from begining 
select * from employees limit 10 offset 3;

select * from employees limit 3,10;

select * from employees limit 5,2;


-- order by 
select FIRST_NAME,SALARY from employees order by SALARY; -- (assending order)
select FIRST_NAME,SALARY from employees order by SALARY desc; -- (descending order)

-- find first hightest salary of the emp name 
select FIRST_NAME,SALARY from employees order by SALARY desc limit 1;
SELECT FIRST_NAME, SALARY
FROM employees
ORDER BY SALARY DESC
LIMIT 1;


-- 2nd largest salary
select FIRST_NAME,SALARY from employees order by SALARY desc limit 1 offset 1;
SELECT FIRST_NAME, SALARY
FROM employees
ORDER BY SALARY DESC
LIMIT 1 OFFSET 1;

SELECT FIRST_NAME, SALARY
FROM employees
ORDER BY SALARY DESC
LIMIT 1, 1;

-- 3rd 
select FIRST_NAME,SALARY from employees order by SALARY desc limit 2, 1;

SELECT FIRST_NAME, SALARY
FROM employees
ORDER BY SALARY DESC
LIMIT 1 OFFSET 2;

SELECT FIRST_NAME, SALARY
FROM employees
ORDER BY SALARY DESC
LIMIT 2, 1;

-- If you want the highest distinct salaries (ignoring duplicate salary values)

-- Highest salary
SELECT DISTINCT SALARY
FROM employees
ORDER BY SALARY DESC
LIMIT 1;

-- 2nd highest salary
SELECT DISTINCT SALARY
FROM employees
ORDER BY SALARY DESC
LIMIT 1 OFFSET 1;

-- 3rd highest salary
SELECT DISTINCT SALARY
FROM employees
ORDER BY SALARY DESC
LIMIT 1 OFFSET 2;

-- To get the employee(s) with the 2nd highest distinct salary
SELECT FIRST_NAME, SALARY
FROM employees
WHERE SALARY = (
    SELECT DISTINCT SALARY
    FROM employees
    ORDER BY SALARY DESC
    LIMIT 1 OFFSET 1
);



-- logical 
select * from employees;
-- read FIRST_NAME,SALARY,DEPARTMENT_ID of the employees who have SALARY > 5000 and DEPARTMENT_ID is 90;
SELECT FIRST_NAME,SALARY,DEPARTMENT_ID FROM employees WHERE SALARY>5000 AND DEPARTMENT_ID = 90;

-- read FIRST_NAME,SALARY,DEPARTMENT_ID of the employees who have SALARY > 5000 OR DEPARTMENT_ID is 90;
SELECT FIRST_NAME,SALARY,DEPARTMENT_ID FROM employees WHERE SALARY>5000 OR DEPARTMENT_ID = 90;
SELECT FIRST_NAME,SALARY,DEPARTMENT_ID FROM employees WHERE SALARY>5000 OR DEPARTMENT_ID = 90 order by SALARY DESC;

-- find the employee who are in dept 10 or 100 or 60
-- in operator
select FIRST_NAME from employees where DEPARTMENT_ID in (10,60,100);


-- find the employees whose emp _id between 200 and 215;
-- use between operator
select * from employees where EMPLOYEE_ID between 200 and 215;

-- salary between 5000 to 1000
select * from employees where SALARY between 5000 and 10000;

-- find student who born in 2004

select * from studentinfo where dob between '2004-01-01' and '2004-12-31';

INSERT INTO `016_26batch`.`studentinfo` (`s_id`, `s_name`, `contact`, `dob`, `gender`, `location`)
VALUES (100, 'Akshay', '8523697410', '2004-05-14', 'M', 'Mumbai');
-- not between
select * from studentinfo where dob not between '2004-01-01' and '2004-12-31';

-- find students whose contact number is null
select * from studentinfo where contact is null;

-- is not null contact number 
select * from studentinfo where contact is not null;

-- find employee who do not have manager id 
select * from 
employees where MANAGER_ID is null;

-- select employees whose dept id not equal to 100;
select *from employees where DEPARTMENT_ID != 100;

-- like 

-- find the employee whose name start wiith 'A'
select * from employees where FIRST_NAME like 'A%';

-- find the employee whose FIRST_NAME starting with J and have 5 character in FIRST_NAME  ;
select * from employees where FIRST_NAME like 'J____';

-- find employee whose name is 'a' as second character;
select * from employees where FIRST_NAME like '_A%';

-- find employee whose last name end with R;
select * from employees where FIRST_NAME like '%R';

-- 2 time a ;
select * from employees where FIRST_NAME like '%A%A%';

-- double nn
select * from employees where FIRST_NAME like '%nn%';

-- find 3 character name 
select * from employees where FIRST_NAME like '___';