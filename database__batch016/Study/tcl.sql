show databases;
use batch01625;
show tables;

-- use location table
start transaction;
select * from location;
insert into location (location_id,city,pincode) 
value (3,'patna',822012);
commit;

start transaction;
select * from location;
insert into location (location_id,city,pincode) 
value (5,'NGP',222721);
rollback;

start transaction;
select * from location;
insert into location (location_id,city,pincode) 
value (5,'NGP',222721);
insert into location (location_id,city,pincode) 
value (6,'Nashik',852721);
select * from location;
savepoint s1;
delete from location where location_id = 6;
select * from location;
rollback to s1;
select * from location;