-- Create TestDatabase
CREATE DATABASE TestDatabase;
GO

-- Create Teams table
CREATE TABLE Teams (
    TeamID INT PRIMARY KEY,
    TeamName VARCHAR(50) NOT NULL
);
GO

-- Create Players table
CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    TeamID INT FOREIGN KEY REFERENCES Teams(TeamID)
);
GO

-- Insert data into Teams table
INSERT INTO Teams (TeamID, TeamName) VALUES
(1, 'Argentina'),
(2, 'Brazil');
GO

-- Insert data into Teams table
INSERT INTO Teams (TeamID, TeamName) VALUES
(3, 'Spain'),
(4, 'France');
GO

-- Insert data into Players table
INSERT INTO Players (PlayerID, FirstName, LastName, TeamID) VALUES
(101, 'Di', 'Maria', 1),
(102, 'Leonel', 'Messi', 1),
(103, 'Roberto', 'Carlos', 2),
(104, 'Thiago', 'Silva', 2),
(105, 'Kepa', 'Arrizabalaga', 3),
(106, 'Marco', 'Asensio', 3),
(107, 'Brice', 'Samba', 4),
(108, 'Ferland', 'Mendy', 4);
GO

-- Retrieve data using a simple join
SELECT Players.PlayerID, Players.FirstName, Players.LastName, Teams.TeamName
FROM Players
JOIN Teams ON Players.TeamID = Teams.TeamID;

