-- Create Employee table
CREATE TABLE [dbo].[Employee]
(
    [ID] INT PRIMARY KEY IDENTITY(1,1),
    [Name] VARCHAR(100) NOT NULL,
    [EmailID] VARCHAR(100) UNIQUE NOT NULL,
    [Gender] VARCHAR(50) NOT NULL,
    [Department] VARCHAR(100) NOT NULL,
    [Salary] INT CHECK ([Salary] > 0),
    [Age] INT CHECK ([Age] > 18),
    [City] VARCHAR(100) NOT NULL
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

-- BETWEEN Operator in SQL Server
SELECT *
FROM [dbo].[Employee]
WHERE [ID] BETWEEN 3 AND 7
GO

-- NOT BETWEEN Operator in SQL Server
SELECT *
FROM [dbo].[Employee]
WHERE [ID] NOT BETWEEN 3 AND 7
GO

-- IN Operator in SQL Server
SELECT *
FROM [dbo].[Employee]
WHERE [Department] IN ('HR', 'IT')
GO

-- NOT IN Operator in SQL Server
SELECT *
FROM [dbo].[Employee]
WHERE [Department] NOT IN ('HR', 'IT')
GO

-- LIKE Operator in SQL Server
SELECT *
FROM [dbo].[Employee]
WHERE [Name] LIKE 'P%'
GO

-- NOT LIKE Operator in SQL Server
SELECT *
FROM [dbo].[Employee]
WHERE [Name] NOT LIKE 'P%'
GO

-- Like operators
-- % - Represents zero or more characters
-- _ - Represents a single character
-- [] - Represents any single character within the specified range ([a-f]) or set ([abcdef])
-- [^] - Represents any single character not within the specified range ([^a-f]) or set ([^abcdef])
-- [!], [^] - Represents any single character not within the specified range ([!a-f]) or set ([!abcdef])
-- [^a-f] - Represents any single character not within the specified range (a to f)
-- [a-f] - Represents any single character within the specified range (a to f)
-- [abcdef] - Represents any single character within the specified set (a, b, c, d, e, f)
-- [!a-f] - Represents any single character not within the specified range (a to f)
-- [!abcdef] - Represents any single character not within the specified set (a, b, c, d, e, f)
-- [a-fA-F] - Represents any single character within the specified range (a to f or A to F)
-- [abcdefABCDEF] - Represents any single character within the specified set (a, b, c, d, e, f, A, B, C, D, E, F)
-- [!a-fA-F] - Represents any single character not within the specified range (a to f or A to F)
-- [!abcdefABCDEF] - Represents any single character not within the specified set (a, b, c, d, e, f, A, B, C, D, E, F)
-- [a-f, A-F] - Represents any single character within the specified range (a to f or A to F)
-- [abcdef, ABCDEF] - Represents any single character within the specified set (a, b, c, d, e, f, A, B, C, D, E, F)
-- [!a-f, A-F] - Represents any single character not within the specified range (a to f or A to F)
-- [!abcdef, ABCDEF] - Represents any single character not within the specified set (a, b, c, d, e, f, A, B, C, D, E, F)
-- [a-f, A-F, 0-9] - Represents any single character within the specified range (a to f or A to F or 0 to 9)
-- [abcdef, ABCDEF, 0123456789] - Represents any single character within the specified set (a, b, c, d, e, f, A, B, C, D, E, F, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
-- [!a-f, A-F, 0-9] - Represents any single character not within the specified range (a to f or A to F or 0 to 9)

