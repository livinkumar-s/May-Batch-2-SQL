CREATE TABLE studentDetails (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    grade VARCHAR(10) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    major VARCHAR(255) NOT NULL,
    enrollment_date DATE NOT NULL,
    graduation_date DATE NOT NULL
);

INSERT INTO studentDetails (name, age, grade, email, phone, major, enrollment_date, graduation_date) VALUES
('David Wilson', 23, 'C', 'david.wilson@example.com', '555-3456', 'Biology', '2020-09-01', '2024-06-01');

-- student --> name, grade.
-- teacher --> name, age, contact, grade
-- admin --> grade

CREATE VIEW studentView AS
SELECT name, grade from studentDetails;

SELECT * from studentview;
SELECT * from teacherView;

CREATE VIEW teacherView AS
SELECT name, age, email AS contact, grade from studentDetails;
select * from role;

CREATE VIEW cricketerDetailsView as SELECT name,roleName,countryName from cricketer c inner join
role r on r.playerId = c.id inner join country co on co.playerId=c.id;

SELECT * FROM cricketerDetailsView;
