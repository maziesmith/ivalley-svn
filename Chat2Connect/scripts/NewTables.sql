
CREATE TABLE [dbo].[RowStatus](
	[RowStatusID] [tinyint] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RowStatus] PRIMARY KEY CLUSTERED 
(
	[RowStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RowStatus] ([RowStatusID], [StatusName]) VALUES (1, N'نشط')
INSERT [dbo].[RowStatus] ([RowStatusID], [StatusName]) VALUES (2, N'معطل مؤقتا')
INSERT [dbo].[RowStatus] ([RowStatusID], [StatusName]) VALUES (3, N'معطل نهائيا')
/****** Object:  Table [dbo].[RestrictedNames]    Script Date: 04/24/2014 15:07:56 ******/
GO
CREATE TABLE [dbo].[RestrictedNames](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_RestrictedNames] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE dbo.Member ADD
	IP varchar(50),
	RowStatusID tinyint NOT NULL CONSTRAINT DF_Member_RowStatusID DEFAULT 1
GO
ALTER TABLE dbo.Member ADD CONSTRAINT
	FK_Member_RowStatus FOREIGN KEY
	(
	RowStatusID
	) REFERENCES dbo.RowStatus
	(
	RowStatusID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO

ALTER TABLE dbo.Room ADD
	RowStatusID tinyint NOT NULL CONSTRAINT DF_Room_RowStatusID DEFAULT 1
GO
ALTER TABLE dbo.Room ADD CONSTRAINT
	FK_Room_RowStatus FOREIGN KEY
	(
	RowStatusID
	) REFERENCES dbo.RowStatus
	(
	RowStatusID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO

ALTER TABLE dbo.MemberMessage ADD
	IsRead bit NULL,
	OperationID uniqueidentifier NULL
GO

ALTER TABLE dbo.MemberMessage ADD CONSTRAINT
	DF_MemberMessage_IsRead DEFAULT 0 FOR IsRead
GO
ALTER TABLE dbo.MemberMessage ADD CONSTRAINT
	DF_MemberMessage_OperationID DEFAULT newid() FOR OperationID
GO
