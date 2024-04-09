CREATE TABLE Users 
(
  Id int PRIMARY KEY IDENTITY,
  Name nvarchar(20),
  Surname nvarchar(20),
  Age int,
  Email nvarchar(20),
  IsDeleted int,
)

CREATE TABLE Teachers 
(
  Id int PRIMARY KEY IDENTITY,
  FullName nvarchar(255),
  Age int,
  Email nvarchar(20),
  Address nvarchar(30),
  IsDeleted int,
)

CREATE TABLE Educations 
(
  Id int PRIMARY KEY IDENTITY,
  Name nvarchar(20),
  TeacherId int FOREIGN KEY REFERENCES Teachers(Id)
)

CREATE TABLE UsersEducationId
(
  Id int PRIMARY KEY IDENTITY,
  StudentId int FOREIGN KEY REFERENCES Users(Id),
  EducationId int FOREIGN KEY REFERENCES Educations(Id),
)

SELECT * FROM Users

SELECT * FROM Users WHERE Age > 20

SELECT Id FROM Users WHERE IsDeleted=0

SELECT FullName, Age, Address FROM Teachers WHERE IsDeleted=1

SELECT * FROM Teachers WHERE Age > 30

CREATE TABLE Employees
(
  Id int PRIMARY KEY IDENTITY,
  FullName nvarchar(255) NOT NULL,
  Age int NOT NULL,
  CHECK (Age >0),
  Email nvarchar(40) NOT NULL UNIQUE,
  Salary decimal NOT NULL,
  CHECK (Salary > 300 AND Salary < 2000)
)