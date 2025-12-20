use 016_25Batch;

create table employee(
id int (5),
name varchar(20),
salary decimal(10,2)
);

INSERT INTO employee (id, name, salary) VALUES
(101, 'Rajesh', 55000.00),
(102, 'Priya', 62000.50),
(103, 'Amit', 48000.75),
(104, 'Sneha', 51000.00),
(105, 'Vikram', 47000.25);
commit;
select * from employee;

alter table employee add primary key (id);
commit ;

ALTER TABLE employee 
ADD CONSTRAINT pk_employee PRIMARY KEY (id);