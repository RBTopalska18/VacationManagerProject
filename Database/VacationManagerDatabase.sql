USE master
GO

CREATE DATABASE [Vacation Manager]
GO

USE [Vacation Manager]

CREATE TABLE [Roles]
(
	RoleId  INT PRIMARY KEY NOT NULL,
	RoleName VARCHAR(250) NOT NULL
);

CREATE TABLE Users
(
	UserId INT PRIMARY KEY NOT NULL,
	Username VARCHAR(255) NOT NULL,
	[Password] VARCHAR(255) NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	RoleId INT NULL,
	FOREIGN KEY (RoleId) REFERENCES Roles(RoleId)
);

CREATE TABLE Teams
(
	TeamId INT NOT NULL PRIMARY KEY,
	TeamName VARCHAR(255) NULL,
	UserId INT NOT NULL, --Leader
	FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

CREATE TABLE Projects
(
	ProjectId INT PRIMARY KEY NOT NULL,
	ProjectName VARCHAR(255) NULL,
);

CREATE TABLE UsersTeams
(
   UserTeamId INT NOT NULL PRIMARY KEY,
   UserId INT NOT NULL,
   TeamId INT NOT NULL,
   FOREIGN KEY (UserId) REFERENCES Users(UserId),
   FOREIGN KEY (TeamId) REFERENCES Teams(TeamId)
);

CREATE TABLE TeamsProjects
(
   TeamProjectId INT NOT NULL PRIMARY KEY,
   TeamId INT NOT NULL,
   ProjectId INT NOT NULL,
   FOREIGN KEY (TeamId) REFERENCES Teams(TeamId),
   FOREIGN KEY (ProjectId) REFERENCES Projects(ProjectId)
);

CREATE TABLE Vacations
(
	VacationId INT NOT NULL PRIMARY KEY,
	DateFrom DATE NULL,
	DateTo DATE NULL,
	DateNow DATETIME DEFAULT CURRENT_TIMESTAMP,
	HalfADay VARCHAR(10) NOT NULL,
	Approved VARCHAR(10) NOT NULL,
	UserId INT NOT NULL,
	FOREIGN KEY (UserId) REFERENCES Users(UserId)
);

