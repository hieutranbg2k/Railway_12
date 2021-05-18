DROP DATABASE IF EXISTS TestingSystem2;
CREATE DATABASE TestingSystem2;
USE TestingSystem2;

CREATE TABLE Department(
	DepartmentID		MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    DepartmentName		NVARCHAR(50) NOT NULL UNIQUE KEY
);

CREATE TABLE `Position`(
	PositionID			MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    PositionName		ENUM('Dev', 'test', 'scrum Master', 'PM') NOT NULL UNIQUE KEY
);

CREATE TABLE `Account`(
	AccountID			MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Email				NVARCHAR(50) NOT NULL UNIQUE KEY,
    Username			NVARCHAR(50) NOT NULL UNIQUE KEY,
    FullName			NVARCHAR(50) NOT NULL UNIQUE KEY,
    DepartmentID		MEDIUMINT UNSIGNED,
    PositionID			MEDIUMINT UNSIGNED,
    CreateDate			DATETIME DEFAULT NOW(),
    FOREIGN KEY(DepartmentID) REFERENCES Department (DepartmentID),
	FOREIGN KEY(PositionID) REFERENCES `Position` (PositionID)
   
    
    
    
);

CREATE TABLE `Group`(
	GroupID 			MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    GroupName			NVARCHAR(50) NOT NULL UNIQUE KEY,
    CreatorID			MEDIUMINT UNSIGNED,
    CreateDate			DATETIME DEFAULT NOW(),
    FOREIGN KEY (CreatorID) REFERENCES `Account`(AccountID)
    
    
    
    
);

CREATE TABLE GroupAccount(
	GroupID 			MEDIUMINT UNSIGNED  ,
    AccountID			MEDIUMINT UNSIGNED  ,
    JoinDate			DATETIME DEFAULT NOW(),
    FOREIGN KEY (AccountID) REFERENCES `Account` (AccountID),
    FOREIGN KEY(GroupID) REFERENCES `Group`(GroupID),
    PRIMARY KEY (GroupID,AccountID)
    
);

CREATE TABLE TypeQuestion(
	TypeID				MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    TypeName			NVARCHAR(50) NOT NULL UNIQUE KEY
    
);
    
CREATE TABLE CategoryQuestion(
	CategoryID 			MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    CategoryName		NVARCHAR(50) NOT NULL UNIQUE KEY
);
    
CREATE TABLE Question(
	QuestionID			MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    Content				NVARCHAR(50) NOT NULL UNIQUE KEY,
    CategoryID			MEDIUMINT UNSIGNED ,
	TypeID 				MEDIUMINT UNSIGNED ,
	CreatorID			MEDIUMINT UNSIGNED ,
	CreateDate			DATETIME DEFAULT NOW(),
    FOREIGN KEY(CategoryID) REFERENCES CategoryQuestion(CategoryID),
    FOREIGN KEY(TypeID) REFERENCES TypeQuestion(TypeID),
    FOREIGN KEY(CreatorID) REFERENCES `Account`(AccountID)
    
    
);

CREATE TABLE Answer(
	AnswerID			MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Content				NVARCHAR(50) NOT NULL UNIQUE KEY,
	QuestionID			MEDIUMINT UNSIGNED ,
	isCorrect			BIT,
    FOREIGN KEY(QuestionID) REFERENCES Question(QuestionID)
);

CREATE TABLE Exam(
	ExamID				MEDIUMINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `Code`				Char(5),
    Title				NVARCHAR(100) NOT NULL UNIQUE KEY,
    CategoryID			MEDIUMINT UNSIGNED ,
    Duration			MEDIUMINT UNSIGNED  ,
    CreatorID			MEDIUMINT UNSIGNED  ,
    CreateDate 			DATETIME DEFAULT NOW(),
    FOREIGN KEY(CategoryID) REFERENCES Question (CategoryID),
    FOREIGN KEY(CreatorID) REFERENCES `Account`(AccountID)
    
    
    
);

CREATE TABLE ExamQuestion(
	ExamID			MEDIUMINT UNSIGNED , 
    QuestionID		MEDIUMINT UNSIGNED ,
    PRIMARY KEY(ExamID,QuestionID),
    FOREIGN KEY(ExamID) REFERENCES Exam(ExamID),
    FOREIGN KEY(QuestionID) REFERENCES Question(QuestionID)
);

INSERT INTO Department (DepartmentName)
VALUES	( 'DEV'),
		('SALE'),
        ('MKT');

INSERT into  `Position` ( PositionName)
VALUES  	('dev'),
			('Test'),
			('scrum Master'),
			('PM');
        
INSERT INTO `Account` ( Email,Username,FullName,DepartmentID,PositionID)
VALUES	('hieutranbg2k@gmail.com','hieuvc','tran trung hieu',1,1),
		('hieutranbg3k@gmail.com','hieuac','nguyen trung hieu',2,3),
        ('hieutranbg4k@gmail.com','hieubc','le dang hieu',3,4),
        ('hieutranbg5k@gmail.com','hieudc','phung dang hieu',2,4),
        ('hieutranbg6k@gmail.com','hieuec','cao dang hieu',2,3);


UPDATE Department
SET 		DepartmentName = 'MKT22222'
WHERE DepartmentID = 3;

DELETE From `Account` WHERE username= 'hieuec';










    



	
	

