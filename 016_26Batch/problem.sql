-- give 10 precent hike to the employee salary is less than 50000;
update employee set salary= salary+(salary*0.1) where salary < 50000;
select * from employee;