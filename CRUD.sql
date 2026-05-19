use EMPLOYEES;

INSERT INTO employeebasic VALUES 
(1, "Vijay", 53), (2, "Ajay", 45), (3, "Sanjay", 60), 
(4, "Rohit", 35), (5, "Rahul", 40), (6, "Amit", 28), 
(7, "Sunil", 50), (8, "Anil", 42), (9, "Rakesh", 38), (10, "Suresh", 55);

SELECT * from employeebasic;

SELECT * from employeebasic WHERE name="Amit";

UPDATE employeebasic SET age=30 WHERE id=6;

DELETE FROM employeebasic;

SET SQL_SAFE_UPDATES = 1;

TRUNCATE TABLE employeebasic;