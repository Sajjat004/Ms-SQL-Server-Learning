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
INSERT INTO Employee VALUES('MANOJ','MANOJ@G.COM','Male','HR', 30000, 28,'ODISHA')
INSERT INTO Employee VALUES('SWAPNA','SWAPNA@G.COM','Female', 'Payroll', 28000, 27,'MUMBAI')
INSERT INTO Employee VALUES('LIMA','LIMA@G.COM','Female','HR', 30000, 30,'BANGALORE')
INSERT INTO Employee VALUES('DIPAK','DIPAK@G.COM','Male','Payroll', 32000, 25,'BANGALORE')
GO

-- Find the total employees as TotalEmployee
SELECT
    COUNT(*) AS TotalEmployee
FROM
    [dbo].[Employee]
GO

-- Find the total employees working in each department in the company
SELECT
    [Department],
    COUNT(*) AS TotalEmployee
FROM
    [dbo].[Employee]
GROUP BY
    [Department]
GO

-- Find the total salary of each department in the company
SELECT
    [Department],
    SUM([Salary]) AS TotalSalary
FROM
    [dbo].[Employee]
GROUP BY
    [Department]
GO

-- Find the heighest salary of each department in the company
SELECT
    [Department],
    MAX([Salary]) AS MaxSalary
FROM
    [dbo].[Employee]
GROUP BY
    [Department]
GO

-- Find the number of employees working in each Gender per department.
SELECT
    [Department],
    [Gender],
    COUNT(*) AS TotalEmployee
FROM
    [dbo].[Employee]
GROUP BY
    [Department],
    [Gender]
ORDER BY
    [Department]
GO

-- Find the highest salary for the organization.
SELECT
    MAX([Salary]) AS HighestSalary
FROM
    [dbo].[Employee]
GO

-- Find total salaries and the total number of employees by City, and by gender.
SELECT
    [City],
    [Gender],
    SUM([Salary]) AS TotalSalary,
    COUNT(Id) AS TotalEmployee
FROM
    [dbo].[Employee]
GROUP BY
    [City],
    [Gender]
GO