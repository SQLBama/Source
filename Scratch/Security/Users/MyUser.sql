IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'MyUser')
CREATE LOGIN [MyUser] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [MyUser] FOR LOGIN [MyUser]
GO
GRANT EXECUTE TO [MyUser]
