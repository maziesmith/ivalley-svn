/*
   Tuesday, May 20, 20141:53:35 AM
   User: 
   Server: MAKARIOS-PC\SQL20088R2
   Database: chat2connect
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.MemberType
	DROP CONSTRAINT FK_MemberType_MemberTypeSpecDuration
GO
ALTER TABLE dbo.MemberTypeSpecDuration SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.MemberType
	DROP CONSTRAINT FK_MemberType_Member
GO
ALTER TABLE dbo.Member SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_MemberType
	(
	ID int NOT NULL IDENTITY (1, 1),
	MemberID int NOT NULL,
	MemberTypeSpecDurationID int NOT NULL,
	StartDate datetime NOT NULL,
	EndDate datetime NULL,
	CreateBy int NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_MemberType SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_MemberType ON
GO
IF EXISTS(SELECT * FROM dbo.MemberType)
	 EXEC('INSERT INTO dbo.Tmp_MemberType (ID, MemberID, MemberTypeSpecDurationID, StartDate, EndDate, CreateBy)
		SELECT ID, MemberID, MemberTypeSpecDurationID, StartDate, EndDate, CreateBy FROM dbo.MemberType WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_MemberType OFF
GO
DROP TABLE dbo.MemberType
GO
EXECUTE sp_rename N'dbo.Tmp_MemberType', N'MemberType', 'OBJECT' 
GO
ALTER TABLE dbo.MemberType ADD CONSTRAINT
	PK_MemberType PRIMARY KEY CLUSTERED 
	(
	ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.MemberType ADD CONSTRAINT
	FK_MemberType_Member FOREIGN KEY
	(
	MemberID
	) REFERENCES dbo.Member
	(
	MemberID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.MemberType ADD CONSTRAINT
	FK_MemberType_MemberTypeSpecDuration FOREIGN KEY
	(
	MemberTypeSpecDurationID
	) REFERENCES dbo.MemberTypeSpecDuration
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
