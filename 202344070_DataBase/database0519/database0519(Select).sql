use scriptdbc;

-- 내가 만든거
set @sNo = 'S0003';

select * from s_student 
where sNo = @sNo;

--  교안
set @sCellphone = '01090001000';

select sName, sCellphone
from s_student
where sCellphone = @sCellphone;