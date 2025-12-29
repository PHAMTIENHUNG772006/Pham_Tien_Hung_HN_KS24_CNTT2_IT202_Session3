drop database session03_bt3;
create database session03_bt3;

use session03_bt3;

create table subject (
	subject_id int primary key,
    subject_name varchar(255) not null,
    credit int check(credit > 0)
);

insert subject 
value (1,'cấu trúc dữ liệu giải thuật',3),
(2,'React',4),
(3,'toán cao cấp',2);

update subject 
set subject_name = 'cơ sở dữ liệu', credit = 2
where subject_id = 2;

select * from subject;