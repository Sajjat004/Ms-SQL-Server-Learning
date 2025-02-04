-- Create Company table
CREATE TABLE [dbo].[Company]
(
    [CompanyId] TINYINT IDENTITY(1,1) PRIMARY KEY,
    [CompanyName] NVARCHAR(50) NULL
)
GO

-- Insert rows into Company table
INSERT INTO [dbo].[Company] ([CompanyName]) 
VALUES 
    (N'DELL'),
    (N'HP'),
    (N'IBM'),
    (N'Microsoft')
GO

-- Create Candidate table
CREATE TABLE [dbo].[Candidate]
(
    [CandidateId] TINYINT IDENTITY(1,1) PRIMARY KEY,
    [FullName] NVARCHAR(50) NULL,
    [CompanyId] TINYINT NULL REFERENCES [dbo].[Company]([CompanyId])
)
GO

-- Insert rows into Candidate table
INSERT INTO [dbo].[Candidate] ([FullName], [CompanyId]) 
VALUES 
    (N'Ron', 1),
    (N'Pete', 2),
    (N'Steve', 3),
    (N'Steve', NULL),
    (N'Ravi', 1),
    (N'Raj', 3),
    (N'Kiran', NULL)
GO

-- Full Outer Join in SQL Server
SELECT
    Cand.[CandidateId],
    Cand.[FullName],
    Cand.[CompanyId],
    Comp.[CompanyName]
FROM
    [dbo].[Candidate] Cand
FULL JOIN -- we can also use FULL OUTER JOIN. Both are same. But FULL JOIN is more readable.
    [dbo].[Company] Comp
ON
    Cand.[CompanyId] = Comp.[CompanyId]
GO

-- Create Address table
CREATE TABLE [dbo].[Address]
(
    [AddressId] INT IDENTITY(1,1) PRIMARY KEY,
    [CandidateId] TINYINT NULL REFERENCES [dbo].[Candidate]([CandidateId]),
    [Country] VARCHAR(50) NOT NULL,
    [State] VARCHAR(50) NOT NULL,
    [City] VARCHAR(50) NOT NULL
)
GO

-- Insert rows into Address table
INSERT INTO [dbo].[Address] ([CandidateId], [Country], [State], [City])
VALUES
    (1, 'India', 'Karnataka', 'Bangalore'),
    (2, 'USA', 'Texas', 'Austin'),
    (3, 'India', 'Maharashtra', 'Mumbai'),
    (4, 'India', 'Karnataka', 'Mysore'),
    (5, 'USA', 'California', 'San Francisco'),
    (6, 'India', 'Karnataka', 'Mangalore'),
    (7, 'USA', 'California', 'Los Angeles')
GO

-- Full Outer Join in SQL Server with multiple tables
SELECT
    Cand.[CandidateId],
    Cand.[FullName],
    Cand.[CompanyId],
    Comp.[CompanyName],
    Addr.[Country],
    Addr.[State],
    Addr.[City]
FROM
    [dbo].[Candidate] Cand
FULL JOIN -- we can also use FULL OUTER JOIN. Both are same. But FULL JOIN is more readable.
    [dbo].[Company] Comp
ON
    Cand.[CompanyId] = Comp.[CompanyId]
FULL JOIN
    [dbo].[Address] Addr
ON
    Cand.[CandidateId] = Addr.[CandidateId]
GO
