show databases ;
use bulk_load ;
create database test ;
use test ;
show tables ;
create table emp (id int, name varchar(20)) ;
create table  if not exists emp (id int, name varchar(20)) ;
insert into emp values(1, "virat") ;
insert into emp values(2, "Rohit"), (3, "hardik"),(4, "ravindra"),(5, "jasprit");
alter table emp add column address varchar(40) ;
alter table emp add column doj varchar(40) after id ;
alter table emp add column salary int first ;
update emp set doj = "2025-01-02" where id = 1 ;
describe emp ;
alter table emp modify column doj date ;
alter table emp drop column salary ;
update emp set address = "nagpur" ;
update emp set address = "surat1" where id > 4;
delete from emp where id = 3 ;
update emp set doj = "2010-12-01" where id in (2,5) ;
delete from emp where doj is null ;
update emp set address = null where id = 1 ;
alter table emp rename column doj to date_of_joining ;
rename table emp to employees ;
update employees set date_of_joining = null ;
truncate table employees ;
drop table employees ;
drop database test ;

select * from emp ;
insert into emp values (6, null, "pune") ;
insert into emp (id, address) values (7,  "pune"), (8,  "mumbai"),(9,  "delhi") ;


use bulk_load ;

select * from sales ;

select * from sales where country = "india" ;

alter table sales
drop column day_name ;

select market, country, category, sub_category, new_order_date, sales from sales ;

select market, country, category, sub_category, new_order_date, sales from sales 
where sales > 100 ;

select market, country, category, sub_category, new_order_date, sales from sales 
where sales > 100 and sub_category = "Tables";

select market, country, category, sub_category, new_order_date, sales from sales 
where country = "canada";




