create database mock;
use mock;
create table student(
student_id integer primary key auto_increment,
student_name varchar(20),
phone varchar(11)
);

alter table student add email varchar(40);

select * from student ;
alter table student rename column phone to student_contact;
alter table student rename column email to student_email;
select * from student ;