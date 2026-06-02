use class_c;

drop table if exists orders;

create table orders(
	id int primary key,
    item_name varchar(50),
    price decimal(10,2)
);

select * from orders;
-- 트렌젝션 시작
start transaction;
-- 데이터 입력
insert into orders(id,item_name, price) values(1,'노트북',1560000);
-- 세이브 포인트 1
savepoint point1;

select * from orders;
-- 두번쨰 데이터 입력
insert into orders (id, item_name,price) values(2,'마우스',24000);
-- 세이브 포인트 2
savepoint point2;

select * from orders;
-- 세번쨰 잘못된 데이터입력
insert into orders (id, item_name,price) values(3,'키보드',500);

select * from orders;
-- 세이브 포인트 2로 롤백
rollback to point2;
-- 최종 확인
select * from orders;
