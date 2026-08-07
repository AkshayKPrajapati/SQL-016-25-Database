Use 016_26Batch;

-- find the employees who have salary similar to the lex salary;
select * from employees where salary=
(select salary from employees where FIRST_NAME='lex');


-- find the employee who are working in pat's department ;
select * from employees where DEPARTMENT_ID=(
select DEPARTMENT_ID from employees where FIRST_NAME='pat'
);

-- find employees who have salary similar the 'Alexander'
select * from employees where SALARY in 
(
select SALARY from employees where FIRST_NAME='Alexander'
);





-- find employees who have salary greater than all the 'Alexander'
select * from employees where SALARY > all 
(
select SALARY from employees where FIRST_NAME='Alexander'
)
;

-- find employees who have salary greater than any of the 'Alexander'
select * from employees where SALARY > any 
(
select SALARY from employees where FIRST_NAME='Alexander'
)
;

