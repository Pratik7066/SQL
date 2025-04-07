use operation ;

create table  c1 (
course_name varchar(50),
course_id int(10),
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by range(course_launch_year)(
partition p0 values less than (2019),
partition p1 values less than (2020),
partition p2 values less than (2021),
partition p3 values less than (2022),
partition p4 values less than maxvalue);

select * from c1 ;

SELECT TABLE_NAME, PARTITION_NAME, PARTITION_ORDINAL_POSITION, PARTITION_METHOD, PARTITION_EXPRESSION, TABLE_ROWS
FROM information_schema.PARTITIONS
WHERE TABLE_NAME = "c1" ;


insert into c1 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu', 2017) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu', 2020) ;



create table  c2 (
course_name varchar(50) ,
course_id int(10) ,
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by list(course_launch_year)(
partition p0 values in(2019,2020),
partition p1 values in(2022,2021),
partition p2 values in(2023,2024)
);

SELECT TABLE_NAME, PARTITION_NAME, PARTITION_ORDINAL_POSITION, PARTITION_METHOD, PARTITION_EXPRESSION, TABLE_ROWS
FROM information_schema.PARTITIONS
WHERE TABLE_NAME = "c2" ;

insert into c2 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu', 2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu', 2018) ;

select * from c2 ;



create table  c3(
course_name varchar(50),
course_id int(10),
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by hash(course_launch_year)
partitions 7;


SELECT TABLE_NAME, PARTITION_NAME, PARTITION_ORDINAL_POSITION, PARTITION_METHOD, PARTITION_EXPRESSION, TABLE_ROWS
FROM information_schema.PARTITIONS
WHERE TABLE_NAME = "c3" ;


insert into c3 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu', 2002) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu', 2012) ;



create table c4(
course_name varchar(50),
course_id int(10),
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by range(course_launch_year)
subpartition by hash(course_launch_year)
subpartitions 5 (
partition p0 values less than (2019) ,
partition p1 values less than (2020) ,
partition p2 values less than (2021) ,
partition p3 values less than (2022) 
);


SELECT TABLE_NAME, PARTITION_NAME, PARTITION_ORDINAL_POSITION, PARTITION_METHOD, PARTITION_EXPRESSION, TABLE_ROWS
FROM information_schema.PARTITIONS
WHERE TABLE_NAME = "c4" ;

insert into c4 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu', 2021) ;


create table c5(
course_name varchar(50) ,
course_id int(10) ,
course_title varchar(60),
course_desc varchar(80),
launch_date date,
course_fee int,
course_mentor varchar(60),
course_launch_year int)
partition by range columns(course_name, course_id, course_launch_year )(
partition p0 values less than ('aiops', 105, 2019),
partition p1 values less than ('fsds', 110, 2021),
partition p2 values less than ('MERN', 116, 2023)
);

select partition_name , table_name , PARTITION_ORDINAL_POSITION,table_rows from 
information_schema.partitions where table_name = 'c5';

insert  ignore into  c5 values
('zoho' , 115 , 'DA', "this is ML course" ,'2019-07-07',3540,'sudhanshu', 2024)  ;

select ('AIops', 105, 2019) < ('AIops', 101, 2019) ;

select 2019 > 2020 ;

select (120, "zoho", 2024 ) < (116, 'MERN', 2023) ;


insert  ignore into  c5 values
('machine_learning' , 101 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('aiops' , 102 , 'ML', "this is aiops course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('dlcvnlp' , 103 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('aws cloud' , 104 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('blockchain' , 105, 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('RL' , 106 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('Dl' , 107 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('interview prep' , 108 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019) ,
('big data' , 109 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('data analytics' , 110 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fsds' , 1011 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('fsda' , 1012 , 'ML', "this is ML course" ,'2021-07-07',3540,'sudhanshu',2021) ,
('fabe' , 1013 , 'ML', "this is ML course" ,'2022-07-07',3540,'sudhanshu',2022) ,
('java' , 1014 , 'ML', "this is ML course" ,'2020-07-07',3540,'sudhanshu',2020) ,
('MERN' , 1015 , 'ML', "this is ML course" ,'2019-07-07',3540,'sudhanshu',2019);

select * from c5 ;

select *, 
case 
	when course_name = "aiops" then "AI"
    when course_name = "dl" then "AI"
	when course_name = "big data" then "AI" 
    when course_name = "fsda" then "AI" 
    when course_name = "machine_learning" then "AI" 
    else "other"
    end as course_cat from c5 ;
    

select * from employees ; 


select * , 
case 
	when sales between 1000 and 4000 then "low"
    when sales between 5000 and 7000 then "medium"
    else "high"
    end as sales_cat from employees ;  
    

select * , 
case 
	when sales between 1000 and 4000 then "low"
    when sales between 5000 and 7000 then "medium"
    else "high"
    end as sales_cat from employees ;
    
    
    
    

