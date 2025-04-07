create database operation ;
use operation ;

create table if not exists course (
course_id int ,
course_name varchar(50),
course_desc varchar(60),
course_tag varchar(50)) ;


create table if not exists student(
student_id int ,
student_name varchar(30),
student_mobile int ,
student_course_enroll varchar(30),
student_course_id int ) ;

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
(108 , 'c++' , 'C++ language' , 'language') ;

insert into student values(301 , "sudhanshu", 3543453,'yes', 101),
(302 , "sudhanshu", 3543453,'yes', 102),
(301 , "sudhanshu", 3543453,'yes', 105),
(302 , "sudhanshu", 3543453,'yes', 106),
(303 , "sudhanshu", 3543453,'yes', 101),
(304 , "sudhanshu", 3543453,'yes', 103),
(305 , "sudhanshu", 3543453,'yes', 105),
(306 , "sudhanshu", 3543453,'yes', 107),
(306 , "sudhanshu", 3543453,'yes', 103) ;


select c.Course_id, s.student_course_id, c.Course_name, s.student_name, s.student_course_enroll 
from course c join student s 
on c.course_id = s.student_course_id ;

select c.Course_id, s.student_course_id, c.Course_name, s.student_name, s.student_course_enroll 
from course c natural join student s ;

select c.Course_id, s.student_course_id, c.Course_name, s.student_name, s.student_course_enroll 
from course c inner join student s 
on c.course_id = s.student_course_id ;

select c.Course_id, s.student_course_id, c.Course_name, s.student_name, s.student_course_enroll 
from course c left join student s 
on c.course_id = s.student_course_id ;


select c.Course_id, s.student_course_id, c.Course_name, s.student_name, s.student_course_enroll 
from course c right join student s 
on c.course_id = s.student_course_id ;


select c.Course_id, s.student_course_id, c.Course_name, s.student_name, s.student_course_enroll 
from course c left join student s 
on c.course_id = s.student_course_id 
where s.student_course_id is null ;

select c.*, s.* 
from course c inner join student s 
on c.course_id = s.student_course_id ;

select c.Course_id, s.student_course_id, c.Course_name, s.student_name, s.student_course_enroll 
from course c cross join student s 
on c.course_id = s.student_course_id ;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactEmail VARCHAR(100),
    Country VARCHAR(50)
);


CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50)
);



CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    OrderDate DATE,
    Quantity INT,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO Customers (CustomerID, CustomerName, ContactEmail, Country) VALUES
(11, 'Alice Smith', 'alice@example.com', 'USA'),
(12, 'Bob Johnson', 'bob@example.com', 'USA'),
(3, 'Charlie Brown', 'charlie@example.com', 'Canada'),
(4, 'David Wilson', 'david@example.com', 'USA'),
(5, 'Eva Green', 'eva@example.com', 'UK'),
(6, 'Frank Black', 'frank@example.com', 'Canada'),
(7, 'Grace Lee', 'grace@example.com', 'Australia'),
(8, 'Henry White', 'henry@example.com', 'USA'),
(9, 'Isabella Martinez', 'isabella@example.com', 'Mexico'),
(10, 'Jack Taylor', 'jack@example.com', 'USA');



INSERT INTO Products (ProductID, ProductName, Price, Category) VALUES
(11, 'Laptop', 999.99, 'Electronics'),
(12, 'Smartphone', 499.99, 'Electronics'),
(3, 'Tablet', 299.99, 'Electronics'),
(4, 'Headphones', 199.99, 'Accessories'),
(5, 'Smartwatch', 249.99, 'Wearables'),
(6, 'Camera', 899.99, 'Photography'),
(7, 'Wireless Charger', 49.99, 'Accessories'),
(8, 'Monitor', 299.99, 'Electronics'),
(9, 'Keyboard', 89.99, 'Accessories'),
(10, 'Mouse', 49.99, 'Accessories');



