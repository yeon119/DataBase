-- 1. 해당하는 데이터 베이스로 이동함 (Use)
use scriptdbc; 

-- 2. 추가할 데이터 설정(Set)
set @sNo='S0003';
set @sName='김은희';
set @sAddr='서울시';
set @sCellphone='01090001000';

-- 3. 데이터 추가 (Insert)
insert into s_student(sNo, sName, sAddr, sCellphone)
values(@sNo, @sName, @sAddr, @sCellphone);

-- 4. 데이터 추가 확인(Select)
select * from s_student;