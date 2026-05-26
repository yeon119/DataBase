use scriptdbc

DELIMITER //

create procedure usp_delete_product(
	p_id char(8)

)

begin
	delete from product
    where id = p_id;
end //


call usp_delete_product('ep000001');
select * from product;