-- Create PermanentEmployee table
CREATE TABLE [dbo].[PermanentEmployee]
(
    [EmployeeId] INT PRIMARY KEY,
    [Name] VARCHAR(50) NOT NULL,
    [Gender] VARCHAR(50) NOT NULL,
    [Department] VARCHAR(50) NOT NULL,
    [Age] INT CHECK ([Age] > 18)
)
GO

-- Insert Rows into PermanentEmployee table
INSERT INTO [dbo].[PermanentEmployee] ([EmployeeId], [Name], [Gender], [Department], [Age]) 
VALUES 
    (1, 'Pranaya', 'Male', 'IT', 20),
    (2, 'Priyanka', 'Female', 'IT', 22),
    (3, 'Sudhanshu', 'Male', 'HR', 25),
    (4, 'Subrat', 'Male', 'Sales', 60),
    (5, 'Tarun', 'Male', 'Sales', 54),
    (6, 'Lipika', 'Female', 'HR', 27),
    (7, 'Smita', 'Female', 'IT', 40),
    (8, 'Smith', 'Male', 'HR', 29)
GO

-- Create ContractEmployee table
CREATE TABLE [dbo].[ContractEmployee]
(
    [EmployeeId] INT PRIMARY KEY,
    [Name] VARCHAR(50) NOT NULL,
    [Gender] VARCHAR(50) NOT NULL,
    [Department] VARCHAR(50) NOT NULL,
    [Age] INT CHECK ([Age] > 18)
)
GO

-- Insert rows into ContractEmployee table
INSERT INTO [dbo].[ContractEmployee] ([EmployeeId], [Name], [Gender], [Department], [Age]) 
VALUES 
    (9, 'Anurag', 'Male', 'IT', 33),
    (10, 'Sara', 'Female', 'IT', 19),  -- Updated Age (was 15, violating CHECK constraint)
    (11, 'Sambit', 'Male', 'HR', 29),
    (12, 'James', 'Male', 'Sales', 37),
    (13, 'Pam', 'Female', 'Sales', 25)
GO

-- EXISTS Operator in SQL Server
SELECT *
FROM
    [dbo].[PermanentEmployee] AS PE
WHERE
    EXISTS (
        SELECT
            1
        FROM
            [dbo].[ContractEmployee] AS CE
        WHERE
            PE.[Age] > CE.[Age]
    )
GO

-- MOT EXISTS Operator in SQL Server
SELECT *
FROM
    [dbo].[PermanentEmployee] AS PE
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            [dbo].[ContractEmployee] AS CE
        WHERE
            PE.[Age] > CE.[Age]
    )
GO