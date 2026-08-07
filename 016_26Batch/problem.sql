-- give 10 precent hike to the employee salary is less than 50000;
update employee set salary= salary+(salary*0.1) where salary < 50000;
select * from employee;


-- to turn off the safe update mode 
set sql_safe_updates=0;

-- update department id to 10 and manager id to 8 for employee  whose id is 5;
select * from employee;
select * from department;
select * from manager;

update employee set manager_id=8 , dept_id =10 where emp_id=5;


create user backend identified by 'backend';