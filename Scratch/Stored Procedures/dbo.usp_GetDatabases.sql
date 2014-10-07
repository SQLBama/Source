SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[usp_GetDatabases]
AS
SELECT  name
       ,database_id
       ,state
	   ,create_date
       ,state_desc
       ,recovery_model
       ,recovery_model_desc
       ,target_recovery_time_in_seconds
INTO #dbs
FROM sys.databases

CREATE INDEX idx_dbs ON #dbs(database_id,create_date)

SELECT *
FROM #dbs
GO
