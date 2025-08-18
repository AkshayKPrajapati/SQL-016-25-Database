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