INSERT INTO Orders (OrderID, CustomerID, ProductID, OrderDate, Quantity) VALUES
(1, 1, 2, '2023-10-01', 1),
(2, 1, 1, '2023-10-02', 1),
(3, 2, 3, '2023-10-03', 2),
(4, 3, 1, '2023-10-04', 1),
(5, 4, 5, '2023-10-05', 1),
(6, 5, 4, '2023-10-06', 2),
(7, 6, 6, '2023-10-07', 1),
(8, 7, 8, '2023-10-08', 1),
(9, 8, 7, '2023-10-09', 1),
(10, 9, 9, '2023-10-10', 3),
(11, 10, 10, '2023-10-11', 1),
(12, 1, 5, '2023-10-12', 1),
(13, 2, 1, '2023-10-13', 2),
(14, 3, 2, '2023-10-14', 1),
(15, 4, 3, '2023-10-15', 1);

select * from customers ;

select * from products ;

select * from orders ;

select c.*, o.* , p.*
from customers c right join orders o
on c.customerid = o.customerid
right join products p
on p.productid = o.productid ;

select c.* , o.*, p.* from customers c natural join orders o natural join products p ;

select c.* , p.* from customers c natural join products p ;


------------------------------------------------

select *,
case
	when price > 500 then "high"
    when price < 400 then "low"
    else "medium"
end as nec_col from products ;   


select *,
case 
	when category = "electronics" then "Elec"
    when category = "accessories" then "acce"
    when category = "photography" then "Photo"
    else "Others"
end as nec_cat from products ;  


select * from products ;


alter table products
add column price_cat varchar(20) after price ;

update products
set price_cat = case
					when price > 500 then "high"
					when price < 400 then "low"
					else "medium"
				end ;

update products
set category = case 
					when category = "electronics" then "Elect"
					when category = "accessories" then "acce"
					when category = "photography" then "Photo"
					else "Others"
				end ;
                
 
CREATE TABLE Product (
    ProductID INT,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2),
    Category VARCHAR(50)
);

INSERT INTO Product (ProductID, ProductName, Price, Category) VALUES
(11, 'Laptop', 999.99, 'Electronics'),
(12, 'Smartphone', 499.99, 'Electronics'),
(3, 'Tablet', 299.99, 'Electronics'),
(4, 'Headphones', 199.99, 'Accessories'),
(5, 'Smartwatch', 249.99, 'Wearables'),
(6, 'Camera', 899.99, 'Photography'),
(7, 'Wireless Charger', 49.99, 'Accessories'),
(8, 'Monitor', 299.99, 'Electronics'),
(9, 'Keyboard', 89.99, 'Accessories'),
(10, 'Mouse', 49.99, 'Accessories');
 
 
 
delete from products
where productname = "moniter" ; 

delete from product 
where productname = case
						when productname = "laptop" then "laptop"
                        when productname = "tablet" then "tablet"
                        when productname = "camera" then "camera"
                        else "camera"
                     end ;   


select * from product ;
  
  
  
use bank ; 

show tables ; 

select * from district ;
  

SELECT   ID,   user_code,   User_Value,   Ideal_Range,
  CASE
    WHEN User_Value < CAST(SPLIT(Ideal_Range, ' - ')[OFFSET(0)] AS float64) THEN 'Under-Insured'
    WHEN User_Value > CAST(SPLIT(Ideal_Range, ' - ')[OFFSET(1)] AS float64) THEN 'Over-Insured'
    ELSE 'Sufficiently Insured'
  END AS insurance_status
FROM   `onef-data-test-2024.Test.Insurance` where ideal_range is not null 


select * from course ;

select split(course_desc, " ") from course ;
 
SELECT 
  SUBSTRING_INDEX(SUBSTRING_INDEX(course_desc, ' ', 1), ' ', -1) AS first_word,
  SUBSTRING_INDEX(SUBSTRING_INDEX(course_desc, ' ', 2), ' ', -1) AS second_word,
  SUBSTRING_INDEX(SUBSTRING_INDEX(course_desc, ' ', 3), ' ', -1) AS third_word
FROM course;


