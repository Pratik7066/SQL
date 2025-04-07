use newload ;

select * from bank ;

select concat(job, " ", education) from bank ;

delimiter &&
create function num_fun (A int, num int )
returns int
deterministic
Begin
	declare x int ;
    set x = A + num ;
    return x ;
end &&   


select age, num_fun(age, 10) from bank ;

select sales, num_fun(sales, 200) from sales ;

select * from sales ;

select shipping_cost, num_fun(shipping_cost, 20) from sales ;

select 


DELIMITER $$
create function function1(A INT, B int)
returns INT 
DETERMINISTIC
BEGIN 
	DECLARE c int ;
	set c = A + B ;
	return c ;
end $$

drop function function1 ;

select age, function1(age, 20) from bank ;


select population, num_fun(population, 100) from world.city ;

use world ;

show tables ;

select * from student ;

select student_id, newload.num_fun(student_id, 100),  from student ;


select * from sales ;

select sales, num_fun(sales, -100), profit, num_fun(profit, 20) from sales ;


select category, num_fun(category, 20) from sales ;


delimiter $$
create function myfun11(var1 int, var2 int, var3 int, var4 int) 
returns int
deterministic
begin
	declare output int ;
    declare total_sales int ;
    set total_sales = (var1 - var2) * var3 ;
    set output = total_sales - var4  ;
	return output ;
end $$ 


select sales, profit, myfun1(sales, discount, quantity, shipping_cost) from sales ;


Delimiter $$
create function full_date (d int, m char(10)) returns date
deterministic
begin
	declare FD date ;
    set FD =  str_to_date(concat(d," ", m, ' 2023'), '%d %b %Y') ;
    return FD ;
end $$ 







