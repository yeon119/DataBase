use scriptdbc;

call usp_insert_product('ep000003','구글 픽셀 10a',660000,1);

select * from product;

call usp_insert_product('ac000001','구찌 [리본즈] 블랙 알리 스몰 크로스백',441542,3);
call usp_insert_product('ac000003','여성 나이키 P-6000 AV6603-101',901759,5);
call usp_insert_product('ac000004','듀오 캔버스 토트백 II 3913',34319,2);

call usp_select_product('ac000001');

call usp_select_productname('갤럭시 s25 울트라');
