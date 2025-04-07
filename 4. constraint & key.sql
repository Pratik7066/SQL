# Constraints used in MySQL

NOT NULL
CHECK
DEFAULT
PRIMARY KEY
AUTO_INCREMENT  -- it will not use without key column
UNIQUE
INDEX
ENUM
FOREIGN KEY

create database class11 ;
use class11 ;

#NOT NULL Constraint

CREATE TABLE Student
(Id INTEGER, LastName TEXT , FirstName TEXT NOT NULL, City VARCHAR(35));

INSERT INTO Student VALUES(1, 'Hanks', 'Peter', 'New York');  

INSERT INTO Student VALUES(2, NULL, 'Amanda', 'Florida');

INSERT INTO Student VALUES(3, "lee", null, "chicago");

desc student ;


#UNIQUE Constraint

CREATE TABLE ShirtBrands(Id INTEGER, BrandName VARCHAR(40) UNIQUE, Size VARCHAR(30));

desc shirtbrands ;

INSERT INTO ShirtBrands(Id, BrandName, Size) VALUES(1, null, 38), (2, 'Cantabil', 40);  

INSERT INTO ShirtBrands(Id, BrandName, Size) VALUES(1, 'Raymond', 38), (2, 'siyaram', 40); 

select * from shirtbrands ;


#CHECK Constraint
#CHECK (expression) 
 
CREATE TABLE Persons (  
    ID int NOT NULL,  
    `Name` varchar(45) NOT NULL,  
    Age int CHECK (Age>=18)  
);  

desc persons ;

INSERT INTO Persons(Id, Name, Age)   
VALUES (1,'Robert', 16), (2, 'Joseph', 35), (3, 'Peter', 40);  

#DEFAULT Constraint

CREATE TABLE Persons1 (  
    ID int NOT NULL,  
    Name varchar(45) NOT NULL,  
    Age int,  
    City varchar(25) DEFAULT 'New York'  
);  

desc persons1 ;

INSERT INTO Persons1(Id, Name, Age, City)   
VALUES (1,'Robert', 15, null),   
(2, 'Joseph', 35, 'California'),   
(3, 'Peter', 40, 'Alaska');  

INSERT INTO Persons1(Id, Name, Age)   
VALUES (1,'Robert', 15) ;

select * from persons1 ;


#AUTO_INCREMENT Constraint

CREATE TABLE Animals(  
id int AUTO_INCREMENT,   
name CHAR(30) NOT NULL,   
PRIMARY KEY (id));  

INSERT INTO Animals (name) VALUES   
('Tiger'),('Dog'),('Penguin'),   
('Camel'),('Cat'),('Ostrich'); 

INSERT INTO Animals (id, name) VALUES   
(55, 'Tiger') ;

select * from animals ;

#ENUM Constraint

CREATE TABLE Shirts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(35),
    size ENUM('small', 'medium', 'large', 'x-large')  DEFAULT 'small'
);    

INSERT INTO Shirts(id, name, size)     
VALUES (1,'t-shirt', 'medium'),     
(2, 'casual-shirt', 'small'),     
(3, 'formal-shirt', 'large'),
(4, 'formal-shirt', "XXL"); 

INSERT INTO Shirts(name)     
VALUES ('t-shirt') ;

select * from shirts ;
select * from customers1 


-----------------------------------
drop table students2 ;

CREATE TABLE students2 (
    student_id INT,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100),
    primary key(student_id)
);

INSERT INTO students2 (student_id, name, age, city) VALUES
(1, 'John Doe', 18, 'New York'),
(2, 'Jane Smith', 17, 'Los Angeles'),
(3, 'Michael Johnson', 19, 'Chicago'),
(4, 'Emily Davis', 18, 'Houston');

select * from students2 ;

CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(100),
    instructor VARCHAR(100),
    student_id int,
    foreign key (student_id)
    references students2(student_id)
);

INSERT INTO courses (course_id, course_name, instructor,student_id) VALUES
(101, 'Mathematics', 'Prof. Smith',null),
(102, 'Science', 'Dr. Johnson',2),
(103, 'History', 'Prof. Brown',4);


UPDATE students2 SET city = 'Boston' WHERE student_id = 1;

UPDATE students2 SET student_id = 3 WHERE student_id = 1;

UPDATE courses SET student_id = 3 WHERE student_id = 1;

DELETE FROM students2 WHERE student_id = 3;

DELETE FROM courses WHERE student_id = 3;

select * from courses ;


CREATE TABLE courses1 (
    course_id INT,
    course_name VARCHAR(100),
    instructor VARCHAR(100),
    student_id int,
    primary key (course_id, course_name)
);

desc courses1 ;

INSERT INTO courses1 (course_id, course_name, instructor,student_id) VALUES
(null, 'Science1', 'Dr. Johnson', 2),
(102, 'History1', 'Prof. Brown', 4);

select * from courses1 ;


create table t1 (
course_id int,
fees int,
foreign key(course_id)
references courses1(course_id)
);

insert into t1 values (103, 56000) ;

select * from t1 ;

desc t1 ;

create table t3 (
course_name varchar(100),
duration int,
foreign key(course_name)
references courses1(course_name)
);

CREATE TABLE t2 (
    course_id INT,
    course_name VARCHAR(100),
    duration INT,
    FOREIGN KEY (course_id, course_name) 
        REFERENCES courses1(course_id, course_name)
);


