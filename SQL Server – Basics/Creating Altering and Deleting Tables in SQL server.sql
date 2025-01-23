-- Create table
CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- Alter table column
ALTER TABLE [dbo].[Employee]
ADD [EmployeeAddress] VARCHAR(100) NOT NULL

-- Alter table column EmployeeAddress varchar(100) to varchar(200)
ALTER TABLE [dbo].[Employee]
ALTER COLUMN [EmployeeAddress] VARCHAR(200) NOT NULL

-- Drop column EmployeeAddress
ALTER TABLE [dbo].[Employee]
DROP COLUMN [EmployeeAddress]

-- Drop table Employee
DROP TABLE [dbo].[Employee]
