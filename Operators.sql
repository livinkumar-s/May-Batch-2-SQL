use employees;

SELECT * from employeebasic;
SELECT * FROM employeebasic where age BETWEEN 40 and 50;
SELECT * FROM employeebasic where age IN (45,54,66,33,53,35,44,60);
SELECT * FROM employeebasic where age NOT IN (45,54,66,33,53,35,44,60);
SELECT * FROM employeebasic where age>50 and id<5;
SELECT * FROM employeebasic where age>50 or id<5;

select * from employeebasic where not age between 45 and 55;
select * from employeebasic where name Like "%a%";

select name, age from employeebasic;

select age as number from employeebasic;

select name as employeeName, age as employeeAge from employeebasic;

select name as employeename, age as employeeage from employeebasic;

SELECT * FROM employeebasic where age>40 LIMIT 3 OFFSET 2;
SELECT * FROM employeebasic order by age desc limit 1;

