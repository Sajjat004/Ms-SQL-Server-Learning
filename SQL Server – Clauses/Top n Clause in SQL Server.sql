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

--Insert data into Employee table
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

-- Select ID, Name, EmailId, Gender, City, Department of top 3 employees whose gender is male order by Id
SELECT TOP(3)
    [ID],
    [Name],
    [EmailID],
    [Gender],
    [City],
    [Department]
FROM [dbo].[Employee]
WHERE [Gender] = 'Male'
ORDER BY [ID]
GO

-- Select ID, Name, EmailId, Gender, City, Department of top 3 percent employees whose gender is male order by Id
SELECT TOP(70) PERCENT
    [ID],
    [Name],
    [EmailID],
    [Gender],
    [City],
    [Department]
FROM [dbo].[Employee]
WHERE [Gender] = 'Male'
ORDER BY [ID]
GO