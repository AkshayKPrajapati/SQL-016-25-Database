use database001;
create table loan (
	loan_id int primary key ,
    amount bigint,
    intereset decimal(3,1)
);

insert into loan values(101, 5000,6.1),
(102, 8000,8.1),(103, 8000,7.1);

select * from database001.loan;
insert into loan value
(104, 8050,7.1);
select * from loan;