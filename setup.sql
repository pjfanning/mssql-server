/*

Enter custom T-SQL here that would run after SQL Server has started up.

*/

CREATE DATABASE docker;
CREATE LOGIN docker WITH PASSWORD = 'Str0ngPassword';
GO
USE docker;
CREATE user docker FOR LOGIN docker;
ALTER ROLE db_datareader ADD MEMBER docker;
ALTER ROLE db_datawriter ADD MEMBER docker;
ALTER ROLE db_ddladmin ADD MEMBER docker;
GO
