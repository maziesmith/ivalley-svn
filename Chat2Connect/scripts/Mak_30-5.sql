CREATE TABLE [dbo].[RoomMemberLevel](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_RoomMemberLevel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[RoomMemberLevel] ([ID], [Name]) VALUES (1, N'زائر')
INSERT [dbo].[RoomMemberLevel] ([ID], [Name]) VALUES (2, N'أدمن')
INSERT [dbo].[RoomMemberLevel] ([ID], [Name]) VALUES (3, N'سوبر أدمن')
INSERT [dbo].[RoomMemberLevel] ([ID], [Name]) VALUES (4, N'مالك الغرفة')
GO

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
ALTER TABLE dbo.RoomMemberLevel SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.RoomMember
	DROP CONSTRAINT FK__RoomMembe__Admin__5D60DB10
GO
ALTER TABLE dbo.AdminType SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO

BEGIN TRANSACTION
GO
ALTER TABLE dbo.RoomMember ADD
	RoomMemberLevelID int NULL,
	NotifyOnFriendsLogOn bit NULL,
	NotifyOnFriendsLogOff bit NULL,
	NotifyOnMicOn bit NULL,
	NotifyOnMicOff bit NULL,
	NotifyOnOpenCam bit NULL,
	NotifyOnCloseCam bit NULL
GO
ALTER TABLE dbo.RoomMember ADD CONSTRAINT
	DF_RoomMember_RoomMemberLevelID DEFAULT 1 FOR RoomMemberLevelID
GO
ALTER TABLE dbo.RoomMember ADD CONSTRAINT
	DF_RoomMember_NotifyOnFriendsLogOn DEFAULT 0 FOR NotifyOnFriendsLogOn
GO
ALTER TABLE dbo.RoomMember ADD CONSTRAINT
	DF_RoomMember_NotifyOnFriendsLogOff DEFAULT 0 FOR NotifyOnFriendsLogOff
GO
ALTER TABLE dbo.RoomMember ADD CONSTRAINT
	DF_RoomMember_NotifyOnMicOn DEFAULT 0 FOR NotifyOnMicOn
GO
ALTER TABLE dbo.RoomMember ADD CONSTRAINT
	DF_RoomMember_NotifyOnMicOff DEFAULT 0 FOR NotifyOnMicOff
GO
ALTER TABLE dbo.RoomMember ADD CONSTRAINT
	DF_RoomMember_NotifyOnOpenCam DEFAULT 0 FOR NotifyOnOpenCam
GO
ALTER TABLE dbo.RoomMember ADD CONSTRAINT
	DF_RoomMember_NotifyOnCloseCam DEFAULT 0 FOR NotifyOnCloseCam
GO
ALTER TABLE dbo.RoomMember ADD CONSTRAINT
	FK_RoomMember_RoomMemberLevel FOREIGN KEY
	(
	RoomMemberLevelID
	) REFERENCES dbo.RoomMemberLevel
	(
	ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.RoomMember
	DROP COLUMN IsAdmin, AdminTypeID, IsBanned, IsBannedFor24, IsBannedFor7Days, IsBannedForMonth
GO
ALTER TABLE dbo.RoomMember SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
GO
print 'Move RoomMemberSetting and Drop Table'
BEGIN TRANSACTION
GO
UPDATE RoomMember
SET NotifyOnFriendsLogOn=RMS.NotifyOnFriendsLogOn,
	NotifyOnFriendsLogOff=RMS.NotifyOnFriendsLogOff,
	NotifyOnMicOn=RMS.NotifyOnMicOn,
	NotifyOnMicOff=RMS.NotifyOnMicOff,
	NotifyOnOpenCam=RMS.NotifyOnOpenCam,
	NotifyOnCloseCam=RMS.NotifyOnCloseCam
FROM RoomMember RM
	LEFT JOIN RoomMemberSetting RMS ON RM.RoomID=RMS.RoomID and RM.MemberID=RMS.MemberID
GO	
DROP TABLE RoomMemberSetting
GO
COMMIT
GO

DROP TABLE AdminType
GO

UPDATE RoomMember SET RoomMemberLevelID=1
GO

ALTER TABLE RoomMember ADD IsFavorite BIT 
GO
UPDATE RoomMember
SET IsFavorite=Case FavRoom.RoomID WHEN NULL THEN 0 ELSE 1 END 
From RoomMember Left JOIN FavRoom On RoomMember.MemberID=FavRoom.MemberID AND RoomMember.RoomID=FavRoom.RoomID
GO
DROP Table FavRoom