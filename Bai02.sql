drop database session03_bt2;
create database session03_bt2;

use session03_bt2;

create table Student (
	student_id int primary key,
    full_name varchar(255) not null,
    date_of_birth date,
    email varchar(255) not null
);


insert into student (student_id, full_name,date_of_birth, email)

values (3,'Hung','2002-10-15','hung@gmail.com'),
(2,'Hue','2002-10-15','hue@gmail.com') ,
(5,'Loi','2002-10-15','loi@gmail.com') 
 ;
 
select * from student;
select student_id , full_name from student;

update student
set email = 'hungpham772006@gmail.com'
where student_id = 3;

update student
set date_of_birth = '2006-07-07'
where student_id = 2;


delete from student where student_id = 5;