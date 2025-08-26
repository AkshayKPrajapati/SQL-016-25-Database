use database001;

select * from database001.students;

alter table database001.students add column dob date;
alter table database001.employee drop column dob;


INSERT INTO students (sname, dob)
VALUES 
  ('Alice Smith', '2006-01-10'),
  ('Bob Johnson', '2005-09-22');