-- Create EmployeeIndia table
CREATE TABLE [dbo].[EmployeeIndia]
(
    [ID] INT PRIMARY KEY,
    [Name] VARCHAR(50) NOT NULL,
    [Gender] VARCHAR(10) NOT NULL,
    [Department] VARCHAR(50) NOT NULL
)
GO

-- Insert rows into EmployeeIndia table
INSERT INTO [dbo].[EmployeeIndia] ([ID], [Name], [Gender], [Department]) 
VALUES 
    (1, 'Pranaya', 'Male', 'IT'),
    (2, 'Priyanka', 'Female', 'IT'),
    (3, 'Preety', 'Female', 'HR'),
    (4, 'Subrat', 'Male', 'HR'),
    (5, 'Anurag', 'Male', 'IT')
GO

-- Create EmployeeUK table
CREATE TABLE [dbo].[EmployeeUK]
(
    [ID] INT PRIMARY KEY,
    [Name] VARCHAR(50) NOT NULL,
    [Gender] VARCHAR(10) NOT NULL,
    [Department] VARCHAR(50) NOT NULL
)
GO

-- Insert rows into EmployeeUK table
INSERT INTO [dbo].[EmployeeUK] ([ID], [Name], [Gender], [Department]) 
VALUES 
    (1, 'James', 'Male', 'IT'),
    (2, 'Priyanka', 'Female', 'IT'),
    (3, 'Sara', 'Female', 'HR'),
    (4, 'Subrat', 'Male', 'HR'),
    (5, 'Pam', 'Female', 'HR')
GO


-- EXCEPT Operator in SQL Server
SELECT
    [ID],
    [Name],
    [Gender],
    [Department]
FROM
    [dbo].[EmployeeIndia]

EXCEPT

SELECT
    [ID],
    [Name],
    [Gender],
    [Department]
FROM
    [dbo].[EmployeeUK]
GO