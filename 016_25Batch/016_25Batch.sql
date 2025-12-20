create database 016_25Batch;

use 016_25Batch;

select * from employee ;

delimiter //
create procedure getEmp( in eid int , out ename varchar(20), out esal decimal(10,2))
begin
select name, salary into ename,esal from employee where id=eid;
end //
delimiter ;

set @ename = '0';
set @esal = 0;
set @eid=103;
call 016_25batch.getEmp(@eid, @ename, @esal);
select @ename, @esal;

commit ;

