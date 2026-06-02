use class_c;

select * from division;
select * from employee;

start transaction;
set sql_safe_updates = 0;
delete from division;
delete from employee;
 -- ---------------------------------------------------------------------------------------------------------------------
rollback;


