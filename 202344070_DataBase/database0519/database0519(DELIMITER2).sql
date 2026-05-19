use scriptdbc;

DELIMITER // 

create procedure usp_select_product(
	in p_id char(8)
)
    
begin
	select * from product
    where p_id = id;
    
end //
    