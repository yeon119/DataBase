use class_c;


    SELECT JSON_ARRAYAGG(
           JSON_OBJECT(
               'department', department,
               'student_number', student_number,
               'name', name,
               'grade', grade,
               'cell_phone', cell_phone,
               'email', email
           )
       )
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dbstudent.json'
FROM dbstudent;


create table info_employees( 
	emp_num char(9) primary key,
    emp_name varchar(14)
    );
    
create table info_employee2(
	emp_num char(9),
    emp_name varchar(14),
    constraint pk_info_employee2 primary key(emp_num)
    );


create table const_students(
	s_jumin_number char(14),
    s_name varchar(14),
    constraint uni_s_jumin_number unique(s_jumin_number)
);

insert into const_students values('11111111111111', '김창수');
select * from const_students;

insert into const_students values('11111111111111','이한우'); -- unique 떄문에 중복되는 값을 넣을수없음


insert into const_students values (null ,'김종혁');

select * from const_students
where s_jumin_number is null;

insert into const_students values (null, '최여진');


-- primary key
-- 각 행을 고유하게 구별해주는 식별자로 어던행도 똑같은 값을 가질수 없음
-- unique 와 달리 null 값 입력 불가


create table primary_students(
	s_jumin_number char(14),
    s_name varchar(14),
		constraint pk_s_jumin_number primary key(s_jumin_number)
);

insert into primary_students values('890413-1712343','김재현');
select * from primary_students;

insert into primary_students values('890413-1712343','김다영'); -- 얘도 중복값이기때문에 에러가남

insert into primary_students values(null,'김성일'); -- 얘는 널갑시이기 때문에 에러임

create table auto_employees (
	-- id 칼럼이 자동으로 1,2,3...늘어나며 기본 키 역할을 함
    emp_id int auto_increment primary key,
    enp_name varchar(50) not null,
    hire_date date
);

insert into auto_employees (enp_name, hire_date) values ('박진희','2024-01-01');  -- emp를 enp로 오타
insert into auto_employees (enp_name, hire_date) values ('김경아','2025-02-03');
select * from auto_employees;