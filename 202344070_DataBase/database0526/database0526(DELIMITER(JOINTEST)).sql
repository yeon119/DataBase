use scriptdbc;

create table product_details (
	id char(8) primary key,product_details
    description text, 
    constraint fk_product_details_id
    foreign key(id) references product(id)
    on delete cascade
    );
    
insert into product_details values('ep000002','아이폰 17 프로는 A19 Pro 칩, 12GB 램, 전면 48MP 트리플 카메라를 탑재하고 2025년9월 출시된 고성능 스마트폰 입니다.');
insert into product_details values('ep000003','499 달러의 합리적인 가격에 텐서 G4 칩셋, 매끄러운 플렛 디자인, 위성 SOS  기능을 타재한 실속형 스마트폰입니다.');
insert into product_details values('ac000001','구찌 알리 스몰 크로스백은 블랙 레더와 빈티지골드GG 로고가 조화로운 고급스럽고 세련된 데일리백입니다');
-- insert into product_details values('ac000002','나이키 P-6000은 통기성이 좋은 메시와 가죽 에이어의 레트로 디자인이 특징인 화이트 컬러의 편안한 여성용 운동화입니다'); 에러 이유 찾아보기
insert into product_details values('ac000003','튜오백은 생각보다 이뻐요 크기도 적당하고 재질이 좋아용');

select * from product_details;
drop table product_details;

select a.id, a.name , a.price,a.quantity,b.description
from product a
inner join product_details b 
on a.id = b.id
where a.id = 'ac000001';

