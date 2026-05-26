use scriptdbc;


-- SELECT * FROM product
-- where name like '%캔버스%';

DELIMITER // 

create procedure usp_select_productname(
	in p_name varchar(100)
)
    
begin
	select * from product
    where name like CONCAT('%',p_name,'%');
    
end //

call usp_select_productname('갤럭시');
call usp_select_productname('크로스백');