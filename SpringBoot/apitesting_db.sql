
-- create apitesting data base 
create database apitesting;

-- show tables 
show tables;


-- use apitesting;
use apitesting;

-- delete table 
drop table Address;
drop table student;

-- remove foreign key;
ALTER TABLE student
DROP FOREIGN KEY FKnipsy8d8ys1hk9s4ehyk2t7wi;


-- show data in student table 
select * from student;
select * from Address;