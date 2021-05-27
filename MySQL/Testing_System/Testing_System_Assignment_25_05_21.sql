DROP DATABASE IF EXISTS Testing_System_25_05_2021;
CREATE DATABASE 		Testing_System_25_05_2021;
USE 					Testing_System_25_05_2021;

DROP TABLE IF EXISTS 	Department;
CREATE TABLE 			Department(
						Department_Number	INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
						Department_Name		VARCHAR (50) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS 	Employee;
CREATE TABLE 			Employee(
						Employee_Number		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
						Employee_Name		VARCHAR (50) NOT NULL,
						Department_Number	INT UNSIGNED NOT NULL,
FOREIGN KEY 			(Department_Number) REFERENCES Department(Department_Number) 
);

DROP TABLE IF EXISTS 	Skill;
CREATE TABLE 			Skill(
						Skill_Number		INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
						Skill_Name			VARCHAR (50) NOT NULL UNIQUE
);

DROP TABLE IF EXISTS 	Employee_Skill;
CREATE TABLE 			Employee_Skill(
						Employee_Number		INT UNSIGNED NOT NULL,
						Skill_Number		INT UNSIGNED NOT NULL,
						Date_Registered		DATETIME DEFAULT NOW(),
						FOREIGN KEY (Employee_Number) REFERENCES Employee (Employee_Number) ,
						FOREIGN KEY (Skill_Number) REFERENCES Skill (Skill_Number) 
);

------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------


-- Insert Data Department

insert into department (Department_Name) values ('Support');
insert into department (Department_Name) values ('Engineering');
insert into department (Department_Name) values ('PM');
insert into department (Department_Name) values ('Training');
insert into department (Department_Name) values ('Services');
insert into department (Department_Name) values ('Marketing');
insert into department (Department_Name) values ('Legal');
insert into department (Department_Name) values ('Sales');
insert into department (Department_Name) values ('Product Management');
insert into department (Department_Name) values ('Human Resources');


-- INSERT Data Employee

insert into Employee (Employee_Name, Department_Number) values ('Mardlin', 1);
insert into Employee (Employee_Name, Department_Number) values ('MacKaig', 2);
insert into Employee (Employee_Name, Department_Number) values ('Godbehere', 3);
insert into Employee (Employee_Name, Department_Number) values ('Darwood', 4);
insert into Employee (Employee_Name, Department_Number) values ('Rollings', 5);
insert into Employee (Employee_Name, Department_Number) values ('Dunseath', 6);
insert into Employee (Employee_Name, Department_Number) values ('Nairy', 7);
insert into Employee (Employee_Name, Department_Number) values ('Drivers', 8);
insert into Employee (Employee_Name, Department_Number) values ('Bleddon', 9);
insert into Employee (Employee_Name, Department_Number) values ('Verrick', 10);
insert into Employee (Employee_Name, Department_Number) values ('Oade', 9);
insert into Employee (Employee_Name, Department_Number) values ('Roback', 7);
insert into Employee (Employee_Name, Department_Number) values ('Postans', 6);
insert into Employee (Employee_Name, Department_Number) values ('Sansbury', 5);
insert into Employee (Employee_Name, Department_Number) values ('Jacobowitz', 4);
insert into Employee (Employee_Name, Department_Number) values ('Esposi', 3);
insert into Employee (Employee_Name, Department_Number) values ('Eddowis', 2);
insert into Employee (Employee_Name, Department_Number) values ('Synan', 1);
insert into Employee (Employee_Name, Department_Number) values ('Tupling', 1);
insert into Employee (Employee_Name, Department_Number) values ('Nathon', 2);
insert into Employee (Employee_Name, Department_Number) values ('Aimeric', 1);
insert into Employee (Employee_Name, Department_Number) values ('Agdahl', 2);
insert into Employee (Employee_Name, Department_Number) values ('Ginnally', 3);
insert into Employee (Employee_Name, Department_Number) values ('Soutter', 4);
insert into Employee (Employee_Name, Department_Number) values ('Rackam', 5);
insert into Employee (Employee_Name, Department_Number) values ('Caulwell', 6);
insert into Employee (Employee_Name, Department_Number) values ('Skillicorn', 7);
insert into Employee (Employee_Name, Department_Number) values ('Philipet', 8);
insert into Employee (Employee_Name, Department_Number) values ('Kersaw', 9);
insert into Employee (Employee_Name, Department_Number) values ('Sheppard', 3);
insert into Employee (Employee_Name, Department_Number) values ('Bhatia', 3);
insert into Employee (Employee_Name, Department_Number) values ('Reek', 2);
insert into Employee (Employee_Name, Department_Number) values ('Pasfield', 3);
insert into Employee (Employee_Name, Department_Number) values ('Riccardo', 4);
insert into Employee (Employee_Name, Department_Number) values ('Lafoy', 5);
insert into Employee (Employee_Name, Department_Number) values ('Reiner', 6);
insert into Employee (Employee_Name, Department_Number) values ('Muttitt', 7);
insert into Employee (Employee_Name, Department_Number) values ('Latimer', 8);
insert into Employee (Employee_Name, Department_Number) values ('Keach', 9);
insert into Employee (Employee_Name, Department_Number) values ('Karpinski', 4);
insert into Employee (Employee_Name, Department_Number) values ('Hacket', 4);
insert into Employee (Employee_Name, Department_Number) values ('Spenclay', 2);
insert into Employee (Employee_Name, Department_Number) values ('Nasey', 3);
insert into Employee (Employee_Name, Department_Number) values ('Joffe', 4);
insert into Employee (Employee_Name, Department_Number) values ('Klosterman', 5);
insert into Employee (Employee_Name, Department_Number) values ('Dory', 6);
insert into Employee (Employee_Name, Department_Number) values ('Congreave',7);
insert into Employee (Employee_Name, Department_Number) values ('Wraight', 8);
insert into Employee (Employee_Name, Department_Number) values ('Annies', 9);
insert into Employee (Employee_Name, Department_Number) values ('McCard', 5);

-- INSERT Data Skill

INSERT INTO Skill (Skill_Name )
VALUES ('SQL' ),
('Java' ),
('C++'),
('Pyton'),
('HTML'),
('C#');
-- INSERT Data Employee_Skill

insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (1, 1, '2020-10-01');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (2, 2, '2020-08-09');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (3, 3, '2021-02-19');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (4, 4, '2021-01-31');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (5, 5, '2021-03-28');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (6, 6, '2021-02-21');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (7, 5, '2021-04-13');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (8, 4, '2020-09-06');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (9, 2, '2020-11-11');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (10, 1, '2021-04-18');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (11, 3, '2020-06-29');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (12, 2, '2020-10-31');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (13, 3, '2020-10-05');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (14, 4, '2020-06-08');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (15, 5, '2021-01-19');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (16, 6, '2020-12-16');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (17, 1, '2020-09-30');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (18, 1, '2021-02-19');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (19, 2, '2021-02-10');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (20, 2, '2020-07-27');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (21, 3, '2020-10-22');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (22, 2, '2020-12-16');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (23, 3, '2021-03-06');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (24, 4, '2020-09-04');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (25, 5, '2020-09-03');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (26, 6, '2020-11-16');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (27, 4, '2021-03-05');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (28, 5, '2020-11-07');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (29, 6, '2021-03-24');
insert into Employee_Skill (Employee_Number, Skill_Number, Date_Registered) values (30, 3, '2020-10-21');


------------------------------------------------------------------------------------------------------------------------ 

-- Question 3: Viết lệnh để lấy ra danh sách nhân viên (name) có skill Java

SELECT 	e.Employee_Name, sk.Skill_Name
FROM  	Employee e
JOIN 	Employee_Skill es ON e.Employee_Number = es.Employee_Number
JOIN 	Skill sk ON es.Skill_Number = sk.Skill_Number
WHERE 	sk.Skill_Name = 'Java';

-- -- Question 4: Viết lệnh để lấy ra danh sách các phòng ban có >3 nhân viên

SELECT 		d.Department_Name,COUNT(e.Department_Number) AS 'TONG SO'
FROM 		Department d
JOIN		Employee e ON d.Department_Number = e.Department_Number
GROUP BY 	e.Department_Number
HAVING		COUNT(e.Department_Number) > 3;

-- Question 5: Viết lệnh để lấy ra danh sách nhân viên của mỗi văn phòng ban.
-- Hướng dẫn: sử dụng GROUP BY

SELECT 		e.Employee_Name,d.Department_Name
FROM 		Department d
JOIN		Employee e ON d.Department_Number = e.Department_Number
GROUP BY	e.Employee_Name;

-- -- Question 6: Viết lệnh để lấy ra danh sách nhân viên có > 1 skills.
-- Hướng dẫn: sử dụng DISTINCT

SELECT 		e.Employee_Name,sk.Skill_Name, COUNT(*) AS 'TONG SO'
FROM  		Employee e
JOIN 		Employee_Skill es ON e.Employee_Number = es.Employee_Number
JOIN 		Skill sk ON es.Skill_Number = sk.Skill_Number
GROUP BY 	e.Employee_Number
HAVING 		COUNT(*) > 1;
