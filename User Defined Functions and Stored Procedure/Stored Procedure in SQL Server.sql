-- Create stored procedure to display a welcome message
CREATE PROCEDURE [dbo].[spDisplayWelcome]
AS
BEGIN
    PRINT 'WELCOME TO PROCEDURE in SQL Server'
END
GO

-- Execute stored procedure
EXECUTE [dbo].[spDisplayWelcome] -- OR EXEC [dbo].[spDisplayWelcome]
GO

-- Create Employee Table
CREATE TABLE [dbo].[Employee]
(
    [ID] INT PRIMARY KEY,
    [Name] VARCHAR(50),
    [Gender] VARCHAR(50),
    [DOB] DATETIME,
    [DeptID] INT
)
GO

-- Insert test data into Employee table
INSERT INTO [dbo].[Employee] VALUES (1, 'Pranaya', 'Male', '1996-02-29 10:53:27.060', 1)
INSERT INTO [dbo].[Employee] VALUES (2, 'Priyanka', 'Female', '1995-05-25 10:53:27.060', 2)
INSERT INTO [dbo].[Employee] VALUES (3, 'Anurag', 'Male', '1995-04-19 10:53:27.060', 2)
INSERT INTO [dbo].[Employee] VALUES (4, 'Preety', 'Female', '1996-03-17 10:53:27.060', 3)
INSERT INTO [dbo].[Employee] VALUES (5, 'Sambit', 'Male', '1997-01-15 10:53:27.060', 1)
INSERT INTO [dbo].[Employee] VALUES (6, 'Hina', 'Female', '1995-07-12 10:53:27.060', 2)
GO

-- Create stored procedure to display employee details
CREATE PROCEDURE [dbo].[spGetEmployee]
AS
BEGIN
    SELECT * FROM [dbo].[Employee]
END
GO

-- Execute stored procedure
EXEC [dbo].[spGetEmployee]
GO

-- view stored procedure
sp_helptext [dbo].[spGetEmployee]

-- Drop stored procedure
DROP PROCEDURE [dbo].[spGetEmployee]

-- Alter stored procedure
ALTER PROCEDURE [dbo].[spDisplayWelcome]
AS
BEGIN
    PRINT 'WELCOME TO PROCEDURE in SQL Server 2019 ALTERED'
END

-- Create stored procedure to calculate sum
CREATE PROCEDURE spGetResult
  @No1 INT,
  @No2 INT,
  @Result INT OUTPUT
AS
BEGIN
  SET @Result = @No1 + @No2;
END
GO

-- Execute stored procedure
DECLARE @Result INT
DECLARE @No1 INT = 10
DECLARE @No2 INT = 20
EXEC spGetResult @No1, @No2, @Result OUTPUT
SELECT @Result AS 'Sum'
GO