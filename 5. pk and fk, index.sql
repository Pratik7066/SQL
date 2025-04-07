use class11 ; 

create table customers (
cust_id int primary key,
`name` varchar(20),
address varchar(20)
) ;

show index from customers ;

create table orders (
order_id int primary key,
cust_id int,
price int,
order_date date,
foreign key (cust_id)
references customers(cust_id)
on update cascade
on delete cascade);

show index from orders ;

insert into customers values(1, "rohit", "mumbai"),
(2, "rahul", "pune"),
(3, "aryan", "nagpur"),
(4, "vijay", "chennai") ;


insert into orders values (101, 1, 200, "2025-01-05"),
(102, 2, 100, "2025-01-14"),
(103, 3, 300, "2025-01-18"),
(104, 4, 500, "2025-01-21");

select * from customers ;
select * from orders ;

update customers 
set cust_id = 44 where cust_id = 1 ;

delete from customers 
where cust_id = 44 ;


-------------------------------------------

-- index

create table if not exists course (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50));

show index from course ;

insert into course values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');

select * from course ;

explain select * from course where course_name = "java" ;

-----------------------------

create table if not exists course1 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_name));


insert into course1 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');

show index from course1 ;

select * from course1 ;

explain select * from course1 where course_name = "java" ;

------------------------------

create table if not exists course2 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50),
index(course_id, course_name));


show index from course2 ;

insert into course2 values(101 , 'fsda' , 'full stack data analytics' , 'Analytics'),
(102 , 'fsds' , 'full stack data analytics' , 'Analytics'),
(103 , 'fsds' , 'full stack data science' , 'DS'),
(104 , 'big data' , 'full stack big data' , 'BD'),
(105 , 'mern' , 'web dev' , 'mern'),
(106 , 'blockchain' , 'full stack blockchain' , 'BC'),
(101 , 'java' , 'full stack java' , 'java'),
(102 , 'testing' , 'full testing ' , 'testing '),
(105 , 'cybersecurity' , 'full stack cybersecurity' , 'cybersecurity'),
(109 , 'c' , 'c language' , 'c'),
(108 , 'c++' , 'C++ language' , 'language');


explain select * from course2 where course_name = "java" ;

explain select * from course2 where course_id = 103  and course_name = "fsds" ;

-------------------------

CREATE TABLE CUSTOMERS1 (
   ID INT NOT NULL,
   `NAME` VARCHAR (20) NOT NULL,
   AGE INT NOT NULL,
   ADDRESS CHAR (25),
   SALARY DECIMAL (18, 2)
);


INSERT INTO CUSTOMERS1 (ID, `NAME`, AGE, ADDRESS, SALARY) VALUES
(1, 'John Doe', 28, '123 Elm St.', 50000.00),
(2, 'Jane Smith', 34, '456 Oak Ave.', 60000.00),
(3, 'Emily Davis', 25, '789 Pine Rd.', 55000.00),
(4, 'Michael Brown', 40, '135 Maple Dr.', 70000.00),
(5, 'Jessica White', 29, '246 Cedar St.', 48000.00),
(6, 'David Johnson', 31, '357 Birch Blvd.', 52000.00),
(7, 'Sarah Wilson', 27, '468 Spruce St.', 53000.00),
(8, 'James Taylor', 38, '579 Willow Ct.', 65000.00),
(9, 'Linda Martinez', 32, '680 Fir Lane', 62000.00),
(10, 'Robert Anderson', 45, '791 Redwood Rd.', 75000.00);


show index from CUSTOMERS1 ;

explain select * from customers1 where `name` = 'David Johnson' ;

CREATE UNIQUE INDEX UNIQUE_INDEX ON CUSTOMERS1(`Name`);

explain select * from customers1 where `name` = 'David Johnson' ;

------------------------------------------------------

create table if not exists course3 (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50));


show index from course3 ;

create index indxx on course3(course_name, course_desc, course_tag) ;

drop index indxx on course3 ;

select * from bulk_load.sales ;

select * from bulk_load.sales where country = "japan" ;












