-- CREATE DATABASE class_c

-- USE class_c;

-- CREATE TABLE dbstudent (
-- 	department VARCHAR(50) NOT NULL,
--     student_number INT PRIMARY KEY,
--     name VARCHAR(20) NOT NULL,
--     grade INT,
--     cell_phone VARCHAR(20),
--     email varchar(50)
-- );

-- INSERT INTO dbstudent (department, student_number, name , grade, cell_phone, email)
-- VALUES
-- ('정보통신공학과', 202633024, '김태우', 1,'010-2487-4727', 'qustk@naver.com'),
-- ('컴퓨터정보공학과', 202533027, '조은호', 2, '010-9048-0317', 'ehcho@hanmail.net'),
-- ('컴퓨터정보공학과', 202433006, '황정하', 3, '010-3606-4256', 'jhh@naver.com'),
-- ('컴퓨터정보공학과', 202533039, '최진영', 1, NULL, 'jychoi@naver.com'),
-- ('컴퓨터정보공학과', 202533033, '이상선', 2, '010-1487-1440', 'sslee@naver.com'),
-- ('컴퓨터정보공학과',202433026, '박주봉', 3, '010-0048-0312', 'kbpark@hanmail.com'),
-- ('정보통신공학과', 202633007, '이지은', 1, '010-5606-4251', 'jelee@naver.com'),
-- ('정보통신공학과', 202533022, '김동주', 2, NULL, 'djkim@naver.com'),
-- ('컴퓨터시스템공학과', 202433019, '박성수', 3,'0110-x487-4722', 'sspark@naver.com'),
-- ('디지털마케팅공학과', 202533102, '김아룸', 2,'010-2048-0307', 'alkim@hanmail.net'),
-- ('전기공학과', 202533002, '최진기', 2, '010-8606-4151', 'jkchoi@naver.com'),
-- ('항공운항과', 202633038, '허준', 2, NULL, 'jh01@naver.com');dbstudent

-- SELECT * FROM dbstudent;

-- SELECT department, student_number, name FROM dbstudent

-- SELECT * FROM dbstudent
-- WHERE name LIKE '김%'

-- select department as 학과, student_number as 학번, name as 이름, grade as 학년, cell_phone as 전화번호, email as 이메일 
--  from dbstudent

-- select * from dbstudent;
-- where cell_phone = null

-- select * from dbstudent
-- where cell_phone is null

-- select * from dbstudent order by grade desc

-- select grade as 학년, avg(grade) as 학생수
-- from dbstudent 
-- group by grade 