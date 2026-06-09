USE employees;

SELECT * FROM product;

UPDATE product set price=10.10 where id=16;
COMMIT;
rollback;

SELECT @@autocommit;

SET autocommit=1; 

DROP TABLE dummy1;

START TRANSACTION;
UPDATE product set price=880 where id=16;
SAVEPOINT save1;
UPDATE product set price=770 where id=15;



COMMIT;
ROLLBACK TO save1;
ROLLBACK;

UPDATE product set price=1 where id=16;