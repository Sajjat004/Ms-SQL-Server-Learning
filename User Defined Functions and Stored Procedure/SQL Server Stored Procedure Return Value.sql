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

-- Populate the Employee Table with test data
INSERT INTO [dbo].[Employee] ([ID], [Name], [Gender], [DOB], [DeptID])
VALUES 
  (1, 'Pranaya', 'Male', '1996-02-29 10:53:27.060', 1),
  (2, 'Priyanka', 'Female', '1995-05-25 10:53:27.060', 2),
  (3, 'Anurag', 'Male', '1995-04-19 10:53:27.060', 2),
  (4, 'Preety', 'Female', '1996-03-17 10:53:27.060', 3),
  (5, 'Sambit', 'Male', '1997-01-15 10:53:27.060', 1),
  (6, 'Hina', 'Female', '1995-07-12 10:53:27.060', 2);
GO

-- Create stored precedure to get total employee count
CREATE PROCEDURE [dbo].[spGetEmployeeCount]
  @TotalCount INT OUTPUT
AS
BEGIN
  SELECT @TotalCount = COUNT(*) FROM [dbo].[Employee]
END
GO

-- Execute stored procedure
DECLARE @TotalCount INT
EXEC [dbo].[spGetEmployeeCount] @TotalCount OUTPUT
SELECT @TotalCount AS 'Total Employee Count'
GO

-- Create 
