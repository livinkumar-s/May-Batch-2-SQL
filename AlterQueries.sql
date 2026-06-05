CREATE TABLE dummy1(
ID INT,
name varchar(30)
);

ALTER TABLE dummy ADD age int;

ALTER TABLE dummy MODIFY name char(10);

ALTER TABLE dummy RENAME COLUMN name TO studentName;
ALTER TABLE dummy CHANGE age studentAge float;
ALTER TABLE dummy ADD grade int AFTER studentName;

ALTER TABLE dummy1 ADD UNIQUE(name);
ALTER TABLE dummy1 DROP PRIMARY KEY;

ALTER TABLE dummy DROP COLUMN grade;