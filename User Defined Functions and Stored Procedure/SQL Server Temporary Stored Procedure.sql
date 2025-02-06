-- Create a private/local temporary stored procedure in SQL Server

CREATE PROCEDURE #spGetEmployee
AS
BEGIN
    SELECT * FROM [dbo].[Employee]
END
GO

-- Execute stored procedure
EXEC #spGetEmployee
GO

-- Create a global/public temporary stored procedure in SQL Server
CREATE PROCEDURE ##spGetEmployee
AS
BEGIN
    SELECT * FROM [dbo].[Employee]
END
GO