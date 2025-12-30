create database test;
use test;

create table Student(
    students_id varchar(15) primary key,
    students_name varchar(50) not null,
    students_email varchar(50) unique not null,
	students_phoneNum varchar(15) not null unique
);

create table Courses(
     course_id varchar(15) primary key not null unique,
     course_name varchar(50) not null,
     course_credit int not null check (course_credit > 0)
);

create table Enrollments(
      students_id varchar(15),
      course_id varchar(15),
	  grade decimal(4,2) not null,
      primary key(students_id, course_id),
      
      foreign key(students_id)
		references Student(students_id),
	  foreign key(course_id)
        references Courses(course_id)
        
);

insert into Student(students_id, students_name, students_email, students_phoneNum)
values
("01","Nguyen Van A","Eggx1@gmail.com","0931910112"),
("02","Nguyen Van A","Eggx2@gmail.com","0192092333"),
("03","Nguyen Van A","Eggx3@gmail.com","0931910111"),
("04","Nguyen Van A","Eggx4@gmail.com","0982828288"),
("05","Nguyen Van A","Eggx5@gmail.com","0988822212");

insert into Courses(course_id, course_name,course_credit)
values 
(1,"co so du lieu",3),
(2,"lap trinh huong doi tuong",4),
(3,"lap trinh java",3),
(4,"toan cao cap",4),
(5,"triet hoc dai cuong",3);

insert into Enrollments(students_id,course_id, grade)
 values
('01', '1', 8.50),
('01', '2', 7.00),
('02', '4', 9.00),
('03', '3', 6.75),
('04', '5', 8.25);

update Enrollments
set grade = 9.00
where student_id = "2" and course_id = "4";

select student_name,student_email,student_phoneNum
from student




