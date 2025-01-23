
-- TinyInt
-- The tinyint data type is an 8-bit unsigned integer. The Storage size is 1 byte. The range of values that can be stored in this data type is 0 to 255.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] TINYINT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- SmallInt
-- The smallint data type is a 16-bit signed integer. The Storage size is 2 bytes. The range of values that can be stored in this data type is -32,768 to 32,767.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] SMALLINT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- Int
-- The int data type is a 32-bit signed integer. The Storage size is 4 bytes. The range of values that can be stored in this data type is -2,147,483,648 to 2,147,483,647.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- BigInt
-- The bigint data type is a 64-bit signed integer. The Storage size is 8 bytes. The range of values that can be stored in this data type is -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] BIGINT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- Decimal
-- The decimal data type is a fixed precision and scale numeric data type. The Storage size is 5 to 17 bytes. The range of values that can be stored in this data type is -10^38 +1 to 10^38 -1. 

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL, -- 10 is precision and 2 is scale. Precision is the total number of digits and scale is the number of digits to the right of the decimal point. Example: 12345.67 (precision = 7, scale = 2)
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- Numeric
-- The numeric data type is a fixed precision and scale numeric data type. The Storage size is 5 to 17 bytes. The range of values that can be stored in this data type is -10^38 +1 to 10^38 -1.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] NUMERIC(10, 2) NOT NULL, -- 10 is precision and 2 is scale. Precision is the total number of digits and scale is the number of digits to the right of the decimal point. Example: 12345.67 (precision = 7, scale = 2)
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- Money
-- The money data type is a fixed precision and scale monetary data type. The Storage size is 8 bytes. The range of values that can be stored in this data type is -922,337,203,685,477.5808 to 922,337,203,685,477.5807.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] MONEY NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- SmallMoney
-- The smallmoney data type is a fixed precision and scale monetary data type. The Storage size is 4 bytes. The range of values that can be stored in this data type is -214,748.3648 to 214,748.3647.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] SMALLMONEY NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- Date
-- The date data type is a date data type. The Storage size is 3 bytes. The range of values that can be stored in this data type is 0001-01-01 to 9999-12-31.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeDOB] DATE NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- Time
-- The time data type is a time data type. The Storage size is 3 to 5 bytes. The range of values that can be stored in this data type is 00:00:00.0000000 to 23:59:59.9999999.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeShiftStartTime] TIME(0) NOT NULL, -- 0 is the precision of the time data type
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- DateTime
-- The datetime data type is a date and time data type. The Storage size is 8 bytes. The range of values that can be stored in this data type is 1753-01-01 00:00:00.000 to 9999-12-31 23:59:59.997.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeJoiningDate] DATETIME NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- char
-- The char data type is a fixed-length non-Unicode character data type. The Storage size is 1 to 8000 bytes. The range of values that can be stored in this data type is 0 to 255 characters.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] CHAR(50) NOT NULL, -- 50 is the length of the char data type
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- varchar
-- The varchar data type is a variable-length non-Unicode character data type. The Storage size is 1 to 8000 bytes. The range of values that can be stored in this data type is 0 to 255 characters.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL, -- 50 is the length of the varchar data type
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] VARCHAR(50) NOT NULL
)

-- nchar
-- The nchar data type is a fixed-length Unicode character data type. The Storage size is 2 to 4000 bytes. The range of values that can be stored in this data type is 0 to 255 characters.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] NCHAR(50) NOT NULL, -- 50 is the length of the nchar data type
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] NVARCHAR(50) NOT NULL
)

-- nvarchar
-- The nvarchar data type is a variable-length Unicode character data type. The Storage size is 2 to 4000 bytes. The range of values that can be stored in this data type is 0 to 255 characters.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] NVARCHAR(50) NOT NULL, -- 50 is the length of the nvarchar data type
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] NVARCHAR(50) NOT NULL
)

-- text
-- The text data type is a variable-length non-Unicode character data type. The Storage size is 2^31-1 bytes. The range of values that can be stored in this data type is 0 to 2^31-1 characters.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] TEXT NOT NULL
)

-- ntext
-- The ntext data type is a variable-length Unicode character data type. The Storage size is 2^30-1 bytes. The range of values that can be stored in this data type is 0 to 2^30-1 characters.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] NVARCHAR(50) NOT NULL,
    [EmployeeSalary] DECIMAL(10, 2) NOT NULL,
    [EmployeeDesignation] NTEXT NOT NULL
)

-- Binary
-- The binary data type is a fixed-length binary data type. The Storage size is 1 to 8000 bytes. The range of values that can be stored in this data type is 0 to 255 bytes.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeePhoto] BINARY(50) NOT NULL -- 50 is the length of the binary data type
)

-- VarBinary
-- The varbinary data type is a variable-length binary data type. The Storage size is 1 to 8000 bytes. The range of values that can be stored in this data type is 0 to 255 bytes.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeePhoto] VARBINARY(50) NOT NULL -- 50 is the length of the varbinary data type
)

-- Image
-- The image data type is a variable-length binary data type. The Storage size is 2^31-1 bytes. The range of values that can be stored in this data type is 0 to 2^31-1 bytes.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeePhoto] IMAGE NOT NULL
)

-- boolean
-- The bit data type is a 1-bit integer data type. The Storage size is 1 byte. The range of values that can be stored in this data type is 0 or 1.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeIsManager] BIT NOT NULL
)

-- Timestamp
-- The timestamp data type is a binary data type. The Storage size is 8 bytes. The range of values that can be stored in this data type is 0x0000000000000000 to 0xFFFFFFFFFFFFFFFF.

CREATE TABLE [dbo].[Employee]
(
    [EmployeeID] INT NOT NULL PRIMARY KEY,
    [EmployeeName] VARCHAR(50) NOT NULL,
    [EmployeeTimestamp] TIMESTAMP NOT NULL
)

