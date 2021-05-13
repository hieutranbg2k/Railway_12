DROP DATABASE IF EXISTS TestingSystem;
CREATE DATABASE TestingSystem;
USE TestingSystem;

CREATE TABLE Department(
	DepartmentID		INT,
    DepartmentName		VARCHAR(50)
);

CREATE TABLE `Position`(
	PositionID			INT,
    PositionName		VARCHAR(50)
);

CREATE TABLE `Account`(
	AccountID			INT,
    Email				VARCHAR(50),
    Username			VARCHAR(50),
    FullName			VARCHAR(50),
    DepartmentID		INT,
    PositionID			INT,
    CreateDate			DATE
);

CREATE TABLE `Group`(
	GroupID 			INT,
    GroupName			VARCHAR(50),  
    CreatorID			INT,
    CreateDate			DATE
);

CREATE TABLE GroupAccount(
	GroupID 			INT,
    AccountID			INT,
    JoinDate			DATE
);

CREATE TABLE TypeQuestion(
	TypeID				INT,
    TypeName			VARCHAR(50)
);
    
CREATE TABLE CategoryQuestion(
	CategoryID 			INT,
    CategoryName		VARCHAR(50)
);
    
CREATE TABLE Question(
	QuestionID			INT,
    Content				VARCHAR(50),
    CategoryID			INT,
	TypeID 				INT,
	CreatorID			INT,
	CreateDate			DATE
);

CREATE TABLE Answer(
	AnswerID			INT,
	Content				VARCHAR(50),
	QuestionID			INT,
	isCorrect			VARCHAR(50)
);

CREATE TABLE Exam(
	ExamID				INT,
    `Code`				VARCHAR(50),
    Title				VARCHAR(100),
    CategoryID			INT,
    Duration			INT,
    CreatorID			INT,
    CreateDate 			DATE
    
);

CREATE TABLE ExamQuestion(
	ExamID			INT,
    QuestionID		INT
);






    



	
	

