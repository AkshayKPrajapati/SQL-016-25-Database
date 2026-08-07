Use 016_26Batch;
create table loan(
loanid int primary key ,
amount bigint ,
interest decimal(3,1) 
);


create table customer_details(
CUSTOMER_ID INT PRIMARY KEY ,
CUSTOMER_NAME varchar(20),
ACCOUNT_NUMBER BIGINT,
LOAN_ID INT,
constraint LOAN_FK
foreign key (LOAN_ID) references loan(loanid)
);

delete FROM loan WHERE loanid=1000;
delete FROM customer_details WHERE LOAN_ID=1000;