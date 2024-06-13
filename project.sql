create database fasteats;
use fasteats;

-- Create User table
CREATE TABLE [User] (
    Username NVARCHAR(50) PRIMARY KEY,
    Email NVARCHAR(100),
    Password NVARCHAR(50)
);

-- Stored procedure for user login
CREATE PROCEDURE ValidateUser
    @Username NVARCHAR(50),
    @Password NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT COUNT(*) FROM [User] WHERE Username = @Username AND Password = @Password;
END;

-- Stored procedure for checking existing username during signup
CREATE PROCEDURE CheckUsernameExists
    @Username NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;
    SELECT COUNT(*) FROM [User] WHERE Username = @Username;
END;

select * from [User];