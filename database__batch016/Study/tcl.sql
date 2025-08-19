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
value (4,'ranchi',822021);
rollback;
