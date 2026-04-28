use class_c;

select database();
 
 
 create table Members(
 id int auto_increment primary key,
 age int check (age >=19),
 email varchar(25)
 );
 
 insert into Members(age,email) values(20,"cskim@naver.com");
#  insert into Members(age,email) values(17,"hslee#gmail.com"); check 조건에 의해 에러가 발생함

create table Orders(
order_id int auto_increment primary key,
order_date date not null,
delivery_date  date not null,
quantity int not null,
status varchar(20),

constraint chk_quantity check(quantity >= 1),
constraint chk_delivery_date check(delivery_date >= order_date),
constraint chk_status check (status in ('ready','shipping','delivered','cancelled'))
);

insert into Orders (order_date, delivery_date, quantity,status)
values('2026-02-21','2026-02-22',0,'ready'); # quantiy가 0이라 에러

insert into Orders (order_date, delivery_datd, quantity,status)
values('2026-02-21','2026-02-20',1,'ready'); # 배송 날짜가 주문 날짜보다 빨라서 에러


create table default_orders ( 
	order_id int auto_increment primary key,
    product_name varchar(100) not null,
    quanity int not null default 1,
    order_status varchar(20) default 'PENDING',
    priority tinyint default 0,
    ordered_at datetime default now()
);

insert into default_orders (product_name)
values ('iphone_15');

select * from default_orders;

create table no0ptBUSEO(
	buseocode char(4),
    buseoname varchar(16),
    constraint pk_no0BUSEO_buseocode primary key(buseocode)
    );
    
create table no0ptSAWON (
sawon_num int auto_increment primary key,
name varchar(14),
buseocode char(4),
constraint fk_no0ptSAWON_buseocode foreign key(buseocode) references no0ptBUSEO(buseocode)
);
    
# insert into no0ptSAWON(name,buseocode) values('홍길동','1111'); 참조할수있는 데이터가 없기 때문에 에러가 발생함

insert into no0ptBUSEO values('1111','개발부');

insert into no0ptSAWON(name,buseocode) values('홍길동','1111');



create table cascadeDepartments(
	dept_code char(4),
    dept_name varchar(16),
    constraint pk_cascadeDepartments_dept_code primary key(dept_code)
    );
    
create table cascadeEmployees(
	emp_num int auto_increment primary key,
    emp_name varchar(14),
    dept_code char(4),
    constraint fk_cascadeEmployees_dept_code foreign key(dept_code) references
    cascadeDepartments(dept_code)
    on delete cascade
    on update cascade
    );



insert into cascadeDepartments values('1111','Sales');
insert into cascadeDepartments values('1112','Production');
insert into cascadeDepartments values('1113','Marketing');
insert into cascadeDepartments values('1114','Human Resouces');

INSERT INTO cascadeEmployees(emp_name, dept_code) VALUES ('김창수', '1112');
INSERT INTO cascadeEmployees(emp_name, dept_code) VALUES ('이선우', '1112');
INSERT INTO cascadeEmployees(emp_name, dept_code) VALUES ('김은희', '1113');

select * from cascadeDepartments;
select * from cascadeEmployees;

delete from cascadeDepartments where dept_code='1113';

select * from cascadeEmployees;

insert into cascadeEmployees(emp_name, dept_code) values('이가은','1111');
select * from cascadeEmployees;

update cascadeDepartments set dept_code='2222' where dept_code = '1111';
select * from cascadeEmployees;


create table setnullDepartments(
	dept_code char(4),
	dept_name varchar(14),
    constraint pk_setNullDepartments_dept_code primary key(dept_code));
    
create table setnullEmployees (
		emp_num int auto_increment primary key,
        emp_name varchar(14),
        dept_code char(4),
        constraint fk_setnullEmployees_dept_code foreign key(dept_code) references
        setnullDepartments(dept_code)
        on delete set null
        on update set null
        );
        
insert into setnullDepartments values('1111','Sales');
insert into setnullDepartments values('1112','Production');
insert into setnullDepartments values('1113','Marketing');
insert into setnullDepartments values('1114','Human Resource');


insert into setnullEmployees(emp_name, dept_code) values('김창수','1112');
insert into setnullEmployees(emp_name, dept_code) values('이선우','1112');
insert into setnullEmployees(emp_name, dept_code) values('김은희','1113');

select * from setnullDepartments;
select * from setnullEmployees;

delete from setnullDepartments where dept_code='1113';
select * from setnullEmployees;

insert into setnullEmployees(emp_name, dept_code) values('이가은','1111');
select * from setnullEmployees;

update setnullDepartments set dept_code='2222' where dept_code = '1111';
select * from setnullEmployees;
