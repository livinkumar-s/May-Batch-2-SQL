use employees;
SELECT ROUND(5.5374523476) as result;
SELECT FLOOR(5.99999999999999) as result;
SELECT CEIL(5.000000000001) as result; 
SELECT ABS(-9);
SELECT MOD(9,2);
SELECT POWER(9,2);
SELECT SQRT(49);

SELECT UPPER(CONCAT("Hello", " ","World")) as result;
SELECT LOWER("HI") as result;
SELECT LENGTH("Hello Hi") as result;
SELECT RTRIM("      Hello world!    ") as result;
SELECT SUBSTRING("Hi World",4,5) as result;
SELECT REPLACE("hi hi hi guys...!","hi","hello") as result;

SELECT curdate();
SELECT curtime();
SELECT NOW();
SELECT datediff("2026-05-31",curdate());


CREATE TABLE studentMarks (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

INSERT INTO studentMarks (id, name, marks) VALUES (1, 'Alice', 85),
                                               (2, 'Bob', 92),
                                               (3, 'Charlie', 78),
                                               (4, 'David', 88),
                                               (5, 'Eve', 95),
                                               (6, 'Frank', 80),
                                               (7, 'Grace', 90),
                                               (8, 'Heidi', 82),
                                               (9, 'Ivan', 91),
                                               (10, 'Judy', 87);

select * from studentmarks;

SELECT CONCAT('The Student ', UPPER(name),'  scored ', marks)
as result
FROM studentmarks;