use scriptdbc;

set @sNo = 'S0002';
set @sAddr = '부천시';

update s_student
set sAddr = @sAddr
where sNo = @sNo;

select * from s_student
where sNo = @sNo;


