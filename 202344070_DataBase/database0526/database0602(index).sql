select database();

create table books(
	book_id int primary key,
    title varchar(100),
    author varchar(50),
    published_data date
);

insert into books values(3,'인생을 위한 최소한의 생각','신영준','2026-02-25');
insert into books values(1,'앨빈 토플러 청소년 부의 미래','앨빈토플러','2023-05-31');
insert into books values(2,'된다! 하루 만에 끝내는 제미나이 활용법','권서림','2025-11-17');

-- 데이터를 넣읜 순서와 상관없이 순서되로 출력되는 이유는 mysql이 pk를 기준으로 정렬을 하기떄문 
SELECT * FROM books;

create index idx_book_title on books(title);

select * from books where title = '인생을 위한 최소한의 생각';

show index from books;

drop index idx_book_title on books;

alter table books drop primary key;