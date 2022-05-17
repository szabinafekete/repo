CREATE DATABASE [AtletikaDB]
GO

USE [AtletikaDB]
GO


CREATE TABLE [Helyszin]
(
	[helyID] INT NOT NULL PRIMARY KEY IDENTITY,
	[ev] INT,
	[orszag] NVARCHAR(20),
	[varos] NVARCHAR(20)
)

CREATE TABLE [Versenyzo]
(
	[versID] INT NOT NULL PRIMARY KEY IDENTITY,
	[nev] NVARCHAR(20),
	[neme] BIT
);

CREATE TABLE [Eredmenyek]
(
	[helyID] INT NOT NULL, 
	[versID] INT NOT NULL, 
	[Vsenyszam] NVARCHAR(20),
	[helyezes] INT,
	PRIMARY KEY ([helyID], [versID]),
    CONSTRAINT fk_helyszin FOREIGN KEY ([helyID]) REFERENCES [helyszin] ([helyID]),
    CONSTRAINT fk_versenyzo FOREIGN KEY ([versID]) REFERENCES [versenyzo] ([versID])
);
