use scriptdbc;

-- select * from product_details
-- where id = (select id from product where name like'%구찌%');

-- select id,name from product where name like '%p_name%';


DELIMITER //
	CREATE procedure usp_select_subquery_name(
		in p_name  varchar(100)
    )
    
begin
    
	select id,description from product_details
	where id = (select id from product where name like concat('%', p_name ,'%'));
    
end //


call usp_select_subquery_name('구찌');
call usp_select_subquery_name('나이키');
call usp_select_subquery_name('구글');


    
