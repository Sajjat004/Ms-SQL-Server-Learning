-- Default constraint
-- A default constraint is used to insert a default value into a column. The default value will be inserted into the column when no value is specified during the insert operation.
CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL,
    [EmployeeAddress] VARCHAR(100) NOT NULL DEFAULT 'Bangalore'
)

-- Insert data into the table without specifying the EmployeeAddress column
INSERT INTO [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeSalary], [EmployeeDesignation])
VALUES (2, 'Jane Doe', 60000, 'Senior Software Engineer')
-- Insert data into the table with specifying the EmployeeAddress column
INSERT INTO [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeSalary], [EmployeeDesignation], [EmployeeAddress])
VALUES (3, 'Alice', 70000, 'Project Manager', 'New York')

-- Not null constraint
-- A not null constraint is used to restrict the column from having a null value. The column must have a value during the insert operation. If no value is specified, an error will be thrown.
CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL,
    [EmployeeAddress] VARCHAR(100) NOT NULL
)

-- Insert data into the table without specifying the EmployeeAddress column
INSERT INTO [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeSalary], [EmployeeDesignation])
VALUES (2, 'Jane Doe', 60000, 'Senior Software Engineer') -- Error: Column 'EmployeeAddress' cannot be null.

-- Insert data into the table with specifying the EmployeeAddress column
INSERT INTO [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeSalary], [EmployeeDesignation], [EmployeeAddress])

-- Unique constraint
-- A unique constraint is used to ensure that all values in a column are unique. The column can have multiple null values, but if a value is specified, it must be unique. If a duplicate value is inserted, an error will be thrown.
CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL,
    [EmployeeAddress] VARCHAR(100) NOT NULL UNIQUE
)

-- Insert data into the table with a unique value for the EmployeeAddress column
INSERT INTO [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeSalary], [EmployeeDesignation], [EmployeeAddress])
VALUES (2, 'Jane Doe', 60000, 'Senior Software Engineer', 'Bangalore')

-- Insert data into the table with a duplicate value for the EmployeeAddress column
INSERT INTO [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeSalary], [EmployeeDesignation], [EmployeeAddress])
VALUES (3, 'Alice', 70000, 'Project Manager', 'Bangalore')
INSERT INTO [dbo].[Employee] ([EmployeeID], [EmployeeName], [EmployeeSalary], [EmployeeDesignation], [EmployeeAddress])
VALUES (3, 'Alice', 70000, 'Project Manager', 'Bangalore') -- Error: Violation of UNIQUE KEY constraint

-- Primary key constraint
-- A primary key constraint is used to uniquely identify each record in a table. The primary key column cannot have a null value, and all values in the column must be unique. A table can have only one primary key constraint.
CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL,
    [EmployeeAddress] VARCHAR(100) NOT NULL
)

-- Composite primary key constraint
-- A composite primary key constraint is used to uniquely identify each record in a table using multiple columns. The combination of values in the columns must be unique, and the columns cannot have null values.
CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL,
    [EmployeeAddress] VARCHAR(100) NOT NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY ([EmployeeID], [EmployeeName])
)

-- Foreign key constraint
-- A foreign key constraint is used to enforce referential integrity between two tables. The foreign key column in the child table must have a corresponding primary key or unique key in the parent table. The foreign key column can have null values, but if a value is specified, it must exist in the parent table.
CREATE TABLE [dbo].[Department]
(
    [DepartmentID] INT NOT NULL PRIMARY KEY,
    [DepartmentName] VARCHAR(50) NOT NULL
)

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL,
    [EmployeeAddress] VARCHAR(100) NOT NULL,
    [DepartmentID] INT NULL,
    CONSTRAINT [FK_Employee_Department] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Department]([DepartmentID]) -- Note: Constraint is used to enforce referential integrity between the Employee and Department tables based on the DepartmentID column in both tables. The DepartmentID column in the Employee table is a foreign key that references the DepartmentID column in the Department table. The foreign key column can have null values, but if a value is specified, it must exist in the parent table.
)

-- Check constraint
-- A check constraint is used to limit the values that can be inserted into a column. The check constraint specifies a condition that must be met for the value to be inserted. If the condition is not met, an error will be thrown.
CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL,
    [EmployeeAddress] VARCHAR(100) NOT NULL,
    [DepartmentID] INT NULL,
    CONSTRAINT [FK_Employee_Department] FOREIGN KEY ([DepartmentID]) REFERENCES [dbo].[Department]([DepartmentID]),
    CONSTRAINT [CK_Employee_Salary] CHECK ([EmployeeSalary] > 0)
)




