use class_c;

-- 과목 테이블 생성
create table course(
	course_code varchar(10) primary key,
	room_location varchar(50)
	);
        
-- 수같 테이블 생성

create table enrollment(
student_id int,
course_code varchar(10),
grade  varchar(2),
primary key (student_id, course_code),
foreign key (course_code) references  course(course_code)
);


insert into course values ('CS101', '공학관 101호'), ('MATH201','이하관 305호');
select * from course;

insert into enrollment values
(202401,'CS101','A'),
(202401,'MATH201','A+'),
(202402,'CS101','A+');

select * from enrollment;


-- 등급 테이블
create table Rating (
	grade varchar(10) primary key ,
    discount_rate int not null
    );
    

-- 고객 테이블    
create table Customer(
	customer_id varchar(20) primary key,
    customer_name varchar(50) not null,
    grade varchar(10),
    foreign key (grade) references Rating(grade)
    );
    
-- 주문 테이블
create table Orders2(
order_id int primary key,
customer_id varchar(20),
order_date datetime default current_timestamp,
foreign key(customer_id) references Customer(customer_id)
);

insert into Rating Values('vip',10),('일반',0);
select * from Rating;

insert into Customer Values
('user1','아사노프아타이','VIP'),
('user2','배예은','VIP'),
('user3','문정수','일반');

select * from Customer;


insert into Orders2(order_id, customer_id) values
(101,'user1'),
(102,'user2'),
(103,'user1');

select * from Orders2;

select a.customer_name as 고객이름 , b.order_id as 주문번호, b.order_date as 주문시간
from customer a
inner join Orders2 b
on a.customer_id = b.customer_id;

select a.customer_name as 고객이름 , count(b.order_id) as 주문수
from customer a
inner join Orders2 b
on a.customer_id = b.customer_id
group by a.customer_name;





-- -------------------------------------------------------------------

use testdb3;

insert into departments values
('1112','영업부'),('1113','홍보부'),('1114','경영지원부');

select * from departments;

-- on delete 뭐시기가 있는데 그거는 안되서 찾아봐야함
-- 



