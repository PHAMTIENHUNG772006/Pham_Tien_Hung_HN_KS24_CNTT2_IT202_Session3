drop database session03_bt1;
create database session03_bt1;

use session03_bt1;

create table Student (
	student_id int primary key,
    full_name varchar(255) not null,
    date_of_birth date,
    email varchar(255) not null
);


insert into student (student_id, full_name,date_of_birth, email)

values (1,'Hung','2002-10-15','hung@gmail.com'),
(2,'Hue','2002-10-15','hue@gmail.com') ,
(3,'Loi','2002-10-15','loi@gmail.com') 
 ;
 
 select * from student;
  select student_id , full_name from student;