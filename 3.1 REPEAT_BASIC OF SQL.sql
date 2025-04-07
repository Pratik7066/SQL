create database mysqll ;
use mysqll ;
show tables ;
create table student (id int, `name` varchar(15)) ;
insert into student values (1, "ravindra" );
insert into student values (2, "shivam"), (3, "tilak") ;
alter table student
add column address varchar(30) ;
alter table student
add column contact bigint after `name` ;
alter table student
add column DOA varchar (20) first ;
describe student ;
update student
set DOA = "2020-10-20" where id =1 ;
select year(DOA) from student ;
alter table student
modify column DOA date ;
alter table student
rename column DOA to Date_of_joining ;
alter table student
modify column id int primary key  ;
alter table student
add column Dateofjoining Date after `name` ;
update student
set dateofjoining = Date_of_joining ;
alter table student
drop column date_of_joining ;
update student
set address = "mumbai" ;
rename table student to student_info ;
truncate table student_info ;
insert into student_info values (1, "ravindra", 765722386, "Pune" );
insert into student_info (id, `name`, contact, address) values (1, "ravindra", 765722386, "Pune" );
insert into student_info (id, `name`, contact, address) values (1, "ravindra", 765722386, "Pune" ),
(2, "hradik", 765722386, "Pune" );
insert ignore into student_info (id, `name`, contact, address) values (1, "ravindra", 765722386, "Pune" ),
(2, "hradik", 765722386, "Pune" ),
(3, "hradik", 765722386, "Pune" ); 
delete from student_info
where id = 3 ;


select * from student_info ;


-- constraint alter
#NOT NULL
#UNIQUE 
#DEFAULT
#CHECK
#ENUM
#AUTO_INCREMENT
#PRIMARY KEY
#FOREGIN KEY
#INDEX