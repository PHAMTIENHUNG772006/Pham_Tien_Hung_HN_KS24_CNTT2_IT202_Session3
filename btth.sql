drop database btth;
create database btth;

use btth;

create table subject (
	subject_id int primary key,
    subject_name varchar(255) not null,
    credit int check(credit > 0)
);

create table Student (
	student_id int primary key,
    full_name varchar(255) not null,
    date_of_birth date,
    email varchar(255) not null,
    address varchar(255)
);

create table enrollment (
	enrollment_id int primary key,
    enrol_date date not null,
    student_id int,
    subject_id int,
    semester int,
    
	unique(student_id,subject_id),
    foreign key(student_id) references student(student_id),
    foreign key(subject_id) references subject(subject_id)
);


alter table student 
add column phone char(10) unique ;

-- thêm cột phone vào trong bảng student bằng phương thức add

alter table student 
add constraint email_unique unique (email) ;

-- sử dụng add contraint để thêm ràng buộc unique vào trong cột email

alter table enrollment 
modify semester int;

-- dùng modify để chỉnh sửa được thuộc tính của colunm


alter table subject 
add constraint credit check(credit > 0);

-- dùng constraint để thêm ràng buộc check cho credit



alter table student 
drop column address;

-- xóa cột bằng drop colunm


select * from student;

select * from score where final_score >= 8;