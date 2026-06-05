use employees;

CREATE table studentMark (
id int primary key auto_increment,
name varchar(30) not null,
mark int not null,
dept enum ("Computer Science","Phisics", "Chemistry")
);

insert into studentMark (name, mark, dept) values ("Ali", 85, "Computer Science"),
("Sara", 90, "Phisics"),
("John", 78, "Chemistry"),
("Emily", 92, "Computer Science"),
("Michael", 88, "Phisics"),
("Jessica", 80, "Chemistry"),
("David", 95, "Computer Science"),
("Sophia", 89, "Phisics"),
("Daniel", 82, "Chemistry"),
("Olivia", 91, "Computer Science"),
("James", 87, "Phisics"),
("Emma", 84, "Chemistry"),
("William", 93, "Computer Science"),
("Ava", 86, "Phisics"),
("Mason", 79, "Chemistry");

SELECT * from studentmark;

SELECT avg(mark) from studentmark;

SELECT * from studentmark 
WHERE mark>(SELECT avg(mark) from studentmark);

SELECT mark from studentmark where dept="Computer science";

SELECT * from studentmark where
mark in (SELECT mark from studentmark where dept="Computer science");

SELECT * FROM studentmark s where
mark>(select avg(mark) from studentmark where dept=s.dept);

SELECT avg(mark), dept from studentmark group by dept;

91.2000	Computer Science
88.0000	Phisics
80.6000	Chemistry