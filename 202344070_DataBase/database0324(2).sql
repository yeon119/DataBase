use class_c;

create table division(
	division_code char(4) primary key,
    division_name varchar(30)
);

create table employee (
emp_no int auto_increment primary key,
emp_name varchar(30),
division_code char(4),
emp_position varchar(30)
);


insert into division (division_code, division_name) values
('1111', '개발부'),
('1112', '영업부'),
('1113', '홍보부'),
('1114', '경영지원부');

select * from division;

insert into employee (emp_name, division_code, emp_position) values
('홍길동', '1111', '사원'),('이기자', '1111', '과장'),('최천식', '1112', '부장'),
('강감찬', '1112', '대리'),('이아름', '1113', '부장'),('김소연', '1113', '차장');

select * from employee;

select a.division_name, b.emp_name, b.emp_position
from division a
inner join employee b -- a 랑 b로 나누어 a에서 부서 이름과 b에서 사원 이름, 사원 계급을 가져오라 하며 a와b는 새로 만든 별칭임
	on a.division_code = b.division_code
where a.division_code ='1112';


-- select * from product d
-- 	(select a.division_name, b.emp_name, b.emp_position
-- 	from division a
-- 	inner join employee b 
-- 		on a.division_code = b.division_code
-- 	where a.division_code ='1112') c
--     on d.common_column = c.common_column
-- where 조건 뭐 이렇게도 쓸수있다

select * from division a
left outer join employee b
	on a.division_code =b.division_code