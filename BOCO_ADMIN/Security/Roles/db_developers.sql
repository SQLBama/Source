CREATE ROLE [db_developers]
AUTHORIZATION [db_ddladmin]
GO
EXEC sp_addrolemember N'db_developers', N'BOCO\ITDBA'
GO
