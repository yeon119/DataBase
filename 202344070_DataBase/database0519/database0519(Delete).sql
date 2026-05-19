use scriptdbc;

set @sNo = 'S0001';

delete from s_student
where sNo = @sNo;

select * from s_student
where sNo = @sNo;