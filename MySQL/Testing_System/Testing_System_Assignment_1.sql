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

	
	

