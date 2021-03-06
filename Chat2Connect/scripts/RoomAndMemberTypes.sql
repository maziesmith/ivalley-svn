ALTER TABLE dbo.Member
	DROP CONSTRAINT FK__Member__MemberTy__245D67DE
GO
ALTER TABLE dbo.Member
	DROP COLUMN MemberTypeID
GO
DROP TABLE dbo.MemberType
GO

ALTER TABLE dbo.Room
	DROP CONSTRAINT FK__Room__RoomTypeID__31B762FC
GO
ALTER TABLE dbo.Room
	DROP COLUMN RoomTypeID
GO
DROP TABLE RoomType
GO
/****** Object:  Table [dbo].[MemberTypeSpec]    Script Date: 05/17/2014 17:00:42 ******/
CREATE TABLE [dbo].[MemberTypeSpec](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Color] [varchar](50) NOT NULL,
	[OpenRoomCount] [int] NOT NULL,
	[OpenedCamCount] [int] NULL,
	[FriendsCount] [int] NOT NULL,
	[MailSize] [int] NULL,
	[CreatePrivateRoomCount] [int] NOT NULL,
	[CreateTempRoomCount] [int] NOT NULL,
	[CanOpenFullRoom] [bit] NOT NULL,
	[IsMemberOfConnectionClup] [bit] NOT NULL,
 CONSTRAINT [PK_MemberTypeSpec] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MemberTypeSpec] ON
INSERT [dbo].[MemberTypeSpec] ([ID], [Name], [Color], [OpenRoomCount], [OpenedCamCount], [FriendsCount], [MailSize], [CreatePrivateRoomCount], [CreateTempRoomCount], [CanOpenFullRoom], [IsMemberOfConnectionClup]) VALUES (1, N'أسود', N'#000', 1, 1, 500, 250, 1, 1, 0, 0)
INSERT [dbo].[MemberTypeSpec] ([ID], [Name], [Color], [OpenRoomCount], [OpenedCamCount], [FriendsCount], [MailSize], [CreatePrivateRoomCount], [CreateTempRoomCount], [CanOpenFullRoom], [IsMemberOfConnectionClup]) VALUES (2, N'زيتى', N'#808040', 4, 4, 750, 500, 2, 2, 0, 0)
INSERT [dbo].[MemberTypeSpec] ([ID], [Name], [Color], [OpenRoomCount], [OpenedCamCount], [FriendsCount], [MailSize], [CreatePrivateRoomCount], [CreateTempRoomCount], [CanOpenFullRoom], [IsMemberOfConnectionClup]) VALUES (3, N'أرجوانى', N'#FF00FE', 6, NULL, 1500, NULL, 2, 2, 0, 0)
INSERT [dbo].[MemberTypeSpec] ([ID], [Name], [Color], [OpenRoomCount], [OpenedCamCount], [FriendsCount], [MailSize], [CreatePrivateRoomCount], [CreateTempRoomCount], [CanOpenFullRoom], [IsMemberOfConnectionClup]) VALUES (4, N'مميز', N'#DBDB4D', 8, NULL, 2000, NULL, 3, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[MemberTypeSpec] OFF
GO
/****** Object:  Table [dbo].[RoomTypeSpec]    Script Date: 05/17/2014 17:00:42 ******/
CREATE TABLE [dbo].[RoomTypeSpec](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Color] [varchar](50) NULL,
	[OrderInRoomList] [int] NOT NULL,
	[MicCount] [int] NOT NULL,
 CONSTRAINT [PK_RoomTypeSpec] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RoomTypeSpec] ON
