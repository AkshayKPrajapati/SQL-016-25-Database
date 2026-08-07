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



-- function in sql
select FIRST_NAME , length(FIRST_NAME) as size from employees;
-- character 5
select * from employees where length(LAST_NAME)=5;


-- 21 Aug
-- hey
select concat('hey ' , FIRST_NAME , ' Welcome ' ) as greeting from employees;
-- Display Full Name 
select concat(FIRST_NAME ,' ', LAST_NAME) as FULL_NAME from employees;
select concat(FIRST_NAME ,' ', LAST_NAME) as FULL_NAME, FIRST_NAME,LAST_NAME from employees;

-- upper case and lower case 
select upper(FIRST_NAME),lower(LAST_NAME) from employees;

-- sub str (originalName, StartingIndex, Length)

select substr('Akshay', 1,3);  -- AKS
select substr('FusionSoftwareInstitute',3,8); -- 'sionSoft'
select substr('FusionSoftwareInstitute',-4,2); -- tu // reverse character
-- full name starting 5 character of full Name 
select FIRST_NAME,LAST_NAME ,substr(concat(FIRST_NAME,LAST_NAME),1,5) as Info  from employees;

-- display half part of the name 
select FIRST_NAME, substr(FIRST_NAME,1,length(FIRST_NAME)/2) as HAIF_NAME from employees;


-- instr: it is used to return the position of specific character 
select instr('Fusion','s'); -- 3 
select instr('Fusion', 'y'); -- 0
-- find employee whose FIRST_NAME do not have 'n'
select FIRST_NAME from employees where instr(FIRST_NAME,'n')=0;
-- Aggregate Function // grouping function

select * from employees;
select max(SALARY) from employees; -- 17000
select min(SALARY) from employees; -- 2100
select avg(SALARY) from employees; -- 6061.0980
select sum(SALARY) from employees; -- 309116
select count(*) from employees; -- 51


-- group by 
select DEPARTMENT_ID ,max(SALARY) from employees group by DEPARTMENT_ID;

-- find the how many  employee are there for every department;
 select DEPARTMENT_ID ,count(*) from employees group by DEPARTMENT_ID;
-- How many people in the same names
select FIRST_NAME , count(*) from employees group by FIRST_NAME;

-- Duplicate value
select FIRST_NAME , count(*) from employees group by FIRST_NAME having count(*)>1;

-- find department where minium 3 employees are there 
select  DEPARTMENT_ID , count(*) from employees group by DEPARTMENT_ID having count(*)>=3;
select  DEPARTMENT_ID , count(*) from employees group by DEPARTMENT_ID having (count(*)>=3);

-- find department and department wise avarge salary of employees whose first name has 'a' and avager salary should be grater than 5000
select DEPARTMENT_ID, avg(SALARY) from employees where FIRST_NAME like '%a%' 
group by DEPARTMENT_ID having avg(SALARY) order by DEPARTMENT_ID;




-- window function
select *,row_number() over(order by salary) as row_nums,
rank () over(order by salary) as 'rank',
dense_rank () over(order by salary) as 'drank'
from employees;


