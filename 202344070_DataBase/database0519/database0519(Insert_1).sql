use scriptdbc; -- 해당하는 데이터 베이스로 이동함

set @sNo='S0002';
set @sName='이민정';
set @sAddr='인천시';
set @sCellphone='01034521211';

insert into s_student(sNo, sName, sAddr, sCellphone)
values(@sNo, @sName, @sAddr, @sCellphone);

-- 4. 데이터 추가 확인(Select)
select * from s_student;
