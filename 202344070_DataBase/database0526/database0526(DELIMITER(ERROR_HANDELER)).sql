use scriptdbc;

DELIMITER //
create procedure usp_add_product(
	in p_id char(8),
    in p_name varchar(100),
    in p_price decimal(10,2),
    in p_quantity int
)

begin 
	declare exit handler for 1062
    begin
		select '이미 존재하는 id입니다. 데이터 추가를 취소합니다.' as Message;
	end;
    
    insert into product(id,name,price,quantity)
    values(p_id,p_name,p_price,p_quantity);
    
    select '제품이 성공적으로 추가되었습니다.' as result;
    
end //

select * from product;


call usp_add_product('ac000001','벨트',20000,2);
call usp_add_product('ac000004','벨트',20000,2);
call usp_add_product('ac000102','벨트',20000,2);