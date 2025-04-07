use newload ;

show tables ;

select * from bank ;

select marital, balance from bank group by marital ;

select education, max(balance) from bank group by education having max(balance) > 60000 ; 

------------------------------------

select * from bank ;

select concat(job, " ", education ) as jobeduc from bank ;

select education, char_length(education) from bank ;

select education, length(education) from bank ;

select education, lower(education) from bank ;

select education, upper(education) from bank ;

select education, trim(education) from bank ;

select education, rtrim(education) from bank ;

select education, ltrim(education) from bank ;

select education, substring(education, 3, 50) from bank ;

select education, left(education,3) from bank ;

select education, right(education,3) from bank ;

select education, replace(education,"e", "zzzz") from bank ;

select * from bank ;

alter table bank
add column new_education varchar(20) after education ;

update bank
set new_education = left(education, 3) ;

select job, reverse(job) from bank ;

select job, lpad(job, 15, " ") from bank ;

select job, rpad(job, 20, "-") from bank ;


--------------------------------------------------


select balance, abs(balance) from bank ;

select ceil(28.08) ;

select floor(28.99) ;

select round(36.343076,2) ;

select 10 div 3 ;

select balance/3 from bank ;

select balance div 3 from bank ;

SELECT MOD(10, 3);  

SELECT balance, POW(balance, 2) from bank ;

SELECT SQRT(16) ;  

SELECT TRUNCATE(12.34567, 2); 

count()
sum()
avg()
max()
min()
distinct
variance()

-------------------------------------

SELECT CURDATE(); 

SELECT CURTIME(); 

SELECT NOW(); 

SELECT UTC_DATE(); 

SELECT UTC_TIME(); 

SELECT UTC_TIMESTAMP(); 

SELECT DATE('2025-01-14 12:45:30'); 

SELECT time('2025-01-14 12:45:30'); 

SELECT YEAR('2025-01-14'); 

SELECT month('2025-01-14'); 

SELECT quarter('2025-11-14'); 

SELECT week('2025-01-05'); 

SELECT weekday('2025-01-07'); 

SELECT monthname('2025-01-07'); 

SELECT weekday('2025-01-07'); 

SELECT DAYOFMONTH('2025-01-14'); 

SELECT DAYOFWEEK('2025-01-14');  

SELECT DAYOFYEAR('2025-06-14');

SELECT DAYname('2025-01-01');

SELECT HOUR('2025-01-14 12:45:30');  

SELECT minute('2025-01-14 12:45:30');  

SELECT second('2025-01-14 12:45:30');  

SELECT DATE_ADD('2025-01-01', INTERVAL 7 DAY);  

SELECT DATE_ADD('2025-01-01', INTERVAL -10 DAY);  

SELECT DATE_ADD('2025-01-01', INTERVAL -10 week);  

SELECT DATE_ADD('2025-01-01', INTERVAL -10 year); 

SELECT DATE_ADD('2025-01-01', INTERVAL 3 quarter);  

SELECT DATEDIFF('2025-01-14', '2025-01-01'); 

SELECT DATEDIFF('2025-01-01', '2025-01-14'); 

SELECT TIMESTAMPDIFF(week, '2025-01-01', '2025-01-14'); 

SELECT TIMESTAMPDIFF(month, '2025-01-01', '2025-01-14'); 

SELECT TIMESTAMPDIFF(hour, '2025-01-01', '2025-01-14'); 

SELECT TIMESTAMPDIFF(minute, '2025-01-01', '2025-01-14'); 

SELECT TIMESTAMPDIFF(hour, '2025-01-10 12:45:30', '2025-01-14 01:45:30'); 

SELECT TIMEDIFF('2025-01-14 14:00:00', '2025-01-14 12:45:30'); 

SELECT STR_TO_DATE('2025-01-14', '%Y-%m-%d'); 

SELECT STR_TO_DATE('2025/01/14', '%Y/%m/%d'); 

SELECT STR_TO_DATE('2025/01/14', '%Y/%m/%d'); 

SELECT STR_TO_DATE('2025/jan/14', '%Y/%b/%d'); 

SELECT DATE_FORMAT('2025-01-14', '%W, %M %d, %Y'); 

SELECT DATE_FORMAT('2025-01-14', '%Y, %M %d, %W'); 

SELECT DATE_FORMAT('2025-01-14', '%Y, %b %d, %W'); 

SELECT DATE_FORMAT('2025-01-14', '%Y, %b %d, %w'); 

SELECT TIME_FORMAT('17:45:30', '%h:%i:%s %p') ; 







