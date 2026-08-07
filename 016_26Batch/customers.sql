SELECT * FROM 016_26batch.customers;

alter table customers modify  address varchar (20) default 'Pune';

insert into customers (c_name,contact)
value('Rohit',6200305995)