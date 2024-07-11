reate database STUDENT;

use STUDENT;
create table stud
(
	ID int auto_increment primary key,
    name varchar(255),
    roll varchar(255),
    email varchar(255),
    department varchar(255),
    course varchar(255)
);

desc stud;

select * from stud;
