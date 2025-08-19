-- insert the data on student table;
insert into student value(
1,'akshay',6200305994,'pune','2002-04-26','Male',25
);
select* from student;
insert into student value(
2,'akshay',6200305994,'pune','2002-04-26','Male',25
);
-- Error Code: 1062. Duplicate entry '6200305994' for key 'student.contact'

select* from student;
insert into student value(
2,'akshay',6200305995,'pune','2002-04-26','Male',25
);
insert into student value(3,
'Neha',7709648831,'pune','2002-07-17','Female',27
);


-- insert specific data 
insert into student(
sname, contact
) value(
'vivek',6202234867
);

insert into employee
values(5,'Kiran',15000,14,null,1111111111);


-- update of the employee table
-- update salary of the empolyee whose emp_name= Kiran

update employee set salary = 25000 where emp_name='vivek';
-- Error Code: 1175.
-- You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.
--  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.

-- update salary of the empolyee whose emp_id= 5
update employee
set salary = 20000
where emp_id = 5;


SELECT * FROM employee WHERE emp_name = 'vivek';

update employee set emp_name='sumit' where emp_id=4;
update employee set emp_name='pooja' where emp_id=3;

-- give 10 percentage hike to employee whose salary is less than 50000;
update employee set salary=salary+(salary*0.1) where salary<50000;
-- Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.
select * From employee;