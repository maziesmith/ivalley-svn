USE [master]
GO
/****** Object:  Database [TouchMediadb]    Script Date: 6/16/2015 3:08:53 PM ******/
CREATE DATABASE [TouchMediadb]
 
 ON  PRIMARY 
( NAME = N'TouchMediadb', FILENAME = N'D:\workingdbs\TouchMediadb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TouchMediadb_log', FILENAME = N'D:\workingdbs\TouchMediadb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TouchMediadb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TouchMediadb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TouchMediadb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TouchMediadb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TouchMediadb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TouchMediadb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TouchMediadb] SET ARITHABORT OFF 
GO
ALTER DATABASE [TouchMediadb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TouchMediadb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [TouchMediadb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TouchMediadb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TouchMediadb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TouchMediadb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TouchMediadb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TouchMediadb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TouchMediadb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TouchMediadb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TouchMediadb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TouchMediadb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TouchMediadb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TouchMediadb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TouchMediadb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TouchMediadb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TouchMediadb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TouchMediadb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TouchMediadb] SET RECOVERY FULL 
GO
ALTER DATABASE [TouchMediadb] SET  MULTI_USER 
GO
ALTER DATABASE [TouchMediadb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TouchMediadb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TouchMediadb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TouchMediadb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TouchMediadb', N'ON'
GO
USE [TouchMediadb]
GO
/****** Object:  StoredProcedure [dbo].[proc_CategoriesDelete]    Script Date: 6/16/2015 3:08:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_CategoriesDelete]
(
	@CategoryID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Categories]
	WHERE
		[CategoryID] = @CategoryID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CategoriesInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_CategoriesInsert]
(
	@CategoryID int = NULL output,
	@CategoryName nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Categories]
	(
		[CategoryName]
	)
	VALUES
	(
		@CategoryName
	)

	SET @Err = @@Error

	SELECT @CategoryID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CategoriesLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_CategoriesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CategoryID],
		[CategoryName]
	FROM [Categories]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CategoriesLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_CategoriesLoadByPrimaryKey]
(
	@CategoryID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CategoryID],
		[CategoryName]
	FROM [Categories]
	WHERE
		([CategoryID] = @CategoryID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CategoriesUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_CategoriesUpdate]
(
	@CategoryID int,
	@CategoryName nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Categories]
	SET
		[CategoryName] = @CategoryName
	WHERE
		[CategoryID] = @CategoryID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ClientsDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ClientsDelete]
(
	@ClientID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Clients]
	WHERE
		[ClientID] = @ClientID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ClientsInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ClientsInsert]
(
	@ClientID int = NULL output,
	@ClientName nvarchar(300) = NULL,
	@ClientPhone nvarchar(50) = NULL,
	@ClientEmail nvarchar(300) = NULL,
	@ClientCode nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Clients]
	(
		[ClientName],
		[ClientPhone],
		[ClientEmail],
		[ClientCode]
	)
	VALUES
	(
		@ClientName,
		@ClientPhone,
		@ClientEmail,
		@ClientCode
	)

	SET @Err = @@Error

	SELECT @ClientID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ClientsLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ClientsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ClientID],
		[ClientName],
		[ClientPhone],
		[ClientEmail],
		[ClientCode]
	FROM [Clients]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ClientsLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ClientsLoadByPrimaryKey]
(
	@ClientID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ClientID],
		[ClientName],
		[ClientPhone],
		[ClientEmail],
		[ClientCode]
	FROM [Clients]
	WHERE
		([ClientID] = @ClientID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ClientsUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ClientsUpdate]
(
	@ClientID int,
	@ClientName nvarchar(300) = NULL,
	@ClientPhone nvarchar(50) = NULL,
	@ClientEmail nvarchar(300) = NULL,
	@ClientCode nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Clients]
	SET
		[ClientName] = @ClientName,
		[ClientPhone] = @ClientPhone,
		[ClientEmail] = @ClientEmail,
		[ClientCode] = @ClientCode
	WHERE
		[ClientID] = @ClientID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderDelete]
(
	@DeliveryOrderID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [DeliveryOrder]
	WHERE
		[DeliveryOrderID] = @DeliveryOrderID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderDetailsDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderDetailsDelete]
(
	@DeliveryOrderDetailsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [DeliveryOrderDetails]
	WHERE
		[DeliveryOrderDetailsID] = @DeliveryOrderDetailsID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderDetailsInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderDetailsInsert]
(
	@DeliveryOrderDetailsID int = NULL output,
	@DeliveryOrderID int = NULL,
	@DeliveryOrderStatusID int = NULL,
	@DeliveryFrom nvarchar(300) = NULL,
	@DeliveryTo nvarchar(300) = NULL,
	@DateFrom datetime = NULL,
	@DateTo datetime = NULL,
	@ReceivableName nvarchar(300) = NULL,
	@ReceivableTelephone nvarchar(50) = NULL,
	@Price float = NULL,
	@DeliveryOrderCode nvarchar(300) = NULL,
	@DeliveryOrderDetailsStatusID int = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [DeliveryOrderDetails]
	(
		[DeliveryOrderID],
		[DeliveryOrderStatusID],
		[DeliveryFrom],
		[DeliveryTo],
		[DateFrom],
		[DateTo],
		[ReceivableName],
		[ReceivableTelephone],
		[Price],
		[DeliveryOrderCode],
		[DeliveryOrderDetailsStatusID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@DeliveryOrderID,
		@DeliveryOrderStatusID,
		@DeliveryFrom,
		@DeliveryTo,
		@DateFrom,
		@DateTo,
		@ReceivableName,
		@ReceivableTelephone,
		@Price,
		@DeliveryOrderCode,
		@DeliveryOrderDetailsStatusID,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @DeliveryOrderDetailsID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderDetailsLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderDetailsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DeliveryOrderDetailsID],
		[DeliveryOrderID],
		[DeliveryOrderStatusID],
		[DeliveryFrom],
		[DeliveryTo],
		[DateFrom],
		[DateTo],
		[ReceivableName],
		[ReceivableTelephone],
		[Price],
		[DeliveryOrderCode],
		[DeliveryOrderDetailsStatusID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [DeliveryOrderDetails]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderDetailsLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderDetailsLoadByPrimaryKey]
(
	@DeliveryOrderDetailsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DeliveryOrderDetailsID],
		[DeliveryOrderID],
		[DeliveryOrderStatusID],
		[DeliveryFrom],
		[DeliveryTo],
		[DateFrom],
		[DateTo],
		[ReceivableName],
		[ReceivableTelephone],
		[Price],
		[DeliveryOrderCode],
		[DeliveryOrderDetailsStatusID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [DeliveryOrderDetails]
	WHERE
		([DeliveryOrderDetailsID] = @DeliveryOrderDetailsID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderDetailsUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderDetailsUpdate]
(
	@DeliveryOrderDetailsID int,
	@DeliveryOrderID int = NULL,
	@DeliveryOrderStatusID int = NULL,
	@DeliveryFrom nvarchar(300) = NULL,
	@DeliveryTo nvarchar(300) = NULL,
	@DateFrom datetime = NULL,
	@DateTo datetime = NULL,
	@ReceivableName nvarchar(300) = NULL,
	@ReceivableTelephone nvarchar(50) = NULL,
	@Price float = NULL,
	@DeliveryOrderCode nvarchar(300) = NULL,
	@DeliveryOrderDetailsStatusID int = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [DeliveryOrderDetails]
	SET
		[DeliveryOrderID] = @DeliveryOrderID,
		[DeliveryOrderStatusID] = @DeliveryOrderStatusID,
		[DeliveryFrom] = @DeliveryFrom,
		[DeliveryTo] = @DeliveryTo,
		[DateFrom] = @DateFrom,
		[DateTo] = @DateTo,
		[ReceivableName] = @ReceivableName,
		[ReceivableTelephone] = @ReceivableTelephone,
		[Price] = @Price,
		[DeliveryOrderCode] = @DeliveryOrderCode,
		[DeliveryOrderDetailsStatusID] = @DeliveryOrderDetailsStatusID,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[DeliveryOrderDetailsID] = @DeliveryOrderDetailsID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderInsert]
(
	@DeliveryOrderID int = NULL output,
	@KilometerCounterBefore decimal(8,2) = NULL,
	@KilometerCounterAfter decimal(8,2) = NULL,
	@TotalPrice float = NULL,
	@DeliveryOrderStatusID int = NULL,
	@GeneralDeliveryCode nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@TransformationSupplier nvarchar(300) = NULL,
	@DriverName nvarchar(300) = NULL,
	@DriverNationID int = NULL,
	@CarNumber nvarchar(50) = NULL,
	@DriverTelephone nvarchar(50) = NULL,
	@WatingHours float = NULL,
	@PermationNumber int = NULL,
	@Department nvarchar(300) = NULL,
	@ClientCode int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [DeliveryOrder]
	(
		[KilometerCounterBefore],
		[KilometerCounterAfter],
		[TotalPrice],
		[DeliveryOrderStatusID],
		[GeneralDeliveryCode],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[TransformationSupplier],
		[DriverName],
		[DriverNationID],
		[CarNumber],
		[DriverTelephone],
		[WatingHours],
		[PermationNumber],
		[Department],
		[ClientCode]
	)
	VALUES
	(
		@KilometerCounterBefore,
		@KilometerCounterAfter,
		@TotalPrice,
		@DeliveryOrderStatusID,
		@GeneralDeliveryCode,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate,
		@TransformationSupplier,
		@DriverName,
		@DriverNationID,
		@CarNumber,
		@DriverTelephone,
		@WatingHours,
		@PermationNumber,
		@Department,
		@ClientCode
	)

	SET @Err = @@Error

	SELECT @DeliveryOrderID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DeliveryOrderID],
		[KilometerCounterBefore],
		[KilometerCounterAfter],
		[TotalPrice],
		[DeliveryOrderStatusID],
		[GeneralDeliveryCode],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[TransformationSupplier],
		[DriverName],
		[DriverNationID],
		[CarNumber],
		[DriverTelephone],
		[WatingHours],
		[PermationNumber],
		[Department],
		[ClientCode]
	FROM [DeliveryOrder]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderLoadByPrimaryKey]
(
	@DeliveryOrderID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DeliveryOrderID],
		[KilometerCounterBefore],
		[KilometerCounterAfter],
		[TotalPrice],
		[DeliveryOrderStatusID],
		[GeneralDeliveryCode],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[TransformationSupplier],
		[DriverName],
		[DriverNationID],
		[CarNumber],
		[DriverTelephone],
		[WatingHours],
		[PermationNumber],
		[Department],
		[ClientCode]
	FROM [DeliveryOrder]
	WHERE
		([DeliveryOrderID] = @DeliveryOrderID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderStatusDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderStatusDelete]
(
	@DeliveryOrderStatusID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [DeliveryOrderStatus]
	WHERE
		[DeliveryOrderStatusID] = @DeliveryOrderStatusID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderStatusInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderStatusInsert]
(
	@DeliveryOrderStatusID int = NULL output,
	@DeliveryOrderStatusName nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [DeliveryOrderStatus]
	(
		[DeliveryOrderStatusName]
	)
	VALUES
	(
		@DeliveryOrderStatusName
	)

	SET @Err = @@Error

	SELECT @DeliveryOrderStatusID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderStatusLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderStatusLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DeliveryOrderStatusID],
		[DeliveryOrderStatusName]
	FROM [DeliveryOrderStatus]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderStatusLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderStatusLoadByPrimaryKey]
(
	@DeliveryOrderStatusID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DeliveryOrderStatusID],
		[DeliveryOrderStatusName]
	FROM [DeliveryOrderStatus]
	WHERE
		([DeliveryOrderStatusID] = @DeliveryOrderStatusID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderStatusUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderStatusUpdate]
(
	@DeliveryOrderStatusID int,
	@DeliveryOrderStatusName nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [DeliveryOrderStatus]
	SET
		[DeliveryOrderStatusName] = @DeliveryOrderStatusName
	WHERE
		[DeliveryOrderStatusID] = @DeliveryOrderStatusID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DeliveryOrderUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DeliveryOrderUpdate]
(
	@DeliveryOrderID int,
	@KilometerCounterBefore decimal(8,2) = NULL,
	@KilometerCounterAfter decimal(8,2) = NULL,
	@TotalPrice float = NULL,
	@DeliveryOrderStatusID int = NULL,
	@GeneralDeliveryCode nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@TransformationSupplier nvarchar(300) = NULL,
	@DriverName nvarchar(300) = NULL,
	@DriverNationID int = NULL,
	@CarNumber nvarchar(50) = NULL,
	@DriverTelephone nvarchar(50) = NULL,
	@WatingHours float = NULL,
	@PermationNumber int = NULL,
	@Department nvarchar(300) = NULL,
	@ClientCode int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [DeliveryOrder]
	SET
		[KilometerCounterBefore] = @KilometerCounterBefore,
		[KilometerCounterAfter] = @KilometerCounterAfter,
		[TotalPrice] = @TotalPrice,
		[DeliveryOrderStatusID] = @DeliveryOrderStatusID,
		[GeneralDeliveryCode] = @GeneralDeliveryCode,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate,
		[TransformationSupplier] = @TransformationSupplier,
		[DriverName] = @DriverName,
		[DriverNationID] = @DriverNationID,
		[CarNumber] = @CarNumber,
		[DriverTelephone] = @DriverTelephone,
		[WatingHours] = @WatingHours,
		[PermationNumber] = @PermationNumber,
		[Department] = @Department,
		[ClientCode] = @ClientCode
	WHERE
		[DeliveryOrderID] = @DeliveryOrderID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DesignDetailsDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DesignDetailsDelete]
(
	@DesignDetailsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [DesignDetails]
	WHERE
		[DesignDetailsID] = @DesignDetailsID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DesignDetailsInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DesignDetailsInsert]
(
	@DesignDetailsID int = NULL output,
	@JobOrderID int = NULL,
	@DesignerID int = NULL,
	@JobOrderStatusID int = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [DesignDetails]
	(
		[JobOrderID],
		[DesignerID],
		[JobOrderStatusID],
		[StartDate],
		[EndDate],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@JobOrderID,
		@DesignerID,
		@JobOrderStatusID,
		@StartDate,
		@EndDate,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @DesignDetailsID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DesignDetailsLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DesignDetailsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DesignDetailsID],
		[JobOrderID],
		[DesignerID],
		[JobOrderStatusID],
		[StartDate],
		[EndDate],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [DesignDetails]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DesignDetailsLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DesignDetailsLoadByPrimaryKey]
(
	@DesignDetailsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DesignDetailsID],
		[JobOrderID],
		[DesignerID],
		[JobOrderStatusID],
		[StartDate],
		[EndDate],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [DesignDetails]
	WHERE
		([DesignDetailsID] = @DesignDetailsID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DesignDetailsUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DesignDetailsUpdate]
(
	@DesignDetailsID int,
	@JobOrderID int = NULL,
	@DesignerID int = NULL,
	@JobOrderStatusID int = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [DesignDetails]
	SET
		[JobOrderID] = @JobOrderID,
		[DesignerID] = @DesignerID,
		[JobOrderStatusID] = @JobOrderStatusID,
		[StartDate] = @StartDate,
		[EndDate] = @EndDate,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[DesignDetailsID] = @DesignDetailsID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DesignservicesTypeDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DesignservicesTypeDelete]
(
	@DesignservicesTypeID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [DesignservicesType]
	WHERE
		[DesignservicesTypeID] = @DesignservicesTypeID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DesignservicesTypeInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DesignservicesTypeInsert]
(
	@DesignservicesTypeID int = NULL output,
	@DigitalPrintingDetailsID int = NULL,
	@ServiceID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [DesignservicesType]
	(
		[DigitalPrintingDetailsID],
		[ServiceID]
	)
	VALUES
	(
		@DigitalPrintingDetailsID,
		@ServiceID
	)

	SET @Err = @@Error

	SELECT @DesignservicesTypeID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DesignservicesTypeLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DesignservicesTypeLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DesignservicesTypeID],
		[DigitalPrintingDetailsID],
		[ServiceID]
	FROM [DesignservicesType]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DesignservicesTypeLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DesignservicesTypeLoadByPrimaryKey]
(
	@DesignservicesTypeID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DesignservicesTypeID],
		[DigitalPrintingDetailsID],
		[ServiceID]
	FROM [DesignservicesType]
	WHERE
		([DesignservicesTypeID] = @DesignservicesTypeID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DesignservicesTypeUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DesignservicesTypeUpdate]
(
	@DesignservicesTypeID int,
	@DigitalPrintingDetailsID int = NULL,
	@ServiceID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [DesignservicesType]
	SET
		[DigitalPrintingDetailsID] = @DigitalPrintingDetailsID,
		[ServiceID] = @ServiceID
	WHERE
		[DesignservicesTypeID] = @DesignservicesTypeID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DigitalPrintingDetailsDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DigitalPrintingDetailsDelete]
(
	@DigitalPrintingDetailsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [DigitalPrintingDetails]
	WHERE
		[DigitalPrintingDetailsID] = @DigitalPrintingDetailsID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DigitalPrintingDetailsInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DigitalPrintingDetailsInsert]
(
	@DigitalPrintingDetailsID int = NULL output,
	@JobOrderID int = NULL,
	@PrintingTypeID int = NULL,
	@IsRAndV bit = NULL,
	@SupplierID int = NULL,
	@DeliveryDoneTo int = NULL,
	@JobOrderStatusID int = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [DigitalPrintingDetails]
	(
		[JobOrderID],
		[PrintingTypeID],
		[IsRAndV],
		[SupplierID],
		[DeliveryDoneTo],
		[JobOrderStatusID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@JobOrderID,
		@PrintingTypeID,
		@IsRAndV,
		@SupplierID,
		@DeliveryDoneTo,
		@JobOrderStatusID,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @DigitalPrintingDetailsID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DigitalPrintingDetailsLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DigitalPrintingDetailsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DigitalPrintingDetailsID],
		[JobOrderID],
		[PrintingTypeID],
		[IsRAndV],
		[SupplierID],
		[DeliveryDoneTo],
		[JobOrderStatusID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [DigitalPrintingDetails]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DigitalPrintingDetailsLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DigitalPrintingDetailsLoadByPrimaryKey]
(
	@DigitalPrintingDetailsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DigitalPrintingDetailsID],
		[JobOrderID],
		[PrintingTypeID],
		[IsRAndV],
		[SupplierID],
		[DeliveryDoneTo],
		[JobOrderStatusID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [DigitalPrintingDetails]
	WHERE
		([DigitalPrintingDetailsID] = @DigitalPrintingDetailsID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DigitalPrintingDetailsUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DigitalPrintingDetailsUpdate]
(
	@DigitalPrintingDetailsID int,
	@JobOrderID int = NULL,
	@PrintingTypeID int = NULL,
	@IsRAndV bit = NULL,
	@SupplierID int = NULL,
	@DeliveryDoneTo int = NULL,
	@JobOrderStatusID int = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [DigitalPrintingDetails]
	SET
		[JobOrderID] = @JobOrderID,
		[PrintingTypeID] = @PrintingTypeID,
		[IsRAndV] = @IsRAndV,
		[SupplierID] = @SupplierID,
		[DeliveryDoneTo] = @DeliveryDoneTo,
		[JobOrderStatusID] = @JobOrderStatusID,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[DigitalPrintingDetailsID] = @DigitalPrintingDetailsID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GeneralLookupDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GeneralLookupDelete]
(
	@GeneralLookupID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [GeneralLookup]
	WHERE
		[GeneralLookupID] = @GeneralLookupID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GeneralLookupInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GeneralLookupInsert]
(
	@GeneralLookupID int = NULL output,
	@CategoryID int = NULL,
	@Name nvarchar(300) = NULL,
	@Address nvarchar(300) = NULL,
	@Telephone nvarchar(300) = NULL,
	@Email nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [GeneralLookup]
	(
		[CategoryID],
		[Name],
		[Address],
		[Telephone],
		[Email]
	)
	VALUES
	(
		@CategoryID,
		@Name,
		@Address,
		@Telephone,
		@Email
	)

	SET @Err = @@Error

	SELECT @GeneralLookupID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GeneralLookupLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GeneralLookupLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[GeneralLookupID],
		[CategoryID],
		[Name],
		[Address],
		[Telephone],
		[Email]
	FROM [GeneralLookup]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GeneralLookupLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GeneralLookupLoadByPrimaryKey]
(
	@GeneralLookupID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[GeneralLookupID],
		[CategoryID],
		[Name],
		[Address],
		[Telephone],
		[Email]
	FROM [GeneralLookup]
	WHERE
		([GeneralLookupID] = @GeneralLookupID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GeneralLookupUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GeneralLookupUpdate]
(
	@GeneralLookupID int,
	@CategoryID int = NULL,
	@Name nvarchar(300) = NULL,
	@Address nvarchar(300) = NULL,
	@Telephone nvarchar(300) = NULL,
	@Email nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [GeneralLookup]
	SET
		[CategoryID] = @CategoryID,
		[Name] = @Name,
		[Address] = @Address,
		[Telephone] = @Telephone,
		[Email] = @Email
	WHERE
		[GeneralLookupID] = @GeneralLookupID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GiveawaysDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GiveawaysDelete]
(
	@GiveawayID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Giveaways]
	WHERE
		[GiveawayID] = @GiveawayID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GiveawaysInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GiveawaysInsert]
(
	@GiveawayID int = NULL output,
	@JobOrderID int = NULL,
	@ItemName nvarchar(300) = NULL,
	@GiveawayDescription nvarchar(300) = NULL,
	@GiveawayQuantity int = NULL,
	@PricePerItem float = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Giveaways]
	(
		[JobOrderID],
		[ItemName],
		[GiveawayDescription],
		[GiveawayQuantity],
		[PricePerItem],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@JobOrderID,
		@ItemName,
		@GiveawayDescription,
		@GiveawayQuantity,
		@PricePerItem,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @GiveawayID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GiveawaysLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GiveawaysLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[GiveawayID],
		[JobOrderID],
		[ItemName],
		[GiveawayDescription],
		[GiveawayQuantity],
		[PricePerItem],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [Giveaways]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GiveawaysLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GiveawaysLoadByPrimaryKey]
(
	@GiveawayID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[GiveawayID],
		[JobOrderID],
		[ItemName],
		[GiveawayDescription],
		[GiveawayQuantity],
		[PricePerItem],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [Giveaways]
	WHERE
		([GiveawayID] = @GiveawayID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GiveawaysUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GiveawaysUpdate]
(
	@GiveawayID int,
	@JobOrderID int = NULL,
	@ItemName nvarchar(300) = NULL,
	@GiveawayDescription nvarchar(300) = NULL,
	@GiveawayQuantity int = NULL,
	@PricePerItem float = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Giveaways]
	SET
		[JobOrderID] = @JobOrderID,
		[ItemName] = @ItemName,
		[GiveawayDescription] = @GiveawayDescription,
		[GiveawayQuantity] = @GiveawayQuantity,
		[PricePerItem] = @PricePerItem,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[GiveawayID] = @GiveawayID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_InAndOutDoorDetailsDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_InAndOutDoorDetailsDelete]
(
	@InAndOutDoorDetailsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [InAndOutDoorDetails]
	WHERE
		[InAndOutDoorDetailsID] = @InAndOutDoorDetailsID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_InAndOutDoorDetailsInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_InAndOutDoorDetailsInsert]
(
	@InAndOutDoorDetailsID int = NULL output,
	@Item nvarchar(500) = NULL,
	@MaterialID int = NULL,
	@LaminationID int = NULL,
	@ServiceID int = NULL,
	@Picture nvarchar(500) = NULL,
	@DeliveryDate datetime = NULL,
	@Width decimal(6,2) = NULL,
	@Hight decimal(6,2) = NULL,
	@TotalSize decimal(6,2) = NULL,
	@DeliveryTo nvarchar(500) = NULL,
	@JobOrderStatusID int = NULL,
	@JobOrderID int = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [InAndOutDoorDetails]
	(
		[Item],
		[MaterialID],
		[LaminationID],
		[ServiceID],
		[Picture],
		[DeliveryDate],
		[Width],
		[Hight],
		[TotalSize],
		[DeliveryTo],
		[JobOrderStatusID],
		[JobOrderID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@Item,
		@MaterialID,
		@LaminationID,
		@ServiceID,
		@Picture,
		@DeliveryDate,
		@Width,
		@Hight,
		@TotalSize,
		@DeliveryTo,
		@JobOrderStatusID,
		@JobOrderID,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @InAndOutDoorDetailsID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_InAndOutDoorDetailsLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_InAndOutDoorDetailsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[InAndOutDoorDetailsID],
		[Item],
		[MaterialID],
		[LaminationID],
		[ServiceID],
		[Picture],
		[DeliveryDate],
		[Width],
		[Hight],
		[TotalSize],
		[DeliveryTo],
		[JobOrderStatusID],
		[JobOrderID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [InAndOutDoorDetails]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_InAndOutDoorDetailsLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_InAndOutDoorDetailsLoadByPrimaryKey]
(
	@InAndOutDoorDetailsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[InAndOutDoorDetailsID],
		[Item],
		[MaterialID],
		[LaminationID],
		[ServiceID],
		[Picture],
		[DeliveryDate],
		[Width],
		[Hight],
		[TotalSize],
		[DeliveryTo],
		[JobOrderStatusID],
		[JobOrderID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [InAndOutDoorDetails]
	WHERE
		([InAndOutDoorDetailsID] = @InAndOutDoorDetailsID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_InAndOutDoorDetailsUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_InAndOutDoorDetailsUpdate]
(
	@InAndOutDoorDetailsID int,
	@Item nvarchar(500) = NULL,
	@MaterialID int = NULL,
	@LaminationID int = NULL,
	@ServiceID int = NULL,
	@Picture nvarchar(500) = NULL,
	@DeliveryDate datetime = NULL,
	@Width decimal(6,2) = NULL,
	@Hight decimal(6,2) = NULL,
	@TotalSize decimal(6,2) = NULL,
	@DeliveryTo nvarchar(500) = NULL,
	@JobOrderStatusID int = NULL,
	@JobOrderID int = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [InAndOutDoorDetails]
	SET
		[Item] = @Item,
		[MaterialID] = @MaterialID,
		[LaminationID] = @LaminationID,
		[ServiceID] = @ServiceID,
		[Picture] = @Picture,
		[DeliveryDate] = @DeliveryDate,
		[Width] = @Width,
		[Hight] = @Hight,
		[TotalSize] = @TotalSize,
		[DeliveryTo] = @DeliveryTo,
		[JobOrderStatusID] = @JobOrderStatusID,
		[JobOrderID] = @JobOrderID,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[InAndOutDoorDetailsID] = @InAndOutDoorDetailsID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_JobOrderDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_JobOrderDelete]
(
	@JobOrderID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [JobOrder]
	WHERE
		[JobOrderID] = @JobOrderID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_JobOrderInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_JobOrderInsert]
(
	@JobOrderID int = NULL output,
	@JobOrderStatusID int = NULL,
	@JobOrderCode nvarchar(300) = NULL,
	@JobOrderDescription nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@JobOrderName nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [JobOrder]
	(
		[JobOrderStatusID],
		[JobOrderCode],
		[JobOrderDescription],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[JobOrderName]
	)
	VALUES
	(
		@JobOrderStatusID,
		@JobOrderCode,
		@JobOrderDescription,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate,
		@JobOrderName
	)

	SET @Err = @@Error

	SELECT @JobOrderID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_JobOrderLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_JobOrderLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[JobOrderID],
		[JobOrderStatusID],
		[JobOrderCode],
		[JobOrderDescription],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[JobOrderName]
	FROM [JobOrder]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_JobOrderLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_JobOrderLoadByPrimaryKey]
(
	@JobOrderID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[JobOrderID],
		[JobOrderStatusID],
		[JobOrderCode],
		[JobOrderDescription],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[JobOrderName]
	FROM [JobOrder]
	WHERE
		([JobOrderID] = @JobOrderID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_JobOrderStatusDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_JobOrderStatusDelete]
(
	@JobOrderStatusID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [JobOrderStatus]
	WHERE
		[JobOrderStatusID] = @JobOrderStatusID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_JobOrderStatusInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_JobOrderStatusInsert]
(
	@JobOrderStatusID int = NULL output,
	@JobOrderStatusName nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [JobOrderStatus]
	(
		[JobOrderStatusName]
	)
	VALUES
	(
		@JobOrderStatusName
	)

	SET @Err = @@Error

	SELECT @JobOrderStatusID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_JobOrderStatusLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_JobOrderStatusLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[JobOrderStatusID],
		[JobOrderStatusName]
	FROM [JobOrderStatus]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_JobOrderStatusLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_JobOrderStatusLoadByPrimaryKey]
(
	@JobOrderStatusID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[JobOrderStatusID],
		[JobOrderStatusName]
	FROM [JobOrderStatus]
	WHERE
		([JobOrderStatusID] = @JobOrderStatusID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_JobOrderStatusUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_JobOrderStatusUpdate]
(
	@JobOrderStatusID int,
	@JobOrderStatusName nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [JobOrderStatus]
	SET
		[JobOrderStatusName] = @JobOrderStatusName
	WHERE
		[JobOrderStatusID] = @JobOrderStatusID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_JobOrderUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_JobOrderUpdate]
(
	@JobOrderID int,
	@JobOrderStatusID int = NULL,
	@JobOrderCode nvarchar(300) = NULL,
	@JobOrderDescription nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@JobOrderName nvarchar(300) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [JobOrder]
	SET
		[JobOrderStatusID] = @JobOrderStatusID,
		[JobOrderCode] = @JobOrderCode,
		[JobOrderDescription] = @JobOrderDescription,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate,
		[JobOrderName] = @JobOrderName
	WHERE
		[JobOrderID] = @JobOrderID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_OffsetPrintingDetailsDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_OffsetPrintingDetailsDelete]
(
	@OffsetPrintingDetailsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [OffsetPrintingDetails]
	WHERE
		[OffsetPrintingDetailsID] = @OffsetPrintingDetailsID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_OffsetPrintingDetailsInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_OffsetPrintingDetailsInsert]
(
	@OffsetPrintingDetailsID int = NULL output,
	@JobOrderID int = NULL,
	@PaperKindID int = NULL,
	@GSMID int = NULL,
	@PrintingHouseID int = NULL,
	@FinishID int = NULL,
	@JobOrderStatusID int = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [OffsetPrintingDetails]
	(
		[JobOrderID],
		[PaperKindID],
		[GSMID],
		[PrintingHouseID],
		[FinishID],
		[JobOrderStatusID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@JobOrderID,
		@PaperKindID,
		@GSMID,
		@PrintingHouseID,
		@FinishID,
		@JobOrderStatusID,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @OffsetPrintingDetailsID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_OffsetPrintingDetailsLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_OffsetPrintingDetailsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[OffsetPrintingDetailsID],
		[JobOrderID],
		[PaperKindID],
		[GSMID],
		[PrintingHouseID],
		[FinishID],
		[JobOrderStatusID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [OffsetPrintingDetails]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_OffsetPrintingDetailsLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_OffsetPrintingDetailsLoadByPrimaryKey]
(
	@OffsetPrintingDetailsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[OffsetPrintingDetailsID],
		[JobOrderID],
		[PaperKindID],
		[GSMID],
		[PrintingHouseID],
		[FinishID],
		[JobOrderStatusID],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [OffsetPrintingDetails]
	WHERE
		([OffsetPrintingDetailsID] = @OffsetPrintingDetailsID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_OffsetPrintingDetailsUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_OffsetPrintingDetailsUpdate]
(
	@OffsetPrintingDetailsID int,
	@JobOrderID int = NULL,
	@PaperKindID int = NULL,
	@GSMID int = NULL,
	@PrintingHouseID int = NULL,
	@FinishID int = NULL,
	@JobOrderStatusID int = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [OffsetPrintingDetails]
	SET
		[JobOrderID] = @JobOrderID,
		[PaperKindID] = @PaperKindID,
		[GSMID] = @GSMID,
		[PrintingHouseID] = @PrintingHouseID,
		[FinishID] = @FinishID,
		[JobOrderStatusID] = @JobOrderStatusID,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[OffsetPrintingDetailsID] = @OffsetPrintingDetailsID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProductionDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ProductionDelete]
(
	@ProductionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Production]
	WHERE
		[ProductionID] = @ProductionID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProductionInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ProductionInsert]
(
	@ProductionID int = NULL output,
	@JobOrderID int = NULL,
	@ItemID int = NULL,
	@Size decimal(6,2) = NULL,
	@MaterialID int = NULL,
	@DeliveryDate datetime = NULL,
	@SupplierID int = NULL,
	@DeliveryTo nvarchar(500) = NULL,
	@ISRemovable bit = NULL,
	@RemovableDate datetime = NULL,
	@installationDate datetime = NULL,
	@ProductStatusID int = NULL,
	@InstallStationID int = NULL,
	@Note nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Production]
	(
		[JobOrderID],
		[ItemID],
		[Size],
		[MaterialID],
		[DeliveryDate],
		[SupplierID],
		[DeliveryTo],
		[ISRemovable],
		[RemovableDate],
		[installationDate],
		[ProductStatusID],
		[InstallStationID],
		[Note],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@JobOrderID,
		@ItemID,
		@Size,
		@MaterialID,
		@DeliveryDate,
		@SupplierID,
		@DeliveryTo,
		@ISRemovable,
		@RemovableDate,
		@installationDate,
		@ProductStatusID,
		@InstallStationID,
		@Note,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @ProductionID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProductionLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ProductionLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProductionID],
		[JobOrderID],
		[ItemID],
		[Size],
		[MaterialID],
		[DeliveryDate],
		[SupplierID],
		[DeliveryTo],
		[ISRemovable],
		[RemovableDate],
		[installationDate],
		[ProductStatusID],
		[InstallStationID],
		[Note],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [Production]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProductionLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ProductionLoadByPrimaryKey]
(
	@ProductionID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProductionID],
		[JobOrderID],
		[ItemID],
		[Size],
		[MaterialID],
		[DeliveryDate],
		[SupplierID],
		[DeliveryTo],
		[ISRemovable],
		[RemovableDate],
		[installationDate],
		[ProductStatusID],
		[InstallStationID],
		[Note],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [Production]
	WHERE
		([ProductionID] = @ProductionID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProductionUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ProductionUpdate]
(
	@ProductionID int,
	@JobOrderID int = NULL,
	@ItemID int = NULL,
	@Size decimal(6,2) = NULL,
	@MaterialID int = NULL,
	@DeliveryDate datetime = NULL,
	@SupplierID int = NULL,
	@DeliveryTo nvarchar(500) = NULL,
	@ISRemovable bit = NULL,
	@RemovableDate datetime = NULL,
	@installationDate datetime = NULL,
	@ProductStatusID int = NULL,
	@InstallStationID int = NULL,
	@Note nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Production]
	SET
		[JobOrderID] = @JobOrderID,
		[ItemID] = @ItemID,
		[Size] = @Size,
		[MaterialID] = @MaterialID,
		[DeliveryDate] = @DeliveryDate,
		[SupplierID] = @SupplierID,
		[DeliveryTo] = @DeliveryTo,
		[ISRemovable] = @ISRemovable,
		[RemovableDate] = @RemovableDate,
		[installationDate] = @installationDate,
		[ProductStatusID] = @ProductStatusID,
		[InstallStationID] = @InstallStationID,
		[Note] = @Note,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[ProductionID] = @ProductionID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PurchaseOrderDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_PurchaseOrderDelete]
(
	@PurchaseOrderID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [PurchaseOrder]
	WHERE
		[PurchaseOrderID] = @PurchaseOrderID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PurchaseOrderDetailsDelete]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_PurchaseOrderDetailsDelete]
(
	@PurchaseOrderDetailsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [PurchaseOrderDetails]
	WHERE
		[PurchaseOrderDetailsID] = @PurchaseOrderDetailsID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PurchaseOrderDetailsInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_PurchaseOrderDetailsInsert]
(
	@PurchaseOrderDetailsID int = NULL output,
	@PurchaseOrderID int = NULL,
	@TotalValue float = NULL,
	@UnitPrice float = NULL,
	@QuantityRequired int = NULL,
	@StockOnHand int = NULL,
	@Unit int = NULL,
	@Description nvarchar(500) = NULL,
	@Serial nvarchar(1) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [PurchaseOrderDetails]
	(
		[PurchaseOrderID],
		[TotalValue],
		[UnitPrice],
		[QuantityRequired],
		[StockOnHand],
		[Unit],
		[Description],
		[Serial],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@PurchaseOrderID,
		@TotalValue,
		@UnitPrice,
		@QuantityRequired,
		@StockOnHand,
		@Unit,
		@Description,
		@Serial,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @PurchaseOrderDetailsID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PurchaseOrderDetailsLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_PurchaseOrderDetailsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PurchaseOrderDetailsID],
		[PurchaseOrderID],
		[TotalValue],
		[UnitPrice],
		[QuantityRequired],
		[StockOnHand],
		[Unit],
		[Description],
		[Serial],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [PurchaseOrderDetails]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PurchaseOrderDetailsLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_PurchaseOrderDetailsLoadByPrimaryKey]
(
	@PurchaseOrderDetailsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PurchaseOrderDetailsID],
		[PurchaseOrderID],
		[TotalValue],
		[UnitPrice],
		[QuantityRequired],
		[StockOnHand],
		[Unit],
		[Description],
		[Serial],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [PurchaseOrderDetails]
	WHERE
		([PurchaseOrderDetailsID] = @PurchaseOrderDetailsID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PurchaseOrderDetailsUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_PurchaseOrderDetailsUpdate]
(
	@PurchaseOrderDetailsID int,
	@PurchaseOrderID int = NULL,
	@TotalValue float = NULL,
	@UnitPrice float = NULL,
	@QuantityRequired int = NULL,
	@StockOnHand int = NULL,
	@Unit int = NULL,
	@Description nvarchar(500) = NULL,
	@Serial nvarchar(1) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [PurchaseOrderDetails]
	SET
		[PurchaseOrderID] = @PurchaseOrderID,
		[TotalValue] = @TotalValue,
		[UnitPrice] = @UnitPrice,
		[QuantityRequired] = @QuantityRequired,
		[StockOnHand] = @StockOnHand,
		[Unit] = @Unit,
		[Description] = @Description,
		[Serial] = @Serial,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[PurchaseOrderDetailsID] = @PurchaseOrderDetailsID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PurchaseOrderInsert]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_PurchaseOrderInsert]
(
	@PurchaseOrderID int = NULL output,
	@PurchaseOrderNumber nvarchar(300) = NULL,
	@PurchaseOrderDate datetime = NULL,
	@Management nvarchar(500) = NULL,
	@ISFinalProduct bit = NULL,
	@ISSample bit = NULL,
	@ISProductUnderManufacturing bit = NULL,
	@DeliveryDate datetime = NULL,
	@DeliveryPlace nvarchar(500) = NULL,
	@PaymentRequierment nvarchar(500) = NULL,
	@ManagerName nvarchar(300) = NULL,
	@Signature nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [PurchaseOrder]
	(
		[PurchaseOrderNumber],
		[PurchaseOrderDate],
		[Management],
		[ISFinalProduct],
		[ISSample],
		[ISProductUnderManufacturing],
		[DeliveryDate],
		[DeliveryPlace],
		[PaymentRequierment],
		[ManagerName],
		[Signature],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@PurchaseOrderNumber,
		@PurchaseOrderDate,
		@Management,
		@ISFinalProduct,
		@ISSample,
		@ISProductUnderManufacturing,
		@DeliveryDate,
		@DeliveryPlace,
		@PaymentRequierment,
		@ManagerName,
		@Signature,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @PurchaseOrderID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PurchaseOrderLoadAll]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_PurchaseOrderLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PurchaseOrderID],
		[PurchaseOrderNumber],
		[PurchaseOrderDate],
		[Management],
		[ISFinalProduct],
		[ISSample],
		[ISProductUnderManufacturing],
		[DeliveryDate],
		[DeliveryPlace],
		[PaymentRequierment],
		[ManagerName],
		[Signature],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [PurchaseOrder]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PurchaseOrderLoadByPrimaryKey]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_PurchaseOrderLoadByPrimaryKey]
(
	@PurchaseOrderID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PurchaseOrderID],
		[PurchaseOrderNumber],
		[PurchaseOrderDate],
		[Management],
		[ISFinalProduct],
		[ISSample],
		[ISProductUnderManufacturing],
		[DeliveryDate],
		[DeliveryPlace],
		[PaymentRequierment],
		[ManagerName],
		[Signature],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [PurchaseOrder]
	WHERE
		([PurchaseOrderID] = @PurchaseOrderID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PurchaseOrderUpdate]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_PurchaseOrderUpdate]
(
	@PurchaseOrderID int,
	@PurchaseOrderNumber nvarchar(300) = NULL,
	@PurchaseOrderDate datetime = NULL,
	@Management nvarchar(500) = NULL,
	@ISFinalProduct bit = NULL,
	@ISSample bit = NULL,
	@ISProductUnderManufacturing bit = NULL,
	@DeliveryDate datetime = NULL,
	@DeliveryPlace nvarchar(500) = NULL,
	@PaymentRequierment nvarchar(500) = NULL,
	@ManagerName nvarchar(300) = NULL,
	@Signature nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [PurchaseOrder]
	SET
		[PurchaseOrderNumber] = @PurchaseOrderNumber,
		[PurchaseOrderDate] = @PurchaseOrderDate,
		[Management] = @Management,
		[ISFinalProduct] = @ISFinalProduct,
		[ISSample] = @ISSample,
		[ISProductUnderManufacturing] = @ISProductUnderManufacturing,
		[DeliveryDate] = @DeliveryDate,
		[DeliveryPlace] = @DeliveryPlace,
		[PaymentRequierment] = @PaymentRequierment,
		[ManagerName] = @ManagerName,
		[Signature] = @Signature,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[PurchaseOrderID] = @PurchaseOrderID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clients]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](300) NULL,
	[ClientPhone] [nvarchar](50) NULL,
	[ClientEmail] [nvarchar](300) NULL,
	[ClientCode] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryOrder]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryOrder](
	[DeliveryOrderID] [int] IDENTITY(1,1) NOT NULL,
	[KilometerCounterBefore] [decimal](8, 2) NULL,
	[KilometerCounterAfter] [decimal](8, 2) NULL,
	[TotalPrice] [float] NULL,
	[DeliveryOrderStatusID] [int] NULL,
	[GeneralDeliveryCode] [nvarchar](300) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[TransformationSupplier] [nvarchar](300) NULL,
	[DriverName] [nvarchar](300) NULL,
	[DriverNationID] [int] NULL,
	[CarNumber] [nvarchar](50) NULL,
	[DriverTelephone] [nvarchar](50) NULL,
	[WatingHours] [float] NULL,
	[PermationNumber] [int] NULL,
	[Department] [nvarchar](300) NULL,
	[ClientCode] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DeliveryOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryOrderDetails]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryOrderDetails](
	[DeliveryOrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryOrderID] [int] NULL,
	[DeliveryOrderStatusID] [int] NULL,
	[DeliveryFrom] [nvarchar](300) NULL,
	[DeliveryTo] [nvarchar](300) NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[ReceivableName] [nvarchar](300) NULL,
	[ReceivableTelephone] [nvarchar](50) NULL,
	[Price] [float] NULL,
	[DeliveryOrderCode] [nvarchar](300) NULL,
	[DeliveryOrderDetailsStatusID] [int] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DeliveryOrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeliveryOrderStatus]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryOrderStatus](
	[DeliveryOrderStatusID] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryOrderStatusName] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[DeliveryOrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DesignDetails]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignDetails](
	[DesignDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[JobOrderID] [int] NULL,
	[DesignerID] [int] NULL,
	[JobOrderStatusID] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DesignDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DesignservicesType]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DesignservicesType](
	[DesignservicesTypeID] [int] IDENTITY(1,1) NOT NULL,
	[DigitalPrintingDetailsID] [int] NULL,
	[ServiceID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DesignservicesTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DigitalPrintingDetails]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DigitalPrintingDetails](
	[DigitalPrintingDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[JobOrderID] [int] NULL,
	[PrintingTypeID] [int] NULL,
	[IsRAndV] [bit] NULL,
	[SupplierID] [int] NULL,
	[DeliveryDoneTo] [int] NULL,
	[JobOrderStatusID] [int] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DigitalPrintingDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GeneralLookup]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralLookup](
	[GeneralLookupID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryID] [int] NULL,
	[Name] [nvarchar](300) NULL,
	[Address] [nvarchar](300) NULL,
	[Telephone] [nvarchar](300) NULL,
	[Email] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[GeneralLookupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Giveaways]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giveaways](
	[GiveawayID] [int] IDENTITY(1,1) NOT NULL,
	[JobOrderID] [int] NULL,
	[ItemName] [nvarchar](300) NULL,
	[GiveawayDescription] [nvarchar](300) NULL,
	[GiveawayQuantity] [int] NULL,
	[PricePerItem] [float] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[GiveawayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InAndOutDoorDetails]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InAndOutDoorDetails](
	[InAndOutDoorDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[Item] [nvarchar](500) NULL,
	[MaterialID] [int] NULL,
	[LaminationID] [int] NULL,
	[ServiceID] [int] NULL,
	[Picture] [nvarchar](500) NULL,
	[DeliveryDate] [datetime] NULL,
	[Width] [decimal](6, 2) NULL,
	[Hight] [decimal](6, 2) NULL,
	[TotalSize] [decimal](6, 2) NULL,
	[DeliveryTo] [nvarchar](500) NULL,
	[JobOrderStatusID] [int] NULL,
	[JobOrderID] [int] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[InAndOutDoorDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobOrder]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobOrder](
	[JobOrderID] [int] IDENTITY(1,1) NOT NULL,
	[JobOrderStatusID] [int] NULL,
	[JobOrderCode] [nvarchar](300) NULL,
	[JobOrderDescription] [nvarchar](500) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[JobOrderName] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[JobOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[JobOrderStatus]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobOrderStatus](
	[JobOrderStatusID] [int] IDENTITY(1,1) NOT NULL,
	[JobOrderStatusName] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[JobOrderStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OffsetPrintingDetails]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OffsetPrintingDetails](
	[OffsetPrintingDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[JobOrderID] [int] NULL,
	[PaperKindID] [int] NULL,
	[GSMID] [int] NULL,
	[PrintingHouseID] [int] NULL,
	[FinishID] [int] NULL,
	[JobOrderStatusID] [int] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OffsetPrintingDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Production]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Production](
	[ProductionID] [int] IDENTITY(1,1) NOT NULL,
	[JobOrderID] [int] NULL,
	[ItemID] [int] NULL,
	[Size] [decimal](6, 2) NULL,
	[MaterialID] [int] NULL,
	[DeliveryDate] [datetime] NULL,
	[SupplierID] [int] NULL,
	[DeliveryTo] [nvarchar](500) NULL,
	[ISRemovable] [bit] NULL,
	[RemovableDate] [datetime] NULL,
	[installationDate] [datetime] NULL,
	[ProductStatusID] [int] NULL,
	[InstallStationID] [int] NULL,
	[Note] [nvarchar](500) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PurchaseOrder]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrder](
	[PurchaseOrderID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderNumber] [nvarchar](300) NULL,
	[PurchaseOrderDate] [datetime] NULL,
	[Management] [nvarchar](500) NULL,
	[ISFinalProduct] [bit] NULL,
	[ISSample] [bit] NULL,
	[ISProductUnderManufacturing] [bit] NULL,
	[DeliveryDate] [datetime] NULL,
	[DeliveryPlace] [nvarchar](500) NULL,
	[PaymentRequierment] [nvarchar](500) NULL,
	[ManagerName] [nvarchar](300) NULL,
	[Signature] [nvarchar](300) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PurchaseOrderDetails]    Script Date: 6/16/2015 3:08:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PurchaseOrderDetails](
	[PurchaseOrderDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[PurchaseOrderID] [int] NULL,
	[TotalValue] [float] NULL,
	[UnitPrice] [float] NULL,
	[QuantityRequired] [int] NULL,
	[StockOnHand] [int] NULL,
	[Unit] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[Serial] [nvarchar](1) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseOrderDetailsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DeliveryOrder]  WITH CHECK ADD FOREIGN KEY([ClientCode])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[DeliveryOrder]  WITH CHECK ADD FOREIGN KEY([DeliveryOrderStatusID])
REFERENCES [dbo].[DeliveryOrderStatus] ([DeliveryOrderStatusID])
GO
ALTER TABLE [dbo].[DeliveryOrderDetails]  WITH CHECK ADD FOREIGN KEY([DeliveryOrderID])
REFERENCES [dbo].[DeliveryOrder] ([DeliveryOrderID])
GO
ALTER TABLE [dbo].[DeliveryOrderDetails]  WITH CHECK ADD FOREIGN KEY([DeliveryOrderStatusID])
REFERENCES [dbo].[DeliveryOrderStatus] ([DeliveryOrderStatusID])
GO
ALTER TABLE [dbo].[DeliveryOrderDetails]  WITH CHECK ADD FOREIGN KEY([DeliveryOrderDetailsStatusID])
REFERENCES [dbo].[DeliveryOrderStatus] ([DeliveryOrderStatusID])
GO
ALTER TABLE [dbo].[DesignDetails]  WITH CHECK ADD FOREIGN KEY([DesignerID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[DesignDetails]  WITH CHECK ADD FOREIGN KEY([JobOrderID])
REFERENCES [dbo].[JobOrder] ([JobOrderID])
GO
ALTER TABLE [dbo].[DesignDetails]  WITH CHECK ADD FOREIGN KEY([JobOrderStatusID])
REFERENCES [dbo].[JobOrderStatus] ([JobOrderStatusID])
GO
ALTER TABLE [dbo].[DesignservicesType]  WITH CHECK ADD FOREIGN KEY([DigitalPrintingDetailsID])
REFERENCES [dbo].[DigitalPrintingDetails] ([DigitalPrintingDetailsID])
GO
ALTER TABLE [dbo].[DesignservicesType]  WITH CHECK ADD FOREIGN KEY([ServiceID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[DigitalPrintingDetails]  WITH CHECK ADD FOREIGN KEY([DeliveryDoneTo])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[DigitalPrintingDetails]  WITH CHECK ADD FOREIGN KEY([JobOrderID])
REFERENCES [dbo].[JobOrder] ([JobOrderID])
GO
ALTER TABLE [dbo].[DigitalPrintingDetails]  WITH CHECK ADD FOREIGN KEY([JobOrderStatusID])
REFERENCES [dbo].[JobOrderStatus] ([JobOrderStatusID])
GO
ALTER TABLE [dbo].[DigitalPrintingDetails]  WITH CHECK ADD FOREIGN KEY([PrintingTypeID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[DigitalPrintingDetails]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[GeneralLookup]  WITH CHECK ADD FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[Giveaways]  WITH CHECK ADD FOREIGN KEY([JobOrderID])
REFERENCES [dbo].[JobOrder] ([JobOrderID])
GO
ALTER TABLE [dbo].[InAndOutDoorDetails]  WITH CHECK ADD FOREIGN KEY([JobOrderStatusID])
REFERENCES [dbo].[JobOrderStatus] ([JobOrderStatusID])
GO
ALTER TABLE [dbo].[InAndOutDoorDetails]  WITH CHECK ADD FOREIGN KEY([JobOrderID])
REFERENCES [dbo].[JobOrder] ([JobOrderID])
GO
ALTER TABLE [dbo].[InAndOutDoorDetails]  WITH CHECK ADD FOREIGN KEY([LaminationID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[InAndOutDoorDetails]  WITH CHECK ADD FOREIGN KEY([MaterialID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[InAndOutDoorDetails]  WITH CHECK ADD FOREIGN KEY([ServiceID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[JobOrder]  WITH CHECK ADD FOREIGN KEY([JobOrderStatusID])
REFERENCES [dbo].[DeliveryOrderStatus] ([DeliveryOrderStatusID])
GO
ALTER TABLE [dbo].[OffsetPrintingDetails]  WITH CHECK ADD FOREIGN KEY([FinishID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[OffsetPrintingDetails]  WITH CHECK ADD FOREIGN KEY([GSMID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[OffsetPrintingDetails]  WITH CHECK ADD FOREIGN KEY([JobOrderID])
REFERENCES [dbo].[JobOrder] ([JobOrderID])
GO
ALTER TABLE [dbo].[OffsetPrintingDetails]  WITH CHECK ADD FOREIGN KEY([JobOrderStatusID])
REFERENCES [dbo].[JobOrderStatus] ([JobOrderStatusID])
GO
ALTER TABLE [dbo].[OffsetPrintingDetails]  WITH CHECK ADD FOREIGN KEY([PaperKindID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[OffsetPrintingDetails]  WITH CHECK ADD FOREIGN KEY([PrintingHouseID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[Production]  WITH CHECK ADD FOREIGN KEY([InstallStationID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[Production]  WITH CHECK ADD FOREIGN KEY([ItemID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[Production]  WITH CHECK ADD FOREIGN KEY([JobOrderID])
REFERENCES [dbo].[JobOrder] ([JobOrderID])
GO
ALTER TABLE [dbo].[Production]  WITH CHECK ADD FOREIGN KEY([MaterialID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[Production]  WITH CHECK ADD FOREIGN KEY([ProductStatusID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[Production]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[GeneralLookup] ([GeneralLookupID])
GO
ALTER TABLE [dbo].[PurchaseOrderDetails]  WITH CHECK ADD FOREIGN KEY([PurchaseOrderID])
REFERENCES [dbo].[PurchaseOrder] ([PurchaseOrderID])
GO
USE [master]
GO
ALTER DATABASE [TouchMediadb] SET  READ_WRITE 
GO
