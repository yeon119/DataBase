use class_c;

create table membership(
	member_id int auto_increment primary key,
    name varchar(40) not null,
    identification_number char(14) unique,
    address varchar(100) not null,
    phone varchar(15) not null
);

create table license(
	license_id char(5) primary key,
    license varchar(10) not null,
    member_id int not null,
    acquisition_date date,
    constraint fk_license_member_id foreign key(member_id) references membership(member_id)
);

insert into membership(name, identification_number, address, phone) values
('김창수','880111-1234567', '인천시','01077771212'),
('이아름','870912-1431222','인천시','01018972325'),
('김은하','900321-2543111','서울시','01090873276');


insert into license(license_id,license,member_id,acquisition_date) values
('ms001','mvp','5','2024-10-01');

insert into license(license_id,license,member_id,acquisition_date) values
('ms001','mvp','1','2024-10-01');

select * from license;

insert into license(license_id,license,member_id,acquisition_date) values
('or001','oca','1','2023-04-03');

select * from membership;

insert into license(license_id,license,member_id,acquisition_date) values
('ms003','mcp','2','2021-04-03');

insert into license(license_id,license,member_id,acquisition_date) values
('or001','oca','1','2023-04-03');

insert into license(license_id,license,member_id,acquisition_date) values
('ms003','mcp','2','2021-04-03');

insert into license(license_id,license,member_id,acquisition_date) values
('ms004','az-204','3','2021-04-03');


select  b.member_id, b.name, a.license,  a.license_id from license a
left join membership b
on a.member_id = b.member_id;

