CREATE TABLE [dbo].[Table1]
(
[Test] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Test2] [nchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table1] ADD CONSTRAINT [PK_Test] PRIMARY KEY CLUSTERED  ([Test]) ON [PRIMARY]
GO
