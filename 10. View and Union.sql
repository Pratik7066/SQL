-- view

use bulk_load ;

show tables ;

select * from sales ;

select order_date, segment, country, category, sales, profit, quantity from sales ;

create view demo_view as  
select order_date, segment, country, category, sales, profit, quantity from sales ;

select * from demo_view ;  

select * from bank ;


use world ;

show tables ;

select * from country ;

select * from city ;

select * from countrylanguage ;

select c.`name`, c.GNP, c.region, 
ct.district, ct.population, c.`code`, ct.countrycode from 
country c join city ct
on c.`code` = ct.countrycode ;


create view country_city as 
select c.`name`, c.GNP, c.region, 
ct.district, ct.population, c.`code`, ct.countrycode from 
country c join city ct
on c.`code` = ct.countrycode ;


select * from country_city ;


------------------------------------------------------------


create database views ;
use views;
show tables ;

CREATE TABLE Employees (
    EmployeeID INT,
    `Name` VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


CREATE TABLE Orders (
    OrderID INT ,
    EmployeeID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2));

insert into employees values
(1, "rahul", "ME", 22000),
(2, "rahul2", "ME2", 21000),
(3, "rahul3", "ME3", 20000),
(4, "rahul4", "ME4", 19000),
(5, "rahul", "ME", 22000),
(6, "rahul2", "ME2", 21000),
(7, "rahul3", "ME3", 20000),
(8, "rahul4", "ME4", 19000) ;

insert into orders values
(101, 1, "2020-12-12", 45000),
(102, 2, "2020-12-12", 45000),
(103, 3, "2020-12-12", 45000),
(104, 4, "2020-12-12", 45000),
(105, 5, "2020-12-12", 45000),
(106, 6, "2020-12-12", 45000),
(107, 7, "2020-12-12", 45000),
(108, 8, "2020-12-12", 45000) ;

select * from employees ;

select * from orders ;


select e.`name`, e.department, o.totalamount from employees e, orders o ;

create view v1 as 
select e.`name`, e.department, o.totalamount from employees e, orders o ;

select * from v1 ;


-----------------------------------


-- union

use views;

CREATE TABLE Employeesfromnagpur (
    EmployeeID INT,
    `Name` VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


CREATE TABLE Employeesfrompune (
    EmployeeID INT,
    `Name` VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);


CREATE TABLE Employeesfrommumbai (
    EmployeeID INT,
    `Name` VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

insert into employeesfromnagpur values
(11, "rahul", "ME", 22000),
(12, "rahul2", "ME2", 21000),
(3, "rahul3", "ME3", 20000),
(4, "rahul4", "ME4", 19000),
(5, "rahul5", "ME5", 22000),
(6, "rahul6", "ME6", 21000),
(7, "rahul7", "ME7", 20000),
(8, "rahul8", "ME8", 19000) ;

insert into employeesfrompune values
(21, "rahul", "ME", 22000),
(22, "rahul2", "ME2", 21000),
(3, "rahul3", "ME3", 20000),
(4, "rahul4", "ME4", 19000),
(5, "rahul5", "ME5", 22000),
(6, "rahul6", "ME6", 21000),
(7, "rahul7", "ME7", 20000),
(8, "rahul8", "ME8", 19000) ;

insert into employeesfrommumbai values
(1, "rahul", "ME", 22000),
(2, "rahul2", "ME2", 21000),
(3, "rahul3", "ME3", 20000),
(4, "rahul4", "ME4", 19000),
(5, "rahul5", "ME5", 22000),
(6, "rahul6", "ME6", 21000),
(7, "rahul7", "ME7", 20000),
(8, "rahul8", "ME8", 19000) ;

show tables;

select * from employeesfromnagpur
union
select * from employeesfrompune
union
select * from employeesfrommumbai ;

select * from employeesfromnagpur
union all
select * from employeesfrompune
union all
select * from employeesfrommumbai ;

select employeeid, name, department from employeesfromnagpur
union all
select * from employeesfrompune
union all
select * from employeesfrommumbai ;


select employeeid, name, department from employeesfromnagpur
union 
select department, employeeid, name  from employeesfrompune
union 
select department, employeeid, name  from employeesfrommumbai ;

select * from employeesfromnagpur
union
select * from employeesfrompune ;


