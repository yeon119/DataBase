-- use class_c;

-- create table dbstudent2 (
-- 	department varchar(50) not null,
--     student_number char(9),
--     name varchar(20) not null,
--     grade int,
--     cell_phone varchar(20),
--     email varchar(50)
-- );


-- insert into dbstudent2 values
-- ('정보통신공학과', '202633024', '김태우', 1, '010-2487-4727', 'qustkd@naver.com');
-- insert into dbstudent2 values
-- ('컴퓨터정보공학과', '202533027','조은호',2,'010-9048-0317', 'ehcho@hanmail.net');
-- insert into dbstudent2 values
-- ("컴퓨터정보공학과",'202433006','황정하',3,'010-3606-4256', 'jhh@naver.com');


-- select * from dbstudent2 


-- insert into dbstudent2 (department, student_number, name ,grade,email) 
-- values ('컴퓨터정보공학과','202533039','최진영', 1,'jychoi@naver.com');
-- insert into dbstudent2 (department, student_number, name ,grade,email)
-- values('정보통신공학과', '202555022', '김동주',2,'djkim@naver.com');
-- insert into dbstudent2 (department, student_number, name ,grade,email)
-- values('항공운항과','202633038','허준',2,'jh01@naver.com');

-- insert into dbstudent2 (department, student_number,name , grade, cell_phone,email)
-- values
-- ('컴퓨터정보공학과','202533033', '이상선', 2, '010-1487-4770','sslee@naver.com'),
-- ('컴퓨터정보공학과','202433026','박주봉',3,'010-0058-0312','kbpark@hanmail.net'),
-- ('정보통신공학과','202633007','이지은',1,'010-5606-4251','jelee@naver.com'),
-- ('컴퓨터시스템공학과','202433019','박성수',3,'110-x487-4722','sspark@naver.com'),
-- ('디지털마케팅공학과','202533012','김아름',2,'010-2048-0307','alkim@hanmail.net'),
-- ('전기공학과','202533002','최진기',2,'010-8606-4151','jkchoi@naver.com');

-- select * from dbstudent2

-- create table dbstudent2_backup (
-- department varchar(50) not null,
-- student_number char(9) primary key,
-- name varchar(20) not null,
-- grade int,
-- cell_phone varchar(20),
-- email varchar(50)
-- );

insert into dbstudent2_backup(department, student_number,name,grade,cell_phone)
select department,student_number,name,grade,cell_phone
from dbstudent2
where cell_phone is null