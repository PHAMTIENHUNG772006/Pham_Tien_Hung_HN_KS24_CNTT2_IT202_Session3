drop database session03_bt6;
create database session03_bt6;

use session03_bt6;

create table subject (
	subject_id int primary key,
    subject_name varchar(255) not null,
    credit int check(credit > 0)
);

create table Student (
	student_id int primary key,
    full_name varchar(255) not null,
    date_of_birth date,
    email varchar(255) not null
);

create table enrollment (
	enrollment_id int primary key,
    enrol_date date not null,
    student_id int,
    subject_id int,
    
	unique(student_id,subject_id),
    foreign key(student_id) references student(student_id),
    foreign key(subject_id) references subject(subject_id)
);


create table score (
    student_id int,
    subject_id int,
    mid_score decimal check (mid_score >= 0 or mid_score <= 10),
    final_score decimal check (final_score >= 0 or final_score <= 10),
    
	unique(student_id,subject_id),
    foreign key(student_id) references student(student_id),
    foreign key(subject_id) references subject(subject_id)
);


insert into student 

values (1,'Hung','2002-10-15','hung@gmail.com'),
(2,'Hue','2002-10-15','hue@gmail.com') ,
(3,'Loi','2002-10-15','loi@gmail.com') 
 ;

insert into subject 
value (1,'cấu trúc dữ liệu giải thuật',3),
(2,'React',4),
(3,'toán cao cấp',2);


insert into enrollment (enrollment_id, enrol_date,student_id,subject_id)

values (1,'2002-10-15',1,1),
(2,'2002-10-15',2,3) ,
(3,'2002-10-15',3,1) 
 ;


insert into score 
values (1,1,7,7), (2,3,9,9);

delete from enrollment where enrollment_id = 1;


select * from enrollment;

select * from score where final_score >= 8;