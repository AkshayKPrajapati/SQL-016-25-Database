productuse 016_26Batch;
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
