use scritpdbc;

create table product(
	id char(8) primary key,
    name varchar(100) not null,
    price decimal(10,2),
    quantity int default 0
);
-- 이걸 또 뭔가로 만들려면 4개의 변수가 필요함
insert into product values
('ep000001','갤럭시 s25욽트라',1182690,20),
('ep000002','아이폰 17 프로',1182690, 10);

select * from product;