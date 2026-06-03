use employees;

SELECT mod(noOfCenturies,2) from cricketer;

SELECT count(name) from cricketer;
SELECT min(noOfCenturies) from cricketer;
SELECT max(noOfCenturies) from cricketer;
SELECT sum(noOfCenturies) from cricketer;
SELECT avg(noOfCenturies) from cricketer;

create table product (
id int primary key auto_increment,
name varchar(30) not null,
price float not null,
category varchar(15) not null
);


SELECT * from cricketer;

-- 4 categoiries - veg, fruit, gadget, grocery
INSERT INTO product (name, price, category) VALUES ('apple', 100, 'fruit'),
('banana', 50, 'fruit'),
('carrot', 30, 'veg'),
('broccoli', 40, 'veg'),
('laptop', 50000, 'gadget'),
('mobile', 20000, 'gadget'),
('rice', 60, 'grocery'),
('wheat', 40, 'grocery'),
('grapes', 80, 'fruit'),
('spinach', 20, 'veg'),
('tablet', 15000, 'gadget'),
('sugar', 45, 'grocery'),
('orange', 70, 'fruit'),
('potato', 25, 'veg'),
('headphones', 3000, 'gadget'),
('flour', 35, 'grocery');


select * from product;

select avg(price) from product where price>avg(price);

SELECT count(*), avg(price), category FROM product WHERE price>40 GROUP BY category
HAVING AVG(price)>50;

select avg(price) from product;

select name,(select avg(price) from product) as avgPrice from product;
