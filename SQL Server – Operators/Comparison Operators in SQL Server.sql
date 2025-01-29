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
('Pranaya', 'Pranaya@g.com', 'Male', 'IT', 25000, 30, 'Mumbai'),
('Tarun', 'Tarun@g.com', 'Male', 'Payroll', 30000, 27, 'Odisha'),
('Priyanka', 'Priyanka@g.com', 'Female', 'IT', 27000, 25, 'Bangalore'),
('Preety', 'Preety@g.com', 'Female', 'HR', 35000, 26, 'Bangalore'),
('Ramesh', 'Ramesh@g.com', 'Male', 'IT', 26000, 27, 'Mumbai'),
('Pramod', 'Pramod@g.com', 'Male', 'HR', 29000, 28, 'Odisha'),
('Anurag', 'Anurag@g.com', 'Male', 'Payroll', 27000, 26, 'Odisha'),
('Hina', 'Hina@g.com', 'Female', 'HR', 26000, 30, 'Mumbai'),
('Sambit', 'Sambit@g.com', 'Male', 'Payroll', 30000, 25, 'Odisha'),
('Manoj', 'Manoj@g.com', 'Male', 'HR', 30000, 28, 'Odisha'),
('Sara', 'Sara@g.com', 'Female', 'Payroll', 28000, 27, 'Mumbai'),
('Lima', 'Lima@g.com', 'Female', 'HR', 30000, 30, 'Bangalore'),
('Dipak', 'Dipak@g.com', 'Male', 'Payroll', 32000, 25, 'Bangalore')
GO

-- Comparison Operators in SQL Server
SELECT
    [ID],
    [Name],
    [Department],
    [Salary],
    CASE
        WHEN [Salary] > 30000 THEN 'High Salary'
        WHEN [Salary] > 25000 THEN 'Average Salary'
        ELSE 'Low Salary'
    END AS [SalaryCategory]
FROM
    [dbo].[Employee]
GO