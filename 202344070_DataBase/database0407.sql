use class_c;

select database();

create table user (
	user_id int auto_increment primary key,
    name varchar(50) not null,
    email varchar(100) unique -- distingute와 뜻이 똑같음 유일한 이랑 비슷한 뜻을 가짐
    );


insert into user (name , email) values
("김철수",'chulsoo@gmail.com'),
("이영희","younghee@outlook.com"),
("박민수","minsoo@naver.com");

select * from user;

alter table user add phone varchar(20); -- 이걸하면 기존의 칼럼들 맨 뒤에 새로 생성됨

select * from user;


alter table user add gender char(1) after name; -- 이러면 name뒤에 gender가 생김
    
select * from user;    

alter table user change phone phone_number varchar(20);

alter table user change gender gender enum('M',"F");

insert into user (name, gender, email,phone_number) values
("김소연", "F", "skyim@naver,com","0107654-9000");

insert into user (name, email,phone_number) values
("한석규", "skhan@naver.com","010-8765-1000");

truncate table user; -- 이러면 테이블 내부의 값이 모두 초기화되서 1번부터 다시 시작함

select * from user;

insert into user(name, email, phone_number) values
('한석규', 'skhan@naver.com', '010-8765-1000');

select * from user;


-- select * from dbstudent
-- into outfile 'D:/Users/PC/dbstudent.csv'
-- fields terminated by ','
-- enclosed by '"'
-- lines terminated by '\n';

select * from dbstudent
into outfile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/dbstudent.csv'
fields terminated by','
enclosed by'"'
lines terminated by '\n';



show variables like 'secure_file_priv';

-- 명령어랑 한거랑 프로그램으로 한거랑 차이는 헤더가 있냐 없냐의 차이임 - 칼럼이름 유무의 차이 
-- 


select * from dbstudent2;

-- json은 데이터를 각 카-값 쌍으로 저장하는 데이터 분류방식 json 

    
    