use scriptdbc;

DELIMITER //

create procedure usp_select_join_id(
	in p_id char(8)
)

begin
select a.id, a.name, a.price, a.quantity, b.description
from product a
inner join product_details b
on a.id = b.id
where a.id = p_id;
end //


call usp_select_join_id('ac000001');
-- call usp_selct_join_id('ac000002');
call usp_select_join_id('ac000003');
