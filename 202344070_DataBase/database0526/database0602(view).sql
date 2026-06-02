use scriptdbc;

create table users(
	user_id int primary key,
    name varchar(50) not null,
    email varchar(100) not null,
    address varchar(255) not null
    
);

create table orders( 
	order_id int primary key,
    user_id int,
    product_name varchar(100),
    price decimal(15,2), -- 최대 15자리 수
    order_date date,
    foreign key (user_id) references users(user_id)
);


insert into users values (1,"박인서",'ispark@gmail.com','서울시 강남구');
insert into users values (2,"방민경",'mkb@naver.com','인천시 연수구');
select * from users;

insert into orders values(101,1,'최신형 노트북',1500000,'2026-03-10');
insert into orders values(102,1,'무선 마우스',35000,'2026-04-12');
insert into orders values(103,2,'기계식 키보드',120000,'2026-01-02');
select * from orders;

create view v_order_details as
select 
	u.name as customer_name,
	o.product_name,
	o.price,
	o.order_date
from users u
join orders o on u.user_id = o.user_id;

select * from v_order_details;

select * from v_order_details
where customer_name = '방민경';

create or replace view v_order_details as
select
	u.name as customer_name,
    u.email, -- 추가된 컬럼
    o.product_name,
    o.price,
    o.order_date
from users u
join orders o on u.user_id = o.user_id;


select * from v_order_details;

select * from v_order_details;
-- 현재 마우스는 35000원인데 이를36500원으로 수정할때

set sql_safe_updates = 0;

update v_order_details
set price = 36500
where product_name = '무선 마우스';

set sql_safe_updates = 1;

drop view v_order_details;

