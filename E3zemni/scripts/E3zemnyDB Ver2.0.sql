USE [master]
GO
/****** Object:  Database [E3zemni]    Script Date: 03/26/2014 19:13:33 ******/
CREATE DATABASE [E3zemni] ON  PRIMARY 
( NAME = N'E3zemni', FILENAME = N'D:\workingdbs\E3zemni.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'E3zemni_log', FILENAME = N'D:\workingdbs\E3zemni_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [E3zemni] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [E3zemni].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [E3zemni] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [E3zemni] SET ANSI_NULLS OFF
GO
ALTER DATABASE [E3zemni] SET ANSI_PADDING OFF
GO
ALTER DATABASE [E3zemni] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [E3zemni] SET ARITHABORT OFF
GO
ALTER DATABASE [E3zemni] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [E3zemni] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [E3zemni] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [E3zemni] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [E3zemni] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [E3zemni] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [E3zemni] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [E3zemni] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [E3zemni] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [E3zemni] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [E3zemni] SET  DISABLE_BROKER
GO
ALTER DATABASE [E3zemni] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [E3zemni] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [E3zemni] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [E3zemni] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [E3zemni] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [E3zemni] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [E3zemni] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [E3zemni] SET  READ_WRITE
GO
ALTER DATABASE [E3zemni] SET RECOVERY FULL
GO
ALTER DATABASE [E3zemni] SET  MULTI_USER
GO
ALTER DATABASE [E3zemni] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [E3zemni] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'E3zemni', N'ON'
GO
USE [E3zemni]
GO
/****** Object:  Table [dbo].[SitePages]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SitePages](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageTitleAr] [nvarchar](250) NULL,
	[PageTitleEng] [nvarchar](250) NULL,
	[PageTextAr] [nvarchar](max) NULL,
	[PageTextEng] [nvarchar](max) NULL,
 CONSTRAINT [PK_SitePages] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envelops]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envelops](
	[EnvelopID] [int] IDENTITY(1,1) NOT NULL,
	[Dimension] [nvarchar](50) NULL,
	[ImagePath] [nvarchar](150) NULL,
	[EnvolopColor] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[UploadDate] [datetime] NULL,
 CONSTRAINT [PK_Envelops] PRIMARY KEY CLUSTERED 
(
	[EnvelopID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CatNameAr] [nvarchar](250) NULL,
	[CatNameEng] [nvarchar](250) NULL,
	[CatImage] [nvarchar](500) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[UserPassword] [nvarchar](50) NULL,
	[FullName] [nvarchar](250) NULL,
	[UserAddress] [nvarchar](500) NULL,
	[ShippingAddress] [nvarchar](500) NULL,
	[MobilePhone] [nvarchar](20) NULL,
	[LandLine] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cards]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cards](
	[CardID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[CardNameAr] [nvarchar](250) NULL,
	[CardNameEng] [nvarchar](250) NULL,
	[PriceBefore] [float] NULL,
	[PriceNow] [float] NULL,
	[Dimension] [nvarchar](50) NULL,
	[DescriptionAr] [nvarchar](2000) NULL,
	[DescriptionEng] [nvarchar](2000) NULL,
	[MainPhoto] [nvarchar](500) NULL,
	[MainPhotoHover] [nvarchar](500) NULL,
	[UploadDate] [datetime] NULL,
 CONSTRAINT [PK_Cards] PRIMARY KEY CLUSTERED 
(
	[CardID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPayement]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPayement](
	[PayementID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[CardID] [int] NULL,
	[CardDesign] [nvarchar](250) NULL,
	[CardCount] [int] NULL,
	[EnvelopID] [int] NULL,
	[EnvelopCount] [int] NULL,
	[TotalPrice] [float] NULL,
	[PayementDate] [datetime] NULL,
 CONSTRAINT [PK_UserPayement] PRIMARY KEY CLUSTERED 
(
	[PayementID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserReviews]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserReviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[CardID] [int] NULL,
	[Stars] [int] NULL,
	[RevTitle] [nvarchar](250) NULL,
	[RevDescription] [nvarchar](500) NULL,
 CONSTRAINT [PK_UserReviews] PRIMARY KEY CLUSTERED 
(
	[ReviewID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFavorites]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFavorites](
	[UserFavoritesID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[CardID] [int] NULL,
	[MarkDate] [datetime] NULL,
 CONSTRAINT [PK_UserFavorites] PRIMARY KEY CLUSTERED 
(
	[UserFavoritesID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardText]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardText](
	[CardTextID] [int] IDENTITY(1,1) NOT NULL,
	[CardID] [int] NULL,
	[PosX] [int] NULL,
	[PosY] [int] NULL,
	[TextLabel] [nvarchar](150) NULL,
	[IsMultiLine] [bit] NULL,
 CONSTRAINT [PK_CardText] PRIMARY KEY CLUSTERED 
(
	[CardTextID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardLayouts]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardLayouts](
	[CardLayoutID] [int] IDENTITY(1,1) NOT NULL,
	[CardID] [int] NULL,
	[LayoutImage] [nvarchar](250) NULL,
	[LayeoutBackImage] [nvarchar](250) NULL,
	[LayoutColor] [nvarchar](50) NULL,
 CONSTRAINT [PK_CardLayouts] PRIMARY KEY CLUSTERED 
(
	[CardLayoutID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CardImages]    Script Date: 03/26/2014 19:13:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CardImages](
	[CardImageID] [int] IDENTITY(1,1) NOT NULL,
	[CardID] [int] NULL,
	[PosX] [int] NULL,
	[PosY] [int] NULL,
	[ImgWidth] [int] NULL,
	[ImgHieght] [int] NULL,
	[IsBackGround] [bit] NULL,
 CONSTRAINT [PK_CardImages] PRIMARY KEY CLUSTERED 
(
	[CardImageID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Cards_Categories]    Script Date: 03/26/2014 19:13:35 ******/
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [FK_Cards_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [FK_Cards_Categories]
GO
/****** Object:  ForeignKey [FK_UserPayement_UserInfo]    Script Date: 03/26/2014 19:13:35 ******/
ALTER TABLE [dbo].[UserPayement]  WITH CHECK ADD  CONSTRAINT [FK_UserPayement_UserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[UserPayement] CHECK CONSTRAINT [FK_UserPayement_UserInfo]
GO
/****** Object:  ForeignKey [FK_UserReviews_Cards]    Script Date: 03/26/2014 19:13:35 ******/
ALTER TABLE [dbo].[UserReviews]  WITH CHECK ADD  CONSTRAINT [FK_UserReviews_Cards] FOREIGN KEY([CardID])
REFERENCES [dbo].[Cards] ([CardID])
GO
ALTER TABLE [dbo].[UserReviews] CHECK CONSTRAINT [FK_UserReviews_Cards]
GO
/****** Object:  ForeignKey [FK_UserReviews_UserInfo]    Script Date: 03/26/2014 19:13:35 ******/
ALTER TABLE [dbo].[UserReviews]  WITH CHECK ADD  CONSTRAINT [FK_UserReviews_UserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[UserReviews] CHECK CONSTRAINT [FK_UserReviews_UserInfo]
GO
/****** Object:  ForeignKey [FK_UserFavorites_Cards]    Script Date: 03/26/2014 19:13:35 ******/
ALTER TABLE [dbo].[UserFavorites]  WITH CHECK ADD  CONSTRAINT [FK_UserFavorites_Cards] FOREIGN KEY([CardID])
REFERENCES [dbo].[Cards] ([CardID])
GO
ALTER TABLE [dbo].[UserFavorites] CHECK CONSTRAINT [FK_UserFavorites_Cards]
GO
/****** Object:  ForeignKey [FK_UserFavorites_UserInfo]    Script Date: 03/26/2014 19:13:35 ******/
ALTER TABLE [dbo].[UserFavorites]  WITH CHECK ADD  CONSTRAINT [FK_UserFavorites_UserInfo] FOREIGN KEY([UserID])
REFERENCES [dbo].[UserInfo] ([UserID])
GO
ALTER TABLE [dbo].[UserFavorites] CHECK CONSTRAINT [FK_UserFavorites_UserInfo]
GO
/****** Object:  ForeignKey [FK_CardText_Cards]    Script Date: 03/26/2014 19:13:35 ******/
ALTER TABLE [dbo].[CardText]  WITH CHECK ADD  CONSTRAINT [FK_CardText_Cards] FOREIGN KEY([CardID])
REFERENCES [dbo].[Cards] ([CardID])
GO
ALTER TABLE [dbo].[CardText] CHECK CONSTRAINT [FK_CardText_Cards]
GO
/****** Object:  ForeignKey [FK_CardLayouts_Cards]    Script Date: 03/26/2014 19:13:35 ******/
ALTER TABLE [dbo].[CardLayouts]  WITH CHECK ADD  CONSTRAINT [FK_CardLayouts_Cards] FOREIGN KEY([CardID])
REFERENCES [dbo].[Cards] ([CardID])
GO
ALTER TABLE [dbo].[CardLayouts] CHECK CONSTRAINT [FK_CardLayouts_Cards]
GO
/****** Object:  ForeignKey [FK_CardImages_Cards]    Script Date: 03/26/2014 19:13:35 ******/
ALTER TABLE [dbo].[CardImages]  WITH CHECK ADD  CONSTRAINT [FK_CardImages_Cards] FOREIGN KEY([CardID])
REFERENCES [dbo].[Cards] ([CardID])
GO
ALTER TABLE [dbo].[CardImages] CHECK CONSTRAINT [FK_CardImages_Cards]
GO
