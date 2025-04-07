
create user "sakshi"@"localhost" identified by "12344" ;

grant select on newload.bank to "sakshi"@"localhost" ;

revoke select on newload.bank from "sakshi"@"localhost" ;


grant all on newload.bank to "sakshi"@"localhost" ;

revoke all on newload.bank from "sakshi"@"localhost" ;

grant all on newload.* to "sakshi"@"localhost" ;

revoke all on newload.* from "sakshi"@"localhost" ;

drop user "sakshi"@"localhost" ;


----------------------------------------------------------

use newww ;

CREATE TABLE t_school(ID INT, School_Name VARCHAR(40), 
Number_Of_Students INT, Number_Of_Teachers INT, Number_Of_Classrooms INT, EmailID VARCHAR(40));

select * from t_school ;

INSERT INTO t_school(ID, School_Name, Number_Of_Students, Number_Of_Teachers,
 Number_Of_Classrooms, EmailID) 
 VALUES(1, "Boys Town Public School", 1000, 80, 12, "btps15@gmail.com"), 
 (2, "Guru Govind Singh Public School", 800, 35, 15, "ggps25@gmail.com"), 
 (3, "Delhi Public School", 1200, 30, 10, "dps101@gmail.com"), 
 (4, "Ashoka Universal School", 1110, 40, 40, "aus17@gmail.com"), 
 (5, "Calibers English Medium School", 9000, 31, 50, "cems@gmail.com");

commit ;

rollback ;

savepoint sp1 ;

savepoint sp2 ;

rollback to sp2 ;

rollback to sp1 ;

update t_school
set number_of_teachers = 55 where id = 2 ;

commit ;
