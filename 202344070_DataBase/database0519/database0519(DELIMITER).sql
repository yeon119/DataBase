use scriptdbc;

DELIMITER //

create procedure usp_insert_product( 
	in p_id char(8), 
    in p_name varchar(100),
    in p_price decimal(10,2),
    in p_quanity int -- 위의 애들이 변수
    )
begin -- 시작한다는거
	insert into product(id, name, price, quantity)
    values(p_id,p_name,p_price,p_quanity);
    
end // 