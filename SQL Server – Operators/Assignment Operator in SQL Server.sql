-- Assignment Operator in SQL Server
DECLARE @MyVariable INT;
SET @MyVariable = 10;

SELECT @MyVariable AS MyVariable
Go

-- Compund Assignment Operator in SQL Server
DECLARE @MyVariable INT;
SET @MyVariable = 10;
SET @MyVariable += 5;

SELECT @MyVariable AS MyVariable
Go