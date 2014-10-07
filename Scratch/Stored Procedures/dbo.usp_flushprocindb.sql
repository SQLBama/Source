SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[usp_flushprocindb]
	@dbid INT
AS
DBCC FLUSHPROCINDB (@dbid);
GO
GRANT EXECUTE ON  [dbo].[usp_flushprocindb] TO [MyUser]
GO
