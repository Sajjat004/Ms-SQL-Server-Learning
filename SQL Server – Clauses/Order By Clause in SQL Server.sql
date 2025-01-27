-- Create Employee table
CREATE TABLE [dbo].[Employee]
(
  [ID] INT PRIMARY KEY IDENTITY(1,1),
  [Name] VARCHAR(100),
  [EmailID] VARCHAR(100),
  [Gender] VARCHAR(100),
  [Department] VARCHAR(100),
  [Salary] INT,
  [Age] INT,
  [City] VARCHAR(100)
)
GO


--Insert some test data into Person table
INSERT INTO Employee VALUES('PRANAYA','PRANAYA@G.COM','Male', 'IT', 25000, 30,'MUMBAI')
INSERT INTO Employee VALUES('TARUN','TARUN@G.COM','Male', 'Payroll', 30000, 27,'ODISHA')
INSERT INTO Employee VALUES('PRIYANKA','PRIYANKA@G.COM','Female', 'IT', 27000, 25,'BANGALORE')
INSERT INTO Employee VALUES('PREETY','PREETY@G.COM','Female', 'HR', 35000, 26,'BANGALORE')
INSERT INTO Employee VALUES('RAMESH','RAMESH@G.COM','Male','IT', 26000, 27,'MUMBAI')
INSERT INTO Employee VALUES('PRAMOD','PRAMOD@G.COM','Male','HR', 29000, 28,'ODISHA')
INSERT INTO Employee VALUES('ANURAG','ANURAG@G.COM','Male', 'Payroll', 27000, 26,'ODISHA')
INSERT INTO Employee VALUES('HINA','HINA@G.COM','Female','HR', 26000, 30,'MUMBAI')
INSERT INTO Employee VALUES('SAMBIT','HINA@G.COM','Male','Payroll', 30000, 25,'ODISHA')
GO

-- Select employee by sorting with name
SELECT *
FROM [dbo].[Employee]
ORDER BY [Name] ASC -- For descending order use DESC
GO

-- Select the male employees and sort the result in descending order of name
SELECT *
FROM [dbo].[Employee]
WHERE [Gender] = 'Male'
ORDER BY [Name] DESC
GO

-- Select Name, Gender, EmailId, Salary of employees whose salary is greater than 25000 and sort the result by Gender in descending order and Name in ascending order.
SELECT
    [Name],
    [Gender],
    [EmailID],
    [Salary]
FROM
    [dbo].[Employee]
WHERE
    [Salary] > 25000
ORDER BY
    [Gender] DESC,
    [Name] ASC
GO
