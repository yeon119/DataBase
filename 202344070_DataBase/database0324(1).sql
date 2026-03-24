-- update dbstudent
-- set cell_phone = '010-3487-4422'
-- where student_number = '202433019';

select * from dbstudent
where student_number ='202433019';

UPDATE dbstudent 
set cell_phone = "010-3487-4722"
where student_number = '202433019';

select * from dbstudent
where cell_phone is null;

select * from dbstudent2_backup
where cell_phone is null;

update dbstudent2_backup
set cell_phone = "전화번호 입력 필요"
where cell_phone is null;

select * from dbstudent2_backup;

select * from dbstudent2
where grade = 3;

delete from dbstudent2 
where grade = 3;

