SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_flushprocindb]
WITH EXECUTE AS OWNER
AS
DECLARE @dbid INT
SELECT @dbid = database_id
FROM sys.databases
WHERE name = 'BOCO_ADMIN'
DBCC FLUSHPROCINDB (@dbid);
GO
GRANT EXECUTE ON  [dbo].[usp_flushprocindb] TO [MyUser]
GO
