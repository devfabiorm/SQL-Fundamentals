-- SQL COMMAND TO CREATE A TABLE
USE [Curso]

CREATE TABLE [Aluno] (
    [Id] INT,
    [Nome] NVARCHAR(80),
    [Nascimento] DATETIME,
    [Active] BIT
)
GO

-- SQL COMMAND TO ALTER A TABLE ADDING A COLLUMN
ALTER TABLE [Aluno]
    ADD [Document] nvarchar(11)

-- SQL COMMAND TO ALTER A TABLE REMOVING A COLUMN
ALTER TABLE [Aluno]
    DROP COLUMN [Document]

-- SQL COMMAND TO ALTER A TABLE REMOVING A COLUMN
ALTER TABLE [Aluno]
    ALTER COLUMN [Document] CHAR(11)

--SQL COMMAND TO REMOVE A TABLE
DROP TABLE [Aluno]