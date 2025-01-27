-- Create Gender table
CREATE TABLE [dbo].[Gender]
(
  [ID] INT PRIMARY KEY IDENTITY(1,1),
  [Gender] VARCHAR(50)
)
GO

-- Create Department table
CREATE TABLE [dbo].[Department]
(
  [ID] INT PRIMARY KEY IDENTITY(1,1),
  [Name] VARCHAR(100)
)
GO

-- Create Employee table
CREATE TABLE [dbo].[Employee]
(
  [ID] INT PRIMARY KEY IDENTITY(1,1),
  [Name] VARCHAR(100),
  [EmailID] VARCHAR(100),
  [GenderID] INT,
  [DepartmentID] INT,
  [Salary] INT,
  [Age] INT,
  [CITY] VARCHAR(100)
)
GO

-- Add the foreign key for GenderID Column
ALTER TABLE [dbo].[Employee]
ADD CONSTRAINT [Employee_GenderID_FK] FOREIGN KEY ([GenderID])
REFERENCES Gender(ID)
GO

-- Add foreign key for DepartmentID Column
ALTER TABLE [dbo].[Employee]
ADD CONSTRAINT [Employee_DepartmentID_FK] FOREIGN KEY ([DepartmentID])
REFERENCES Department(ID)
GO


--Insert data to Gender table
INSERT INTO Gender VALUES('Male')
INSERT INTO Gender VALUES('Female')
INSERT INTO Gender VALUES('Unknown')
GO

--Insert data to Department table
INSERT INTO Department VALUES('IT')
INSERT INTO Department VALUES('HR')
INSERT INTO Department VALUES('Payroll')
GO

--Insert data into Employee table
INSERT INTO Employee VALUES('PRANAYA','PRANAYA@G.COM',1, 1, 25000, 30,'MUMBAI')
INSERT INTO Employee VALUES('TARUN','TARUN@G.COM',1, 2, 30000, 27,'ODISHA')
INSERT INTO Employee VALUES('PRIYANKA','PRIYANKA@G.COM',2, 3, 27000, 25,'BANGALORE')
INSERT INTO Employee VALUES('PREETY','PREETY@G.COM',2, 3, 35000, 26,'BANGALORE')
INSERT INTO Employee VALUES('RAMESH','RAMESH@G.COM',3,2, 26000, 27,'MUMBAI')
INSERT INTO Employee VALUES('PRAMOD','PRAMOD@G.COM',1, 1, 29000, 28,'ODISHA')
INSERT INTO Employee VALUES('ANURAG','ANURAG@G.COM',1, 3, 27000, 26,'ODISHA')
INSERT INTO Employee VALUES('HINA','HINA@G.COM',2,2, 26000, 30,'MUMBAI')
INSERT INTO Employee VALUES('SAMBIT','HINA@G.COM',1, 1, 30000, 25,'ODISHA')
GO

-- Select employee where City is Mumbai
SELECT * 
FROM [dbo].[Employee]
WHERE [CITY] = 'MUMBAI'
GO

-- Select employee where GenderId = 1 and Salary >= 27000
SELECT *
FROM [dbo].[Employee]
WHERE [GenderID] = 1 AND [Salary] >= 27000
GO

-- Select employee where GenderId = 1 or Salary >= 29000
SELECT *
FROM [dbo].[Employee]
WHERE [GenderID] = 1 OR [Salary] >= 29000
GO

-- Update employee salary to 37000 whose DepartmentId is 3
UPDATE [dbo].[Employee]
SET [Salary] = 37000
WHERE [DepartmentID] = 3
GO

-- now check the updated salary
SELECT *
FROM [dbo].[Employee]
WHERE [DepartmentID] = 3
GO

-- Delete employee whose City is Mumbai
DELETE FROM [dbo].[Employee]
WHERE [CITY] = 'MUMBAI'
GO


