USE employees;

CREATE TABLE role (
id int primary key auto_increment,
roleName enum("Batsman","Bowler","All rounder") not null,
playerId int not null
);

select * from cricketer;

INSERT INTO role (roleName,playerId) values 
("All rounder",1),
("Batsman",2),
("Batsman",6),
("Batsman",8),
("Bowler",7),
("All rounder",20);

select * from country;

SELECT * 
FROM cricketer c INNER JOIN country r ON c.id=r.playerId;

SELECT c.name,r.roleName 
FROM cricketer c LEFT JOIN role r ON c.id=r.playerId

Union

SELECT c.name,r.roleName 
FROM cricketer c RIGHT JOIN role r ON c.id=r.playerId;

SELECT concat("He is ",upper(c.name),". he plays as a ",upper(r.roleName)
,". for ",upper(co.countryName),".") 
as description from cricketer c inner join 
country co on c.id=co.playerId
inner join role r on r.playerId=c.id;

SELECT * from cricketer CROSS JOIN role;


