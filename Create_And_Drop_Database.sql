-- SQL COMMAND TO CREATE A DATABASE
CREATE DATABASE [Curso]

-- SQL SCRIPT TO KILL PROCESS BEING EXECUTED
USE [master]

DECLARE @kill varchar(8000) = '';
SELECT @kill = @kill + 'kill ' + CONVERT(varchar(5), session_id)
FROM sys.dm_exec_sessions
WHERE database_id = DB_ID('Cursos')

EXEC(@kill);

-- SQL COMMAND TO DELETE A DATABASE
DROP DATABASE [Cursos]