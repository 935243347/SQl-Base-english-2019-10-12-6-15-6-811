create DATABASE student_examination_sys_db

use student_examination_sys_db

create table student(
	id varchar(10) not null primary key,
	`name` varchar(20) not null,
	age int not null,
	sex char(6) not null
);
create table subject(
	id varchar(10) not null primary key,
	subject varchar(20) not null,
	teacher varchar(20) not null,
	description varchar(30) not null
);
create table score(
	id int not null primary key auto_increment,
	student_id varchar(10) not null,
	subject_id varchar(10) not null,
	score varchar(4) not null,
	foreign key(student_id) references student(id),
	foreign key(subject_id) references subject(id)
);

INSERT INTO student VALUES("001", "zhangsan", 18, "male");
INSERT INTO student VALUES("002", "lisi", 20, "female");

INSERT INTO subject VALUES("1001", "Chinese", "Mr.Wang", "the exam is easy");
INSERT INTO subject VALUES("1002", "math", "Miss Liu", "the exam is diffcult");

INSERT INTO score VALUES(null, "001", "1001", 80);
INSERT INTO score VALUES(null, "002", "1002", 60);
INSERT INTO score VALUES(null, "001", "1001", 70);
INSERT INTO score VALUES(null, "002", "1002", 60.5);


