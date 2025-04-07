use newload ;
show tables ;

select * from bank ;

select * from bank where age > 50 ;
select * from bank where age > 40 ;


Delimiter $$
create procedure myfirstpro (IN age_var int )
Begin
	 select * from bank where age = age_var ;
end $$     


call myfirstpro(28) ;


Delimiter $$
create procedure mysecondpro (IN a varchar(20) )
Begin
	 select * from bank where job like "a%" ;
end $$   

DELIMITER $$

CREATE PROCEDURE mysecondpro (IN a VARCHAR(20))
BEGIN
    SELECT * FROM bank WHERE job LIKE CONCAT(a, '%');
END $$

DELIMITER ;

 
call mysecondpro ("m") ;


select * from sales ;

select * from sales where country = "hungary" and sub_category = "paper" or sub_category = "storage" ;

select * from sales where country = "hungary" and sub_category in ("paper", "storage" )
and sales > 100 ;


delimiter &&
create procedure thirdpro (IN C varchar(20), IN S1 varchar(20), IN S2 varchar(20), IN S int)
Begin
	select * from sales 
	where country = C
	and sub_category in (s1, s2)
	and sales > S ;
end && 
	
    
call thirdpro ("Italy", "paper", "tables", 40 ) ;    

call thirdpro ("Italy", "paper", " ", 40 ) ; 


CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task_name VARCHAR(255),
    `status` VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);  


DELIMITER $$
CREATE PROCEDURE add_task()
BEGIN
    INSERT INTO tasks (task_name, `status`) 
    VALUES ('New Task', 'pending');
END $$

DELIMITER ;


call add_task () ;

select * from tasks ;

CREATE EVENT add_task_event
ON SCHEDULE EVERY 1 MINUTE
DO
    CALL add_task();
    
    
SET GLOBAL event_scheduler = ON; 

--------------------------------------------

CREATE TABLE test_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255),
    age INT,
    salary DECIMAL(10, 2)
);


INSERT INTO test_data (`name`, age, salary)
VALUES (
    CONCAT('Name_', FLOOR(RAND() * 1000)),  -- Random name
    FLOOR(RAND() * 100),                    -- Random age (0 to 99)
    ROUND(RAND() * 100000, 2)               -- Random salary (0 to 100000)
);



DELIMITER //
CREATE PROCEDURE InsertRandomValue()
BEGIN
    INSERT INTO test_data (`name`, age, salary)
    VALUES (
        CONCAT('Name_', FLOOR(RAND() * 1000)),  -- Random name
        FLOOR(RAND() * 100),                    -- Random age (0 to 99)
        ROUND(RAND() * 100000, 2)               -- Random salary (0 to 100000)
    );
END //

DELIMITER ;


select * from test_data ;   

CREATE EVENT insert_random
ON SCHEDULE EVERY 1 MINUTE
DO
    CALL InsertRandomValue();
    
    
    
CREATE EVENT insert_random
ON SCHEDULE EVERY 1 MINUTE
STARTS CURRENT_TIMESTAMP
ENDS CURRENT_TIMESTAMP + INTERVAL 1 HOUR
DO
    CALL InsertRandomValue();

CREATE EVENT insert_random
ON SCHEDULE EVERY 1 MINUTE
STARTS CURRENT_TIMESTAMP
ENDS CURRENT_TIMESTAMP + INTERVAL 1 HOUR
DO
    CALL InsertRandomValue();
    
    
CREATE EVENT insert_random
ON SCHEDULE EVERY 1 MINUTE
STARTS '2025-03-31 12:00:00'
ENDS '2025-03-31 18:00:00'
DO
    CALL InsertRandomValue();
    
    
ALTER EVENT insert_random DISABLE;

ALTER EVENT insert_random ENABLE;

Drop event insert_random ;




