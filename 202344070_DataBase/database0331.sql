use class_c;

select database();


select * 
from division a 
left join employee b
	on a.division_code = b.division_code
union
select *
from division a
right join employee b
	on a.division_code = b.division_code;
    
    
create table division_self (
emp_no char(5) primary key,
emp_name varchar(30),
division_code char(4),
emp_position varchar(20),
mgr_no char(5)
);

select * from division_self;

insert into division_self (emp_no, emp_name, division_code, emp_position, mgr_no)
values ('S0014', '홍길동','1111','사원','S0010'),
('S0012','이기자','1111','과장','S0010'),
('Y0010','최천식','1112','부장','Y0010'),
('Y0013','강감찬','1112','대리','Y0010'),
('Z0010','이아름','1113','부장','Z0010'),
('S0010','김소연','1111','부장','S0010');

select * from division_self;


select count(*)from division 
cross join employee;

select a.emp_no, a.emp_name, b.division_name
from employee a
inner join division b on a.division_code = b.division_code
where b.division_name = '개발부';

-- 1단계 필요한 검색 칼럼겂으로 검색 
select division_code, division_name from division where division_name = '개발부';

-- 2단계 1단계 찾은 칼럼갑을 검색
select emp_no as 직원번호,emp_name as 직원이름 from employee where division_code ='1111';

-- 서브 쿼리 활용
select emp_no as 직원번호,emp_name as 직원이름 from employee
 where division_code =( select division_code from division where division_name = '개발부');
 
 select emp_no as 직원번호,emp_name as 직원이름 from employee
 where division_code =( select division_code from division where division_code = '1111');
 
select a.division_code, a.division_name
from division a 
left join employee b
on a.division_code = b.division_code
where b.division_code is null;

-- distinct = 중복된 값을 제하고 하나씩만 표현
select distinct division_code from employee;

select division_code, division_name from division
where division_code not in ('1111','1112','1113'); -- not in 은 and or 의 not임

select division_code, division_name from division
where division_code not in (select distinct division_code from employee); -- 중복 for 문을 생각하면 편함

