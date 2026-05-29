use employees;

CREATE TABLE cricketer (
id int primary key auto_increment,
name varchar(50) not null,
email varchar(100) unique not null,
phone char(10) not null unique,
noOfCenturies int not null check(noOfCenturies>15),
isActive boolean default 0
);

CREATE TABLE country (
id int primary key auto_increment,
countryName varchar(20) not null,
playerId int not null,
FOREIGN KEY (playerId) references cricketer(id)
);

DROP table country;

INSERT INTO cricketer (name, email, phone, noOfCenturies, isActive) VALUES
('Sachin Tendulkar', 'sachin@example.com', '9876543210', 100, 0),
('Virat Kohli', 'virat@example.com', '9876543211', 86, 1);


INSERT INTO cricketer (name, email, phone, noOfCenturies) VALUES
('Rahul Dravid', 'rahul@example.com', '9876543212', 50),
('Sourav Ganguly', 'sourav@example.com', '9876543213', 30);

INSERT INTO cricketer (name, email, phone, noOfCenturies) VALUES
('abhishek', 'abhi@example.com', '9876543214', 2);

INSERT INTO cricketer (name, email, phone, noOfCenturies, isActive) VALUES
('Steve smith', 'steve@example.com', '9876543218', 25, 1),
('Kane Williamson', 'kane@example.com', '9876543219', 70, 1);

INSERT INTO country (countryName, playerId) VALUES 
("NZ",9);

select * from cricketer;
select * from country;