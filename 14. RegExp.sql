use newload ;

show tables ;

select * from bank ;

select job from bank where job regexp "^b" ; 

select job from bank where job regexp "t$" ; 

select job from bank where job regexp "^[sba]" ; 

select job from bank where job regexp "^[a-j]" ; 

select job from bank where job regexp "[a-j]$" ; 

select balance from bank where balance regexp "^5" ; 

select balance from bank where balance regexp "5$" ; 

select balance from bank where balance regexp "44" ; 

select job from bank where job regexp "re" ; 

select job from bank where job regexp "u" ; 

SELECT * FROM bank WHERE job REGEXP '^.{6}$'; 

SELECT * FROM bank WHERE balance REGEXP '^.{4}$'; 

SELECT * FROM bank WHERE balance REGEXP  67; 

SELECT job, education, balance 
FROM bank   
WHERE job RLIKE 't$|d$'; 

SELECT job, education, balance 
FROM bank   
WHERE job RLIKE '^t|d$'; 

SELECT job, education, balance 
FROM bank   
WHERE job RLIKE '^[ta]|d$'; 

SELECT job, balance
FROM bank   
WHERE job RLIKE 'a..in.'; 


SELECT * FROM bank WHERE job LIKE 'e%';  

SELECT * FROM bank WHERE job LIKE '%d';  

SELECT * FROM bank WHERE job LIKE '%d%'; 

SELECT * FROM bank WHERE job LIKE '%ai%'; 

SELECT * FROM bank WHERE job LIKE 'ad_in.'; 

SELECT * FROM bank WHERE job LIKE 'ad__n.'; 

SELECT * FROM bank WHERE job LIKE 'a%.'; 

SELECT * FROM bank WHERE job LIKE 's%t'; 

SELECT * FROM bank WHERE balance LIKE '%4' ; 

SELECT * FROM bank WHERE balance LIKE  555 ; 


select * from sales_data ;

select `description` from sales_data where `description` like "%clip%" ;

select * from sales_data where `description` like "%clip%" ;

select * from sales_data where stockcode like "%888" ;

select * from sales_data where unitprice = 8 ;

select * from sales_data where `description` like "%8%" ;

