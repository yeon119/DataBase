use scriptdbc;

DELIMITER //
create procedure usp_update_product_quantity(
	in p_id char(8),
	in p_quantity int
)

begin 
	update product
    set quantity = p_quantity
    where id = p_id;
end //

select * from product;

call usp_update_product_quantity('ac000003',100);