INSERT [dbo].[RoomTypeSpec] ([ID], [Name], [Color], [OrderInRoomList], [MicCount]) VALUES (1, N'إسود', N'#000', 4, 1)
INSERT [dbo].[RoomTypeSpec] ([ID], [Name], [Color], [OrderInRoomList], [MicCount]) VALUES (2, N'زيتى', N'#808040', 3, 2)
INSERT [dbo].[RoomTypeSpec] ([ID], [Name], [Color], [OrderInRoomList], [MicCount]) VALUES (3, N'أورجوانى', N'#FF00FE', 2, 3)
INSERT [dbo].[RoomTypeSpec] ([ID], [Name], [Color], [OrderInRoomList], [MicCount]) VALUES (4, N'ذهبى', N'#DBDB4D', 1, 4)
SET IDENTITY_INSERT [dbo].[RoomTypeSpec] OFF
/****** Object:  Table [dbo].[TypeDuration]    Script Date: 05/17/2014 17:00:42 ******/
GO
CREATE TABLE [dbo].[TypeDuration](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[MonthesNumber] [int] NOT NULL,
 CONSTRAINT [PK_TypeDuration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[TypeDuration] ([ID], [Name], [MonthesNumber]) VALUES (1, N'شهر', 1)
INSERT [dbo].[TypeDuration] ([ID], [Name], [MonthesNumber]) VALUES (2, N'6 شهور', 6)
INSERT [dbo].[TypeDuration] ([ID], [Name], [MonthesNumber]) VALUES (3, N'سنة', 12)
/****** Object:  Table [dbo].[RoomTypeSpecDuration]    Script Date: 05/17/2014 17:00:42 ******/
GO
CREATE TABLE [dbo].[RoomTypeSpecDuration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoomTypeSpecID] [int] NOT NULL,
	[TypeDurationID] [int] NULL,
	[Price] [decimal](8, 4) NOT NULL,
	[OpenMemberCount] [int] NOT NULL,
 CONSTRAINT [PK_RoomTypeSpecDuration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RoomTypeSpecDuration] ON
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (1, 1, NULL, CAST(0.0000 AS Decimal(8, 4)), 40)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (2, 2, 1, CAST(150.0000 AS Decimal(8, 4)), 50)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (3, 2, 1, CAST(300.0000 AS Decimal(8, 4)), 100)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (4, 2, 1, CAST(500.0000 AS Decimal(8, 4)), 200)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (5, 2, 1, CAST(700.0000 AS Decimal(8, 4)), 500)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (6, 2, 1, CAST(1000.0000 AS Decimal(8, 4)), 1000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (7, 2, 3, CAST(1500.0000 AS Decimal(8, 4)), 50)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (8, 2, 3, CAST(3000.0000 AS Decimal(8, 4)), 100)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (9, 2, 3, CAST(4500.0000 AS Decimal(8, 4)), 200)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (10, 2, 3, CAST(6300.0000 AS Decimal(8, 4)), 500)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (11, 2, 3, CAST(8000.0000 AS Decimal(8, 4)), 1000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (12, 3, 1, CAST(200.0000 AS Decimal(8, 4)), 50)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (13, 3, 1, CAST(400.0000 AS Decimal(8, 4)), 100)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (14, 3, 1, CAST(600.0000 AS Decimal(8, 4)), 200)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (15, 3, 1, CAST(900.0000 AS Decimal(8, 4)), 500)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (16, 3, 1, CAST(1400.0000 AS Decimal(8, 4)), 1000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (17, 3, 1, CAST(2000.0000 AS Decimal(8, 4)), 2000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (18, 3, 1, CAST(3000.0000 AS Decimal(8, 4)), 3000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (19, 3, 3, CAST(200.0000 AS Decimal(8, 4)), 50)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (20, 3, 3, CAST(400.0000 AS Decimal(8, 4)), 100)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (21, 3, 3, CAST(600.0000 AS Decimal(8, 4)), 200)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (22, 3, 3, CAST(900.0000 AS Decimal(8, 4)), 500)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (23, 3, 3, CAST(1400.0000 AS Decimal(8, 4)), 1000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (24, 3, 3, CAST(2000.0000 AS Decimal(8, 4)), 2000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (25, 3, 3, CAST(3000.0000 AS Decimal(8, 4)), 3000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (26, 4, 1, CAST(200.0000 AS Decimal(8, 4)), 50)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (27, 4, 1, CAST(400.0000 AS Decimal(8, 4)), 100)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (28, 4, 1, CAST(600.0000 AS Decimal(8, 4)), 200)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (29, 4, 1, CAST(900.0000 AS Decimal(8, 4)), 500)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (30, 4, 1, CAST(1400.0000 AS Decimal(8, 4)), 1000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (31, 4, 1, CAST(2000.0000 AS Decimal(8, 4)), 2000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (32, 4, 1, CAST(3000.0000 AS Decimal(8, 4)), 3000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (33, 4, 3, CAST(200.0000 AS Decimal(8, 4)), 50)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (34, 4, 3, CAST(400.0000 AS Decimal(8, 4)), 100)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (35, 4, 3, CAST(600.0000 AS Decimal(8, 4)), 200)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (36, 4, 3, CAST(900.0000 AS Decimal(8, 4)), 500)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (37, 4, 3, CAST(1400.0000 AS Decimal(8, 4)), 1000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (38, 4, 3, CAST(2000.0000 AS Decimal(8, 4)), 2000)
INSERT [dbo].[RoomTypeSpecDuration] ([ID], [RoomTypeSpecID], [TypeDurationID], [Price], [OpenMemberCount]) VALUES (39, 4, 3, CAST(3000.0000 AS Decimal(8, 4)), 3000)
SET IDENTITY_INSERT [dbo].[RoomTypeSpecDuration] OFF
/****** Object:  Table [dbo].[MemberTypeSpecDuration]    Script Date: 05/17/2014 17:00:42 ******/
GO
CREATE TABLE [dbo].[MemberTypeSpecDuration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MemberTypeSpecID] [int] NOT NULL,
	[TypeDurationID] [int] NULL,
	[Price] [decimal](8, 4) NOT NULL,
 CONSTRAINT [PK_MemberTypeSpecDuration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MemberTypeSpecDuration] ON
INSERT [dbo].[MemberTypeSpecDuration] ([ID], [MemberTypeSpecID], [TypeDurationID], [Price]) VALUES (1, 1, NULL, CAST(0.0000 AS Decimal(8, 4)))
INSERT [dbo].[MemberTypeSpecDuration] ([ID], [MemberTypeSpecID], [TypeDurationID], [Price]) VALUES (2, 2, 1, CAST(30.0000 AS Decimal(8, 4)))
INSERT [dbo].[MemberTypeSpecDuration] ([ID], [MemberTypeSpecID], [TypeDurationID], [Price]) VALUES (3, 2, 2, CAST(120.0000 AS Decimal(8, 4)))
INSERT [dbo].[MemberTypeSpecDuration] ([ID], [MemberTypeSpecID], [TypeDurationID], [Price]) VALUES (4, 2, 3, CAST(200.0000 AS Decimal(8, 4)))
INSERT [dbo].[MemberTypeSpecDuration] ([ID], [MemberTypeSpecID], [TypeDurationID], [Price]) VALUES (5, 3, 1, CAST(100.0000 AS Decimal(8, 4)))
INSERT [dbo].[MemberTypeSpecDuration] ([ID], [MemberTypeSpecID], [TypeDurationID], [Price]) VALUES (6, 3, 2, CAST(300.0000 AS Decimal(8, 4)))
INSERT [dbo].[MemberTypeSpecDuration] ([ID], [MemberTypeSpecID], [TypeDurationID], [Price]) VALUES (7, 3, 3, CAST(500.0000 AS Decimal(8, 4)))
INSERT [dbo].[MemberTypeSpecDuration] ([ID], [MemberTypeSpecID], [TypeDurationID], [Price]) VALUES (8, 4, 2, CAST(800.0000 AS Decimal(8, 4)))
INSERT [dbo].[MemberTypeSpecDuration] ([ID], [MemberTypeSpecID], [TypeDurationID], [Price]) VALUES (9, 4, 3, CAST(1200.0000 AS Decimal(8, 4)))
SET IDENTITY_INSERT [dbo].[MemberTypeSpecDuration] OFF
/****** Object:  Table [dbo].[MemberType]    Script Date: 05/17/2014 17:00:42 ******/
GO

CREATE TABLE [dbo].[MemberType](
	[ID] [int] NOT NULL,
	[MemberID] [int] NOT NULL,
	[MemberTypeSpecDurationID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateBy] [int] NOT NULL,
 CONSTRAINT [PK_MemberType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoomType]    Script Date: 05/17/2014 17:00:42 ******/
CREATE TABLE [dbo].[RoomType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoomID] [int] NOT NULL,
	[RoomTypeSpecDurationID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[CreateBy] [int] NOT NULL,
 CONSTRAINT [PK_RoomType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_MemberType_Member]    Script Date: 05/17/2014 17:00:42 ******/
ALTER TABLE [dbo].[MemberType]  WITH CHECK ADD  CONSTRAINT [FK_MemberType_Member] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Member] ([MemberID])
GO
ALTER TABLE [dbo].[MemberType] CHECK CONSTRAINT [FK_MemberType_Member]
GO
/****** Object:  ForeignKey [FK_MemberType_MemberTypeSpecDuration]    Script Date: 05/17/2014 17:00:42 ******/
ALTER TABLE [dbo].[MemberType]  WITH CHECK ADD  CONSTRAINT [FK_MemberType_MemberTypeSpecDuration] FOREIGN KEY([MemberTypeSpecDurationID])
REFERENCES [dbo].[MemberTypeSpecDuration] ([ID])
GO
ALTER TABLE [dbo].[MemberType] CHECK CONSTRAINT [FK_MemberType_MemberTypeSpecDuration]
GO
/****** Object:  ForeignKey [FK_MemberTypeSpecDuration_MemberTypeSpec]    Script Date: 05/17/2014 17:00:42 ******/
ALTER TABLE [dbo].[MemberTypeSpecDuration]  WITH CHECK ADD  CONSTRAINT [FK_MemberTypeSpecDuration_MemberTypeSpec] FOREIGN KEY([MemberTypeSpecID])
REFERENCES [dbo].[MemberTypeSpec] ([ID])
GO
ALTER TABLE [dbo].[MemberTypeSpecDuration] CHECK CONSTRAINT [FK_MemberTypeSpecDuration_MemberTypeSpec]
GO
/****** Object:  ForeignKey [FK_MemberTypeSpecDuration_TypeDuration]    Script Date: 05/17/2014 17:00:42 ******/
ALTER TABLE [dbo].[MemberTypeSpecDuration]  WITH CHECK ADD  CONSTRAINT [FK_MemberTypeSpecDuration_TypeDuration] FOREIGN KEY([TypeDurationID])
REFERENCES [dbo].[TypeDuration] ([ID])
GO
ALTER TABLE [dbo].[MemberTypeSpecDuration] CHECK CONSTRAINT [FK_MemberTypeSpecDuration_TypeDuration]
GO
/****** Object:  ForeignKey [FK_RoomType_Room]    Script Date: 05/17/2014 17:00:42 ******/
ALTER TABLE [dbo].[RoomType]  WITH CHECK ADD  CONSTRAINT [FK_RoomType_Room] FOREIGN KEY([RoomID])
REFERENCES [dbo].[Room] ([RoomID])
GO
ALTER TABLE [dbo].[RoomType] CHECK CONSTRAINT [FK_RoomType_Room]
GO
/****** Object:  ForeignKey [FK_RoomType_RoomTypeSpecDuration]    Script Date: 05/17/2014 17:00:42 ******/
ALTER TABLE [dbo].[RoomType]  WITH CHECK ADD  CONSTRAINT [FK_RoomType_RoomTypeSpecDuration] FOREIGN KEY([RoomTypeSpecDurationID])
REFERENCES [dbo].[RoomTypeSpecDuration] ([ID])
GO
ALTER TABLE [dbo].[RoomType] CHECK CONSTRAINT [FK_RoomType_RoomTypeSpecDuration]
GO
/****** Object:  ForeignKey [FK_RoomTypeSpecDuration_RoomTypeSpec]    Script Date: 05/17/2014 17:00:42 ******/
ALTER TABLE [dbo].[RoomTypeSpecDuration]  WITH CHECK ADD  CONSTRAINT [FK_RoomTypeSpecDuration_RoomTypeSpec] FOREIGN KEY([RoomTypeSpecID])
REFERENCES [dbo].[RoomTypeSpec] ([ID])
GO
ALTER TABLE [dbo].[RoomTypeSpecDuration] CHECK CONSTRAINT [FK_RoomTypeSpecDuration_RoomTypeSpec]
GO
/****** Object:  ForeignKey [FK_RoomTypeSpecDuration_TypeDuration]    Script Date: 05/17/2014 17:00:42 ******/
ALTER TABLE [dbo].[RoomTypeSpecDuration]  WITH CHECK ADD  CONSTRAINT [FK_RoomTypeSpecDuration_TypeDuration] FOREIGN KEY([TypeDurationID])
REFERENCES [dbo].[TypeDuration] ([ID])
GO
ALTER TABLE [dbo].[RoomTypeSpecDuration] CHECK CONSTRAINT [FK_RoomTypeSpecDuration_TypeDuration]
GO
