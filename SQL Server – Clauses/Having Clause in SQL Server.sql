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

-- Insert test data into Employee table
INSERT INTO [dbo].[Employee] ([Name], [EmailID], [Gender], [Department], [Salary], [Age], [City]) 
VALUES 
('PRANAYA', 'PRANAYA@G.COM', 'Male', 'IT', 25000, 30, 'MUMBAI'),
('TARUN', 'TARUN@G.COM', 'Male', 'Payroll', 30000, 27, 'ODISHA'),
('PRIYANKA', 'PRIYANKA@G.COM', 'Female', 'IT', 27000, 25, 'BANGALORE'),
('PREETY', 'PREETY@G.COM', 'Female', 'HR', 35000, 26, 'BANGALORE'),
('RAMESH', 'RAMESH@G.COM', 'Male', 'IT', 26000, 27, 'MUMBAI'),
('PRAMOD', 'PRAMOD@G.COM', 'Male', 'HR', 29000, 28, 'ODISHA'),
('ANURAG', 'ANURAG@G.COM', 'Male', 'Payroll', 27000, 26, 'ODISHA'),
('HINA', 'HINA@G.COM', 'Female', 'HR', 26000, 30, 'MUMBAI'),
('SAMBIT', 'HINA@G.COM', 'Male', 'Payroll', 30000, 25, 'ODISHA'),
('MANOJ', 'MANOJ@G.COM', 'Male', 'HR', 30000, 28, 'ODISHA'),
('SWAPNA', 'SWAPNA@G.COM', 'Female', 'Payroll', 28000, 27, 'MUMBAI'),
('LIMA', 'LIMA@G.COM', 'Female', 'HR', 30000, 30, 'BANGALORE'),
('DIPAK', 'DIPAK@G.COM', 'Male', 'Payroll', 32000, 25, 'BANGALORE')
GO

-- Filter rows using Where clause
SELECT 
    City,
    SUM([Salary]) AS TotalSalary
FROM
    [dbo].[Employee]
WHERE
    [City] = 'MUMBAI'
GROUP BY
    [City]
GO

-- Filter rows using Having clause
SELECT 
    City,
    SUM([Salary]) AS TotalSalary
FROM
    [dbo].[Employee]
GROUP BY
    [City]
HAVING
    City = 'MUMBAI'
GO

-- Filter rows using Where and Having clause
SELECT 
    City,
    SUM([Salary]) AS TotalSalary
FROM
    [dbo].[Employee]
WHERE
    [Gender] = 'Male'
GROUP BY
    [City]
HAVING
    [City] = 'MUMBAI'
GO

-- Find the total salary of each department in the company whose total salary is greater than 80000
SELECT
    [Department],
    SUM([Salary]) AS TotalSalary
FROM
    [dbo].[Employee]
GROUP BY
    [Department]
HAVING
    SUM([Salary]) > 80000
GO

-- Note: The HAVING clause is used to filter the result set based on the aggregate values. It is used in combination with the GROUP BY clause to filter the groups that are returned by the GROUP BY clause. The HAVING clause is applied after the GROUP BY clause and before the ORDER BY clause. So, the Having Clause in SQL Server is an additional filter that is applied to the result set. Logically, the having clause filters the rows from the intermediate result set that is built by using the FROM, WHERE, or GROUP BY clauses in the SELECT statement.