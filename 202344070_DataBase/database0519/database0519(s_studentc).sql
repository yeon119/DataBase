-- create database scriptdbc; 

use scriptdbc;

drop table if exists s_student;

create table s_student (
	sNo char(5) primary key,
    sName varchar(20) not null,
    sAddr varchar(50),
    sCellphone varchar(17)
);

set @sNo='S0001';
set @sName='김창수';
set @sAddr='인천시';
set @sCellphone='01025419000';


insert into s_student(sNo, sName, sAddr, sCellphone)
values(@sNo, @sName, @sAddr, @sCellphone);

select * from s_student;

-- sql 명령어 집합 (일괄처리) -- 


