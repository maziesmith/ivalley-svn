USE [master]
GO
/****** Object:  Database [Intranetdb_final]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE DATABASE [Intranetdb_final]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'flyegypt_final', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Intranetdb_final.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'flyegypt_final_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Intranetdb_final_1.ldf' , SIZE = 9216KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Intranetdb_final] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Intranetdb_final].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Intranetdb_final] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Intranetdb_final] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Intranetdb_final] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Intranetdb_final] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Intranetdb_final] SET ARITHABORT OFF 
GO
ALTER DATABASE [Intranetdb_final] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Intranetdb_final] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Intranetdb_final] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Intranetdb_final] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Intranetdb_final] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Intranetdb_final] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Intranetdb_final] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Intranetdb_final] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Intranetdb_final] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Intranetdb_final] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Intranetdb_final] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Intranetdb_final] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Intranetdb_final] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Intranetdb_final] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Intranetdb_final] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Intranetdb_final] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Intranetdb_final] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Intranetdb_final] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Intranetdb_final] SET RECOVERY FULL 
GO
ALTER DATABASE [Intranetdb_final] SET  MULTI_USER 
GO
ALTER DATABASE [Intranetdb_final] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Intranetdb_final] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Intranetdb_final] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Intranetdb_final] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Intranetdb_final', N'ON'
GO
USE [Intranetdb_final]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 28/06/2015 7:26:49 PM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Schema [Training]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE SCHEMA [Training]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  StoredProcedure [dbo].[CalculatePerDiem]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CalculatePerDiem] @StartDate DateTime = null,
									@EndDate DateTime = null,
									@PilotID int
as

Declare /*@StartDate DateTime ,
		@EndDate DateTime , 
		@PilotID int ,*/
		@FirstName Nvarchar(50),
		@SecondName Nvarchar(50),
		@ReportDate Datetime,
		@From_AirportID int,
		@To_AirportID int,
		@FirstName_Back Nvarchar(50),
		@SecondName_Back Nvarchar(50),
		@ReportDate_Back Datetime,
		@From_AirportID_Back int,
		@To_AirportID_Back int,
		@PerDiem int 	 
/*Select @StartDate = Convert (DateTime,'08/01/2012', 101)
Select @EndDate = Convert (Datetime,'08/30/2012',101)
select @PilotID = 3
*/

create table #PilotPerDiemLogCurrrentRun (
	LogID int identity(1,1) not null primary key,
	[PilotID] [int] NOT NULL,
	FromDate DateTime,
	ToDate DateTime,
	Days int,
	InsertedDate DateTime,
	StartDate DateTime,
	EndDate DateTime
	
	)

Declare AllFrom Cursor For 
Select P.FirstName ,
	   P.SecondName,
	   R.ReportDate,
	   S.From_AirportID,
	   S.To_AirportID	   

from Flight R
Inner Join FlightPilot RP on R.ReportID = RP.ReportID 
inner join Pilot P on RP.PilotID = P.PilotID 
Inner Join Sector S on S.ReportID = R.ReportID
Where R.ReportDate >= ISNULL(@StartDate, '01/01/1900') and 
	  R.ReportDate <= ISNULL(@EndDate, '01/01/2500') and 
	  (S.From_AirportID = 17) And 
	  (@PilotID = 0 OR P.PilotID = @PilotID) 
order by R.ReportDate Asc



OPEN AllFrom
FETCH NEXT FROM AllFrom INTO @FirstName ,
							 @SecondName ,
							 @ReportDate ,
							 @From_AirportID ,
							 @To_AirportID


WHILE @@FETCH_STATUS = 0 
BEGIN

	Select Top 1 @FirstName_Back = P.FirstName ,
				 @SecondName_Back = P.SecondName,
				 @ReportDate_Back = R.ReportDate,
				 @From_AirportID_Back = S.From_AirportID,
				 @To_AirportID_Back =  S.To_AirportID	   

	from Flight R
	Inner Join FlightPilot RP on R.ReportID = RP.ReportID 
	inner join Pilot P on RP.PilotID = P.PilotID 
	Inner Join Sector S on S.ReportID = R.ReportID
	Where R.ReportDate >= @ReportDate and 		  
		  (S.To_AirportID = 17) And 
		  (@PilotID = 0 OR P.PilotID = @PilotID) 
	order by R.ReportDate Asc	
	
	Select @PerDiem = DATEDIFF(day, @ReportDate , @ReportDate_Back) 
	
	if not exists(select LogID 
				  from PilotPerDiemLog 
				  where PilotID = @PilotID and 
						StartDate = @StartDate and 
						EndDate = @EndDate)
	Insert into PilotPerDiemLog (PilotID, FromDate , ToDate , Days, InsertedDate, StartDate, EndDate)
	values (@PilotID,@ReportDate , @ReportDate_Back, @PerDiem, GETDATE(), @StartDate, @EndDate )
	
	Insert into #PilotPerDiemLogCurrrentRun (PilotID, FromDate , ToDate , Days, InsertedDate, StartDate, EndDate)
	values (@PilotID,@ReportDate , @ReportDate_Back, @PerDiem, GETDATE(), @StartDate, @EndDate )
	
		
	FETCH NEXT FROM AllFrom INTO @FirstName ,
								 @SecondName ,
								 @ReportDate ,
								 @From_AirportID ,
								 @To_AirportID   
END
CLOSE AllFrom
DEALLOCATE AllFrom


Select L.*, P.FirstName, P.SecondName, P.ShortName , P.SureName from #PilotPerDiemLogCurrrentRun L
Inner join Pilot P on P.PilotID = L.PilotID
Where L.PilotID = @PilotID And 
	  (FromDate >= ISNULL(@StartDate, '01/01/1900') and 
	   ToDate <= ISNULL(@EndDate, '01/01/2500'))

--Select L.*, P.FirstName, P.SecondName, P.ShortName , P.SureName from PilotPerDiemLog L
--Inner join Pilot P on P.PilotID = L.PilotID
--Where L.PilotID = @PilotID And 
--	  (FromDate >= ISNULL(@StartDate, '01/01/1900') and 
--	   ToDate <= ISNULL(@EndDate, '01/01/2500'))
	   

DROP TABLE #PilotPerDiemLogCurrrentRun

GO
/****** Object:  StoredProcedure [dbo].[GetAirPlaneActualBurnOff]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAirPlaneActualBurnOff] @AirPlaneID int = 0,
										   @StartDate DateTime = null,
										   @EndDate DateTime = null
as
/*
Declare @StartDate DateTime ,
		@EndDate DateTime ,
		@AirPlaneID int 
Select @StartDate = Convert (DateTime,'10/01/2012', 101)
Select @EndDate = Convert (Datetime,'10/10/2012',101)
Select @AirPlaneID = 0*/
Select SUM(IsNull(S.ActualBurnOff, 0)) ActualBurnOFF , A.Name 
From  Sector S 
Inner Join AirPlane A on A.AirPlaneID = S.AirCraft_AirPlaneID
Where S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and 
	  S.SectorDate <= ISNULL(@EndDate, '01/01/2500') And 
	  (@AirPlaneID = 0 OR A.AirPlaneID = @AirPlaneID)
Group by A.AirPlaneID,  A.Name

GO
/****** Object:  StoredProcedure [dbo].[GetAllActivityLog]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllActivityLog] @FromDate DateTime = null,
										 @ToDate DateTime = null,
										 @ActivityID int = 0,
										 @CrewID int = 0 
										 
as
/*
Declare @FromDate DateTime ,
		@ToDate DateTime ,
		@ActivityID int 
Select @FromDate = Convert (DateTime,'10/05/2012', 101)
Select @ToDate = Convert (Datetime,'10/07/2012',101)
Select @ActivityID = 0
*/
Select DISTINCT AL.FromDate, AL.TODate , AL.CrewID, AL.ActivityID
from ActivitiesLog AL 
Inner JOIN Activities A ON A.ActivityID = AL.ActivityID
Inner JOIN Crew C ON C.CrewID = AL.CrewID
Where (@ActivityID = 0 OR A.ActivityID = @ActivityID) And 
	  (AL.Date >= ISNULL(@FromDate, '01/01/1900') ) and 
	  (AL.Date <= ISNULL(@ToDate, '01/01/2500') )

GO
/****** Object:  StoredProcedure [dbo].[GetAllActivityLogForDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllActivityLogForDelete] @FromDate DateTime = null,
												  @ToDate DateTime = null,
												  @ActivityID int = 0,
												  @CrewID int = 0 
										 
as
/*
Declare @FromDate DateTime ,
		@ToDate DateTime ,
		@ActivityID int 
Select @FromDate = Convert (DateTime,'10/05/2012', 101)
Select @ToDate = Convert (Datetime,'10/07/2012',101)
Select @ActivityID = 0
*/
Select AL.*
from ActivitiesLog AL 
Inner JOIN Activities A ON A.ActivityID = AL.ActivityID
Inner JOIN Crew C ON C.CrewID = AL.CrewID
Where (@ActivityID = 0 OR A.ActivityID = @ActivityID) And 
	  (AL.Date >= ISNULL(@FromDate, '01/01/1900') ) and 
	  (AL.Date <= ISNULL(@ToDate, '01/01/2500') )

GO
/****** Object:  StoredProcedure [dbo].[GetAllCoPilots]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCoPilots] as

Select *, ShortName + ' - ' + FirstName + ' ' + SecondName + ' ' + SureName  DisplayName from Pilot where (ispilot <> 1) or (ispilot is null)

GO
/****** Object:  StoredProcedure [dbo].[GetAllCrew]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCrew] as  
  
Select *, ShortName + ' - ' + Name  DisplayName from Crew

GO
/****** Object:  StoredProcedure [dbo].[GetAllCrewHours]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCrewHours] @StartDate DateTime = null,
								  @EndDate DateTime = null
as
/*Declare @StartDate DateTime ,
		@EndDate DateTime  
Select @StartDate = Convert (DateTime,'11/01/2012', 101)
Select @EndDate = Convert (Datetime,'11/30/2012',101)*/
Select A.* ,
Case S.IsHeavyCrew when 1 then 
ISNULL(SUM(Datepart(hh,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))*2/3) , '')
else 
ISNULL(SUM(datepart(hh,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))), '') end TimeBlockHH 
,
Case S.IsHeavyCrew when 1 then 
ISNULL(SUM(Datepart(MI,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))*2/3) , '')
else 
ISNULL(SUM(datepart(MI,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))), '') end TimeBlockMM
From 
(
Select Crew.CrewID, Crew.Name , [Days].[Day] , Crew.IDNO
from Crew Cross join [Days]) as A 
Left join SectorCrew SC on A.CrewID = SC.CrewID
Left Join Sector S on Day(S.SectorDate) = A.[Day] AND S.SectorID = SC.SectorID

Where (S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and 

	  /* not Dead head or trainee */
	  (SC.PositionID <> 12 ) AND
	  (SC.PositionID <> 13) AND 
	  S.SectorDate <= ISNULL(@EndDate, '01/01/2500')) OR
	  S.SectorID IS null	  
Group by A.CrewID , A.Name , A.Day, A.IDNO , S.IsHeavyCrew
order BY A.CrewID, A.Day

GO
/****** Object:  StoredProcedure [dbo].[GetAllCrewHours_Summary]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllCrewHours_Summary] @StartDate DateTime = null,  
         @EndDate DateTime = null  
as 


Select Name,shortName,
(select grandtotalhours from GetCrewHoursWithinRangeAsTable(CrewID,@StartDate, @EndDate)) WorkHours,
(select grandtotalmins from GetCrewHoursWithinRangeAsTable(CrewID,@StartDate, @EndDate)) WorkMins,
(select GrandTotalDHDHours from GetCrewDHDWithinRangeAsTable(CrewID,@StartDate, @EndDate)) DHDHours,
(select GrandTotalDHDMins from GetCrewDHDWithinRangeAsTable(CrewID,@StartDate, @EndDate)) DHDMins
 from Crew

GO
/****** Object:  StoredProcedure [dbo].[GetAllPilots]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllPilots] as

Select *, ShortName + ' - ' + FirstName + ' ' + SecondName + ' ' + SureName  DisplayName from Pilot where ispilot = 1

GO
/****** Object:  StoredProcedure [dbo].[GetAllPilotsHours_Summary]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetAllPilotsHours_Summary]   
         @StartDate DateTime = null,  
         @EndDate DateTime = null  
as 


Select FirstName + ' ' + SureName Name,shortName,
(select grandtotalhours from GetPilotReportWithinRangeAsTable(PilotID,@StartDate, @EndDate)) WorkHours,
(select grandtotalmins from GetPilotReportWithinRangeAsTable(PilotID,@StartDate, @EndDate)) WorkMins,
(select GrandTotalDHDHours from GetPilotDHDWithinRangeAsTable(PilotID,@StartDate, @EndDate)) DHDHours,
(select GrandTotalDHDMins from GetPilotDHDWithinRangeAsTable(PilotID,@StartDate, @EndDate)) DHDMins,
(select GrandTotalSimHours from GetPilotSimulationWithinRangeAsTable(PilotID,@StartDate, @EndDate)) SimHours,
(select GrandTotalSimMins from GetPilotSimulationWithinRangeAsTable(PilotID,@StartDate, @EndDate)) SimMins
 from Pilot

GO
/****** Object:  StoredProcedure [dbo].[GetCrewByReportID]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCrewByReportID] @ReportID int    
as    
    
Select * from SectorCrew     
Where SectorID = @ReportID
order by PositionID

GO
/****** Object:  StoredProcedure [dbo].[GetCrewBySectorID]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCrewBySectorID] @SectorID int  
as  
  
Select * from SectorCrew   
Where SectorID = @SectorID

GO
/****** Object:  StoredProcedure [dbo].[GetCrewByUserName]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCrewByUserName] @UserName nvarchar(50)
as

select * 
from Crew 
where UserName = @UserName

GO
/****** Object:  StoredProcedure [dbo].[GetCrewHours]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCrewHours] @CrewID int,  
         @StartDate DateTime = null,  
         @EndDate DateTime = null  
as  
  
Declare @TotalH int,  
  @TotalMin int,  
  @CTotalH int,  
  @CTotalMin int,  
  @DayH int,   
  @DayM int,  
  @NightH int,  
  @NightM int  
  
select @DayH = sum(DayH), @DayM = sum(DayM), @NightH = sum(NightH), @NightM = sum(NightM)  
From(  
Select   
case when IsHeavyCrew = 1 then ((sum(datepart(hh,s.FlyAtDay )))*2)/3  
else sum(datepart(hh,s.FlyAtDay ))  end DayH,  
  
case when IsHeavyCrew = 1 then ((sum(datepart(MI,s.FlyAtDay )))*2)/3  
else sum(datepart(MI,s.FlyAtDay )) end DayM,  
  
case when IsHeavyCrew = 1 then ((sum(datepart(hh,s.FlyAtNight )))*2)/3  
else sum(datepart(hh,s.FlyAtNight )) end NightH,   
  
case when IsHeavyCrew = 1 then ((sum(datepart(MI,s.FlyAtNight )))*2)/3  
else sum(datepart(MI,s.FlyAtNight )) end NightM  
  
from Sector S   
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID  
Inner Join AirPort A on S.From_AirportID = A.AirPortID  
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID  
Inner Join SectorCrew SP on S.SectorID = SP.SectorID  
Inner Join Crew C on SP.CrewID = C.CrewID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where C.CrewID = @CrewID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND  
   (S.IsPAX is null or S.IsPAX <> 1 ) AND  
   /* not Dead head */  
   --((SP.PositionID <> 12 ) and  -- trainee included in crew hours 
   (SP.PositionID <> 13) 
group by IsHeavyCrew  
) as A  
  
  
/* grand totals ( TBF + all times till start date + totals within start date and end date ) */  
Select @TotalH =  @DayH + @NightH  , @TotalMin = @DayM + @NightM  
Select @TotalH =  @TotalH + (@TotalMin/ 60)  
Select @TotalMin = @TotalMin - (@TotalMin/60)*60  
  
  
Select C.Name , C.LicenseNo,c.IDNO,  
  
    @TotalH+(@TotalMin/60) GrandTotalHours ,      
    @TotalMin-((@TotalMin/60)*60) GrandTotalMin,  
      
    Ap.Name PlaneName, A.IATACode, A2.IATACode , S.FlightNo, S.IsHeavy, S.SectorDate, AP.AirPlaneID, S.ChoxOff, S.ChoxOn,   
/*Right('00'+ CONVERT(VARCHAR,DateDiff(Second ,S.ChoxOn, S.ChoxOff ) / 3600),2) + ':' + Right('00'+ CONVERT(VARCHAR,(DateDiff(Second ,S.ChoxOn, S.ChoxOff ) % 3600)/60),2) TimeBlock, */  
Case IsHeavyCrew when 1 then RIGHT('00' + Convert(varchar, Datepart(hh,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))*2/3),2) + ' : ' + RIGHT('00' + Convert(varchar, Datepart(MI,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight)
)*2/3),2)  
else RIGHT('00' + Convert(varchar,datepart(hh,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))),2) + ' : ' + RIGHT('00' + Convert(varchar,datepart(MI,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))),2) end TimeBlock  
, IsHeavyCrew   
from Sector S  
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID  
Inner Join AirPort A on S.From_AirportID = A.AirPortID  
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID  
Inner Join SectorCrew SP on S.SectorID = SP.SectorID  
Inner Join Crew C on SP.CrewID = C.CrewID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where C.CrewID = @CrewID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND     
   (S.IsPAX is null or S.IsPAX <> 1 ) AND  
   /* not Dead head */  
   --((SP.PositionID <> 12 ) and  -- trainee included in crew hours 
   (SP.PositionID <> 13)  
order by S.SectorDate  
  


If Exists (select Name 
		   from sysobjects 
		   where name = 'GetCrewDHDHours' and
		        xtype = 'P')
Drop Procedure GetCrewDHDHours

GO
/****** Object:  StoredProcedure [dbo].[GetCrewSchedule]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCrewSchedule] @CrewID int,
								  @StartDate DateTime = null,
								  @EndDate DateTime = null
as
/*
declare @CrewID int
Select @CrewID = 4 
Declare @StartDate DateTime ,
		@EndDate DateTime  
Select @StartDate = Convert (DateTime,'10/10/2012', 101)
Select @EndDate = Convert (Datetime,'10/18/2012',101)
*/
Select distinct S.SectorID, S.SectorDate , S.IsPAX,
CASE DATEPART(weekday,S.SectorDate)
WHEN 1 THEN 'SUN'
WHEN 2 THEN 'MON'
WHEN 3 THEN 'TUE'
WHEN 4 THEN 'WED'
WHEN 5 THEN 'THU'
WHEN 6 THEN 'FRI'
WHEN 7 THEN 'SAT'
END [Day], 
S.FlightNo, 
			Stuff(( Select ' / ' + Name 
		    From Sector SS2 
		    Inner Join SectorCrew SP2 on SS2.SectorID = SP2.SectorID 
		    inner join Crew P2 on SP2.CrewID = P2.CrewID 
		    where SS2.SectorID = S.SectorID 
			for XML path('')),1,3,'') Crew 
			,
			(select min(SS1.STD) 
			from Sector SS1 
			where SS1.SectorID = S.SectorID)  STD
			 , 
			(select max(SS22.STA) 
			from Sector SS22 
			where SS22.SectorID = S.SectorID) STA
			, 
			Stuff(( Select ' * ' + A.IATACode + ' - ' + A2.IATACode 
		    From Sector SS 
			Inner Join AirPort A on SS.From_AirportID = A.AirPortID
			Inner Join AirPort A2 on SS.To_AirportID = A2.AirPortID
		    where SS.SectorID = S.SectorID 
			for XML path('')),1,3,'') [From_TO]  ,
			S.ChoxOff,
			S.ChoxOn,
			AP.AirPlaneID AirPlane
From Sector S 
Inner Join SectorCrew SP on S.SectorID = SP.SectorID 
inner join Crew P on SP.CrewID = P.CrewID 
inner join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID
where  (@CrewID = 0 Or P.CrewID = @CrewID) and 
	   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and 
	   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') /*And 
	  (S.IsPAX <> 1 or S.IsPAX is null)*/
order by S.SectorDate

GO
/****** Object:  StoredProcedure [dbo].[GetCrewSectors]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCrewSectors] @CrewID int,
								 @FromDate DateTime, 
								 @ToDate DateTime									   
as 

Select S.*, datepart(hh,S.STD) STDHour, C.IATACode from Flight F
Inner Join Sector S on F.FlightID = S.FlightID
Inner Join SectorCrew SP on S.SectorID = SP.SectorID
left Join AirPort C on S.PilotCityID = C.AirPortID
where SP.CrewID = @CrewID and 
	  S.SectorDate >= ISNULL(@FromDate, '01/01/1900') and   
      S.SectorDate <= ISNULL(@ToDate, '01/01/2500')
Order by S.SectorDate asc, datepart(hh,S.STD)

GO
/****** Object:  StoredProcedure [dbo].[GetCrewTransactions]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetCrewTransactions] @CrewID int, 
									  @StartDate DateTime = null ,  
									  @EndDate DateTime= null
as

/*
Declare @StartDate DateTime ,  
		@EndDate DateTime    ,
		@CrewID int
Select @StartDate = Convert (DateTime,'08/01/2012', 101)  
Select @EndDate = Convert (Datetime,'08/18/2012',101)  
*/

create table #CrewStatusInPeriod (     
 [CrewID] [int] NOT NULL,    
 StatusDate DateTime,     
 StatusType nvarchar(50),    
 FlightNo nvarchar(10),    
 [Route] nvarchar(12),    
 STD DateTime,    
 STA DateTime,    
 City nvarchar(10)   ,  
 SectorID int  
 )    
    
insert into #CrewStatusInPeriod    
Select A.* From (    
Select P.CrewID, S.SectorDate, 'WORK' as Status ,S.FlightNo , FromA.IATACode  + ' ' + ToA.IATACode as [Route] ,S.STD , S.STA , City.IATACode NightCity  , S.SectorID  
from Sector S     
inner join AirPort FromA on S.From_AirportID = FromA.AirPortID    
inner join AirPort ToA on S.To_AirportID = ToA.AirPortID    
Left join AirPort City on S.PilotCityID = city.AirPortID    
inner join SectorCrew SP on SP.SectorID = S.SectorID    
inner join Crew P on SP.CrewID = P.CrewID    
                      OR SP.CrewID is null    
    
where (Sp.CrewID = @CrewID) and    
   S.SectorDate between ISNULL(@StartDate, '01/01/1900') and     
       ISNULL(@EndDate, '01/01/2500')    
      ) as A     
    
insert into #CrewStatusInPeriod    
Select P.CrewID, PT.DateFrom, T.Name, null, null, PT.DateFrom, PT.DateTo ,City.IATACode , null   
from CrewTransaction PT     
Inner join Crew P on PT.CrewID = P.CrewID    
inner join [Transactions] T on PT.TransactionsID = T.TransactionsID    
Left join AirPort City on PT.CrewCityID = city.AirPortID    
Where PT.DateFrom between ISNULL(@StartDate, '01/01/1900') and     
       ISNULL(@EndDate, '01/01/2500') and     
      p.CrewID = @CrewID    
    
    
;with amonth(day) as    
(    
    select @StartDate as day    
        union all    
    select day + 1    
        from amonth    
        where day < @EndDate    
)    
Select *, SUBSTRING(datename(dw,D.Day),0,4) [StatusDay] from #CrewStatusInPeriod PS    
Right join amonth D on D.Day = CONVERT(date, PS.StatusDate)    
order by D.Day, DatePart(hh,PS.STD)       
    
Drop Table #CrewStatusInPeriod

GO
/****** Object:  StoredProcedure [dbo].[GetCrewTrxByCrewID]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetCrewTrxByCrewID] @FromDate DateTime = null,  
									  @ToDate DateTime = null,             
									  @CrewID int = 0   
             
as  
Select PT.*, P.Name DisplayName, T.Name TrxName, A.IATACode
from CrewTransaction PT   
Inner JOIN transactions T ON T.TransactionsID = PT.TransactionsID  
Inner Join Crew P on PT.CrewID = P.CrewID
left join AirPort A on A.AirPortID = PT.CrewCityID
Where (PT.DateFrom >= ISNULL(@FromDate, '01/01/1900') ) and   
	  (PT.DateFrom <= ISNULL(@ToDate, '01/01/2500') )  and 
	  (PT.CrewID = @CrewID Or @CrewID =0)

GO
/****** Object:  StoredProcedure [dbo].[GetFlightLog]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlightLog] @ReportID int    
as    
    
select * , datepart(hh,s.FlyAtDay ) + datepart(hh,s.FlyAtNight ) + ((datepart(MI,s.FlyAtDay ) + datepart(MI,s.FlyAtNight ))/60) As TotalHours , (datepart(MI,s.FlyAtDay ) + datepart(MI,s.FlyAtNight ))- (((datepart(MI,s.FlyAtDay ) + datepart(MI,s.FlyAtNight
  
 ))/60)*60) As TotalMins , DATEDIFF(MINUTE,ATD, ATA )/60 TotalATAHours , (DATEDIFF(MINUTE,ATD, ATA )) - (DATEDIFF(MINUTE,ATD, ATA )/60)*60 TotalATAMin  
from Sector S    
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID    
Inner Join AirPort A on S.From_AirportID = A.AirPortID    
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID    
LEFT Join [Delay] D1 on S.DepDelayID1 = D1.DelayID    
LEFT Join [Delay] D2 on S.DepDelayID2 = D2.DelayID    
LEFT Join [Delay] D3 on S.DepDelayID3 = D3.DelayID    
LEFT Join [Delay] D11 on S.ArrDelayID1 = D11.DelayID    
LEFT Join [Delay] D22 on S.ArrDelayID2 = D22.DelayID    
LEFT Join [Delay] D33 on S.ArrDelayID3 = D33.DelayID    
--Left Join ReportPilot RP on R.ReportID = Rp.ReportID    
--Left Join Pilot P on RP.PilotID = P.PilotID    
--Left join Position PP on RP.PositionID = PP.PositionID    
--Left Join ReportCrew RC on R.ReportID = RC.ReportID    
--Left Join Crew C on RC.CrewID = C.CrewID    
--Left join Position CP on RC.PositionID = CP.PositionID    
where S.FlightID = @ReportID

GO
/****** Object:  StoredProcedure [dbo].[GetFlightLogCrew]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlightLogCrew] @ReportID int  
as  
  
select C.Name, CP.Title   
from Sector S  
--Left Join ReportPilot RP on R.ReportID = Rp.ReportID  
--Left Join Pilot P on RP.PilotID = P.PilotID  
--Left join Position PP on RP.PositionID = PP.PositionID  
inner Join SectorCrew SC on S.SectorID = SC.SectorID  
inner Join Crew C on SC.CrewID = C.CrewID  
inner join Position CP on SC.PositionID = CP.PositionID  
where S.FlightID = @ReportID

GO
/****** Object:  StoredProcedure [dbo].[GetFlightLogPilot]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlightLogPilot] @ReportID int    
as    
    
select distinct PP.Title, P.FirstName, P.SecondName , P.SureName     
from Sector S    
inner Join SectorPilot SP on S.SectorID = SP.SectorID    
inner Join Pilot P on SP.PilotID = P.PilotID    
inner join Position PP on SP.PositionID = PP.PositionID    
--inner Join ReportCrew RC on R.ReportID = RC.ReportID    
--inner Join Crew C on RC.CrewID = C.CrewID    
--inner join Position CP on RC.PositionID = CP.PositionID    
where S.FlightID = @ReportID

GO
/****** Object:  StoredProcedure [dbo].[GetFlightLogTotalTime]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlightLogTotalTime] @ReportID int
as
Declare	@DayH int, 
		@DayM int,
		@NightH int,
		@NightM int,
		@TotalH int,
		@TotalM int

select @DayH=SUM(datepart(hh,s.FlyAtDay)),@DayM=SUM(datepart(MI,s.FlyAtDay)),@NightH=SUM(datepart(hh,s.FlyAtNight)), @NightM=SUM(datepart(MI,s.FlyAtNight))
from Sector S 
where S.SectorID = @ReportID

Select @DayH = @DayH + (@DayM/60)
Select @DayM = @DayM - ((@DayM/60)*60)

Select @NightH = @NightH + (@NightM/60)
Select @NightM = @NightM - ((@NightM/60)*60)

select @TotalH  = @DayH + @NightH + (@NightM + @DayM)/60
select @TotalM = (@DayM + @NightM) - ((@NightM + @DayM)/60)

Select @DayH DayH , 
		@DayM DayM ,
		@NightH NightH ,
		@NightM NightM ,
		@TotalH TotalH  ,
		@TotalM TotalM

GO
/****** Object:  StoredProcedure [dbo].[GetFlyHoursReport]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFlyHoursReport] @StartDate DateTime = null,
									@EndDate DateTime = null
as
/*
Declare @StartDate DateTime ,
									@EndDate DateTime  
Select @StartDate = Convert (DateTime,'08/01/2012', 101)
Select @EndDate = Convert (Datetime,'08/30/2012',101)
*/
Select Ap.Name , COUNT(S.SectorID) SectorCount/*,S.ATD, S.ATA*/,
/*Right('00'+ CONVERT(VARCHAR,DateDiff(Second ,S.ChoxOff, S.ChoxOn ) / 3600),2) + ':' + Right('00'+ CONVERT(VARCHAR,(DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60),2)
,S.ChoxOn, S.ChoxOff,*/
sum(case when (DateDiff(Second ,S.ATD, S.ATA) / 3600) < 0 then (DateDiff(Second ,S.ATD, S.ATA) / 3600) + 24 else (DateDiff(Second ,S.ATD, S.ATA) / 3600) end) + 
sum(case when ((DateDiff(Second ,S.ATD, S.ATA ) % 3600)/60) < 0 then ((DateDiff(Second ,S.ATD, S.ATA ) % 3600)/60) + 60 else ((DateDiff(Second ,S.ATD, S.ATA ) % 3600)/60) end )/60 MOVH,
sum(case when ((DateDiff(Second ,S.ATD, S.ATA ) % 3600)/60) < 0 then ((DateDiff(Second ,S.ATD, S.ATA ) % 3600)/60) + 60 else ((DateDiff(Second ,S.ATD, S.ATA ) % 3600)/60) end ) - 
((sum(case when ((DateDiff(Second ,S.ATD, S.ATA ) % 3600)/60) < 0 then ((DateDiff(Second ,S.ATD, S.ATA ) % 3600)/60) + 60 else ((DateDiff(Second ,S.ATD, S.ATA ) % 3600)/60) end ))/60)*60 MOVM
,
sum(datepart(hh,s.FlyAtDay )) + sum(datepart(hh,s.FlyAtNight )) + (sum(datepart(MI,s.FlyAtDay )) + sum(datepart(MI,s.FlyAtNight )))/60 FH,
sum(datepart(MI,s.FlyAtDay )) + sum(datepart(MI,s.FlyAtNight )) - ((sum(datepart(MI,s.FlyAtDay )) + sum(datepart(MI,s.FlyAtNight )))/60)*60 FM

from Sector S
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID
Where S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and 
	  S.SectorDate <= ISNULL(@EndDate, '01/01/2500') And 
	  (S.IsPAX <> 1 or S.IsPAX is null) 
/*Where R.ReportDate >= @StartDate and 
	  R.ReportDate <= @EndDate*/
Group By Ap.Name

GO
/****** Object:  StoredProcedure [dbo].[GetNextCrewSector]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNextCrewSector] @SectorID int,
									   @CrewID int	    
as      
    
Select top 1 s.FlightID,s.SectorID, s.FlightNo, S.SectorDate, S.STD, s.PilotCityID 
from Sector S    
inner Join SectorCrew SP on S.SectorID = SP.SectorID 
where S.SectorDate > (Select S2.SectorDate From Sector S2 where S2.SectorID = @SectorID and S2.FlightID = S.FlightID) and
	  SP.CrewID = @CrewID
order by S.SectorDate asc, datepart(hh,S.STD)--and datepart(hh,S.STD) > datepart(hh,(Select S3.STD From Sector S3 where S3.SectorID = @SectorID and S3.FlightID = S.FlightID))

GO
/****** Object:  StoredProcedure [dbo].[GetNextPilotSector]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetNextPilotSector] @SectorID int,
									   @PilotID int	    
as      
    
Select top 1 s.FlightID,s.SectorID, s.FlightNo, S.SectorDate, S.STD, s.PilotCityID 
from Sector S    
inner Join SectorPilot SP on S.SectorID = SP.SectorID 
where S.SectorDate > (Select S2.SectorDate From Sector S2 where S2.SectorID = @SectorID and S2.FlightID = S.FlightID) and
	  SP.PilotID = @PilotID
order by S.SectorDate asc, datepart(hh,S.STD)--and datepart(hh,S.STD) > datepart(hh,(Select S3.STD From Sector S3 where S3.SectorID = @SectorID and S3.FlightID = S.FlightID))

GO
/****** Object:  StoredProcedure [dbo].[GetPAXFlights]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPAXFlights] as

Select R.*
from Flight R
Where R.IsPAX = 1

GO
/****** Object:  StoredProcedure [dbo].[GetPAXReport]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPAXReport] @StartDate DateTime = null,
								@EndDate DateTime = null,
								@AirPlaneID int = 0 
as



Select S.SectorDate ReportDate, A.IATACode , A2.IATACode , S.NoOfPax_A , S.NoOfPax_C , S.NoOfPax_I , S.FuleUplifted , S.ActualBurnOff , S.StandardBurnOff , S.FlightNo, AP.Name AirPlane
from Sector S 
Inner Join AirPort A on S.From_AirportID = A.AirPortID
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID
inner JOIN AirPlane AP ON S.AirCraft_AirPlaneID = AP.AirPlaneID
Where S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and 
	  S.SectorDate <= ISNULL(@EndDate, '01/01/2500') And 
	 (S.IsPAX <> 1 or S.IsPAX is null) and 
	 (@AirPlaneID = 0 or S.AirCraft_AirPlaneID = @AirPlaneID) 	 
Order BY S.SectorDate

GO
/****** Object:  StoredProcedure [dbo].[GetPAXSectors]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPAXSectors] as

Select R.*
from Sector R
Where R.IsPAX = 1

GO
/****** Object:  StoredProcedure [dbo].[GetPerDiemLog]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPerDiemLog] @StartDate DateTime = null,
								@EndDate DateTime = null,
								@PilotID int
as

Select L.*, P.FirstName, P.SecondName, P.ShortName , P.SureName from PilotPerDiemLog L
Inner join Pilot P on P.PilotID = L.PilotID
Where L.PilotID = @PilotID And 
	  (StartDate = ISNULL(@StartDate, '01/01/1900') and 
	   EndDate = ISNULL(@EndDate, '01/01/2500'))

GO
/****** Object:  StoredProcedure [dbo].[GetPilotByReportID]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotByReportID] @ReportID int    
as    
    
Select * from SectorPilot     
Where SectorID = @ReportID
order by PositionID

GO
/****** Object:  StoredProcedure [dbo].[GetPilotBySectorID]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotBySectorID] @SectorID int  
as  
  
Select * from SectorPilot   
Where SectorID = @SectorID

GO
/****** Object:  StoredProcedure [dbo].[GetPilotByUserName]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotByUserName] @UserName nvarchar(50)
as

select * 
from Pilot 
where UserName = @UserName

GO
/****** Object:  StoredProcedure [dbo].[GetPilotDHDWithinRange]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotDHDWithinRange] @PilotID int,  
        @StartDate DateTime = null,  
        @EndDate DateTime = null  
as  
  
  
Declare @TotalH int,  
  @TotalMin int,  
  @CTotalH int,  
  @CTotalMin int,  
  @DayH int,   
  @DayM int,  
  @NightH int,  
  @NightM int,  
  @TotalMonthDayH int,  
  @TotalMonthDayM int,  
  @TotalMonthNightH int,  
  @TotalMonthNightM int,  
  @TotalMonthH int,  
  @TotalMonthM int,      
  @Total_TBF_H int,  
  @Total_TBF_M int  
  
select @CTotalH = max(TBF_Total_Hours) , @CTotalMin = max(TBF_Total_Mins), @DayH = sum(DayH), @DayM = sum(DayM), @NightH = sum(NightH), @NightM = sum(NightM)  
From(  
Select TBF_Total_Hours , TBF_Total_Mins,  
case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtDay )))*2)/3  
else sum(datepart(hh,s.FlyAtDay ))  end DayH,  
  
case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtDay )))*2)/3  
else sum(datepart(MI,s.FlyAtDay )) end DayM,  
  
case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtNight )))*2)/3  
else sum(datepart(hh,s.FlyAtNight )) end NightH,   
  
case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtNight )))*2)/3  
else sum(datepart(MI,s.FlyAtNight )) end NightM  
  
from Sector S  
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID  
Inner Join AirPort A on S.From_AirportID = A.AirPortID  
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID  
Inner Join SectorPilot SP on S.SectorID = SP.SectorID  
Inner Join Pilot P on SP.PilotID = P.PilotID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where P.PilotID = @PilotID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND     
     
   /* Dead head */  
   (SP.PositionID = 13 ) 
group by IsHeavy, TBF_Total_Hours , TBF_Total_Mins  
) as A  

  
/* grand totals ( totals within start date and end date ) */  
Select @TotalH = @DayH + @NightH  ,@TotalMin = @DayM + @NightM  
Select @TotalH =  @TotalH + (@TotalMin/ 60)  
Select @TotalMin = @TotalMin - (@TotalMin/60)*60  
  
  
/* Totals for current date range */  
Select @TotalMonthDayH = @DayH + (@DayM/60)  
Select @TotalMonthDayM = @DayM - (@DayM/60)*60  
  
Select @TotalMonthNightH = @NightH + (@NightM/60)  
Select @TotalMonthNightM = @NightM - (@NightM/60)*60  
  
Select @TotalMonthH = @TotalMonthDayH + @TotalMonthNightH + ((@TotalMonthDayM+@TotalMonthNightM)/60)  
Select @TotalMonthM = (@TotalMonthDayM+@TotalMonthNightM) - (((@TotalMonthDayM+@TotalMonthNightM)/60)*60)  
  
  
  
Select P.FirstName , P.SecondName , P.SureName , P.LicenseNo,P.ShortName , @TotalH+TBF_Total_Hours+((TBF_Total_Mins+@TotalMin)/60) GrandTotalHours ,@Total_TBF_H+TBF_Total_Hours + ((@Total_TBF_M+TBF_Total_Mins)/60)  as TBF_Total_Hours, @TotalMin+
TBF_Total_Mins -(((TBF_Total_Mins+@TotalMin)/60)*60) GrandTotalMin, @Total_TBF_M+TBF_Total_Mins - (((@Total_TBF_M+TBF_Total_Mins)/60)*60) as TBF_Total_Mins,@TotalMonthH MonthTotalH, @TotalMonthM MonthTotalMin, Ap.Name, A.IATACode, A2.IATACode , S.FlightNo, S.IsHeavy
, S.SectorDate, AP.AirPlaneID, S.ChoxOff, S.ChoxOn, P.IsPilot,  
/*Right('00'+ CONVERT(VARCHAR,DateDiff(Second ,S.ChoxOn, S.ChoxOff ) / 3600),2) + ':' + Right('00'+ CONVERT(VARCHAR,(DateDiff(Second ,S.ChoxOn, S.ChoxOff ) % 3600)/60),2) TimeBlock, */  
Case isheavy when 1 then RIGHT('00' + Convert(varchar, Datepart(hh,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))*2/3),2) + ' : ' + RIGHT('00' + Convert(varchar, Datepart(MI,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))*2/
3),2)  
else RIGHT('00' + Convert(varchar,datepart(hh,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))),2) + ' : ' + RIGHT('00' + Convert(varchar,datepart(MI,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))),2) end TimeBlock,   
  
case isheavy when 1 then RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtDay)*2/3),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtDay)*2/3),2)  
else RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtDay)),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtDay)),2) end FlyAtDay,   
  
case isheavy when 1 then RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtNight)*2/3),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtNight)*2/3),2)  
else RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtNight)),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtNight)),2) end FlyAtNight  
  
, @TotalMonthDayH TotalMonthDayH, @TotalMonthDayM TotalMonthDayM, @TotalMonthNightH TotalMonthNightH, @TotalMonthNightM TotalMonthNightM  
from Sector S  
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID  
Inner Join AirPort A on S.From_AirportID = A.AirPortID  
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID  
Inner Join SectorPilot SP on S.SectorID = SP.SectorID  
Inner Join Pilot P on SP.PilotID = P.PilotID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where P.PilotID = @PilotID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND     
   
   /*  Dead head */  
   (SP.PositionID = 13 )  
order by S.SectorDate

GO
/****** Object:  StoredProcedure [dbo].[GetPilotFlights]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotFlights] @PilotID int
as

Select S.SectorDate, A.IATACode [From], A2.IATACode [To], S.FlightNo
from Sector S
Inner Join AirPort A on S.From_AirportID = A.AirPortID
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID
Inner Join SectorPilot SP on S.SectorID = SP.SectorID
Where SP.PilotID = @PilotID And 
	  (S.IsPAX <> 1 or S.IsPAX is null)

GO
/****** Object:  StoredProcedure [dbo].[GetPilotReport]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotReport] @PilotID int,
								@StartDate DateTime = null,
								@EndDate DateTime = null
as


Declare @TotalH int,
		@TotalMin int,
		@CTotalH int,
		@CTotalMin int,
		@DayH int, 
		@DayM int,
		@NightH int,
		@NightM int,
		@TotalMonthDayH int,
		@TotalMonthDayM int,
		@TotalMonthNightH int,
		@TotalMonthNightM int,
		@TotalMonthH int,
		@TotalMonthM int,
		@DayH_StartDate int,
		@DayM_StartDate int,
		@NightH_StartDate int,
		@NightM_StartDate int,
		@Total_TBF_H int,
		@Total_TBF_M int

/*
Select @CTotalH = P.TBF_Total_Hours , @CTotalMin =TBF_Total_Mins,
@DayH = case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtDay )))*2)/3
else sum(datepart(hh,s.FlyAtDay ))  end ,

@DayM = case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtDay )))*2)/3
else sum(datepart(MI,s.FlyAtDay )) end,

@NightH = case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtNight )))*2)/3
else sum(datepart(hh,s.FlyAtNight )) end, 

@NightM = case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtNight )))*2)/3
else sum(datepart(MI,s.FlyAtNight )) end

from Report R
Inner Join AirPlane AP on R.AirCraft_AirPlaneID = AP.AirPlaneID
Inner Join Sector S on S.ReportID = R.ReportID
Inner Join AirPort A on S.From_AirportID = A.AirPortID
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID
Inner Join ReportPilot RP on R.ReportID = Rp.ReportID
Inner Join Pilot P on RP.PilotID = P.PilotID
Inner join Position PP on RP.PositionID = PP.PositionID
Where P.PilotID = @PilotID and 
	  MONTH(R.ReportDate) = 8
group by P.TBF_Total_Hours , TBF_Total_Mins*/
Select @DayH_StartDate = ISNULL(SUM(DayH),0),
		@DayM_StartDate = ISNULL(SUM(DayM),0),
		@NightH_StartDate = ISNULL(SUM(NightH),0),
		@NightM_StartDate = ISNULL(SUM (NightM),0)
		From (
Select 
case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtDay )))*2)/3
else sum(datepart(hh,s.FlyAtDay ))  end DayH,

case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtDay )))*2)/3
else sum(datepart(MI,s.FlyAtDay )) end DayM,

case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtNight )))*2)/3
else sum(datepart(hh,s.FlyAtNight )) end NightH, 

case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtNight )))*2)/3
else sum(datepart(MI,s.FlyAtNight )) end NightM

from Sector S
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID
Inner Join AirPort A on S.From_AirportID = A.AirPortID
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID
Inner Join SectorPilot SP on S.SectorID = SP.SectorID
Inner Join Pilot P on SP.PilotID = P.PilotID
Inner join Position PP on SP.PositionID = PP.PositionID
Where P.PilotID = @PilotID and 
	  S.SectorDate < ISNULL(@StartDate, '01/01/1900') AND	  
	  (S.IsPAX is null or S.IsPAX <> 1 ) and
	  (SP.PositionID <> 13)  
group by S.IsHeavy) as B


select @CTotalH = max(TBF_Total_Hours) , @CTotalMin = max(TBF_Total_Mins), @DayH = sum(DayH), @DayM = sum(DayM), @NightH = sum(NightH), @NightM = sum(NightM)
From(
Select TBF_Total_Hours , TBF_Total_Mins,
case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtDay )))*2)/3
else sum(datepart(hh,s.FlyAtDay ))  end DayH,

case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtDay )))*2)/3
else sum(datepart(MI,s.FlyAtDay )) end DayM,

case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtNight )))*2)/3
else sum(datepart(hh,s.FlyAtNight )) end NightH, 

case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtNight )))*2)/3
else sum(datepart(MI,s.FlyAtNight )) end NightM

from Sector S
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID
Inner Join AirPort A on S.From_AirportID = A.AirPortID
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID
Inner Join SectorPilot SP on S.SectorID = SP.SectorID
Inner Join Pilot P on SP.PilotID = P.PilotID
Inner join Position PP on SP.PositionID = PP.PositionID
Where P.PilotID = @PilotID and 
	  S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and 
	  S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND	  
	  (S.IsPAX is null or S.IsPAX <> 1 ) and
	  (SP.PositionID <> 13)  
group by IsHeavy, TBF_Total_Hours , TBF_Total_Mins
) as A

/* Totals for ( TBF + all times till start date ) */
Select @Total_TBF_H = @DayH_StartDate + @NightH_StartDate + ((@DayM_StartDate + @NightM_StartDate)/60)
Select @Total_TBF_M = @DayM_StartDate + @NightM_StartDate - (((@DayM_StartDate + @NightM_StartDate)/60)*60)


/* grand totals ( TBF + all times till start date + totals within start date and end date ) */
Select @TotalH = @Total_TBF_H + @DayH + @NightH  ,@TotalMin = @Total_TBF_M+ @DayM + @NightM
Select @TotalH =  @TotalH + (@TotalMin/ 60)
Select @TotalMin = @TotalMin - (@TotalMin/60)*60
/*Select @TotalH = @CTotalH + @DayH + @NightH  ,@TotalMin = @CTotalMin+ @DayM + @NightM
Select @TotalH =  @TotalH + (@TotalMin/ 60)
Select @TotalMin = @TotalMin - (@TotalMin/60)*60*/




/* Totals for current date range */
Select @TotalMonthDayH = @DayH + (@DayM/60)
Select @TotalMonthDayM = @DayM - (@DayM/60)*60

Select @TotalMonthNightH = @NightH + (@NightM/60)
Select @TotalMonthNightM = @NightM - (@NightM/60)*60

Select @TotalMonthH = @TotalMonthDayH + @TotalMonthNightH + ((@TotalMonthDayM+@TotalMonthNightM)/60)
Select @TotalMonthM = (@TotalMonthDayM+@TotalMonthNightM) - (((@TotalMonthDayM+@TotalMonthNightM)/60)*60)



Select P.FirstName , P.SecondName , P.SureName , P.LicenseNo,P.ShortName , @TotalH+TBF_Total_Hours+((TBF_Total_Mins+@TotalMin)/60) GrandTotalHours ,@Total_TBF_H+TBF_Total_Hours + ((@Total_TBF_M+TBF_Total_Mins)/60)  as TBF_Total_Hours, @TotalMin+TBF_Total_Mins-(((TBF_Total_Mins+@TotalMin)/60)*60) GrandTotalMin, @Total_TBF_M+TBF_Total_Mins - (((@Total_TBF_M+TBF_Total_Mins)/60)*60) as TBF_Total_Mins,@TotalMonthH MonthTotalH, @TotalMonthM MonthTotalMin, Ap.Name, A.IATACode, A2.IATACode , S.FlightNo, S.IsHeavy, S.SectorDate, AP.AirPlaneID, S.ChoxOff, S.ChoxOn, P.IsPilot,
/*Right('00'+ CONVERT(VARCHAR,DateDiff(Second ,S.ChoxOn, S.ChoxOff ) / 3600),2) + ':' + Right('00'+ CONVERT(VARCHAR,(DateDiff(Second ,S.ChoxOn, S.ChoxOff ) % 3600)/60),2) TimeBlock, */
Case isheavy when 1 then RIGHT('00' + Convert(varchar, Datepart(hh,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))*2/3),2) + ' : ' + RIGHT('00' + Convert(varchar, Datepart(MI,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))*2/3),2)
else RIGHT('00' + Convert(varchar,datepart(hh,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))),2) + ' : ' + RIGHT('00' + Convert(varchar,datepart(MI,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))),2) end TimeBlock, 

case isheavy when 1 then RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtDay)*2/3),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtDay)*2/3),2)
else RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtDay)),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtDay)),2) end FlyAtDay, 

case isheavy when 1 then RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtNight)*2/3),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtNight)*2/3),2)
else RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtNight)),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtNight)),2) end FlyAtNight

, @TotalMonthDayH TotalMonthDayH, @TotalMonthDayM TotalMonthDayM, @TotalMonthNightH TotalMonthNightH, @TotalMonthNightM TotalMonthNightM
from Sector S
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID
Inner Join AirPort A on S.From_AirportID = A.AirPortID
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID
Inner Join SectorPilot SP on S.SectorID = SP.SectorID
Inner Join Pilot P on SP.PilotID = P.PilotID
Inner join Position PP on SP.PositionID = PP.PositionID
Where P.PilotID = @PilotID and 
	  S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and 
	  S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND	  
	  (S.IsPAX is null or S.IsPAX <> 1 ) and 
	  (SP.PositionID <> 13)  
order by S.SectorDate

GO
/****** Object:  StoredProcedure [dbo].[GetPilotReportWithinRange]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotReportWithinRange] @PilotID int,  
        @StartDate DateTime = null,  
        @EndDate DateTime = null  
as  
  
  
Declare @TotalH int,  
  @TotalMin int,  
  @CTotalH int,  
  @CTotalMin int,  
  @DayH int,   
  @DayM int,  
  @NightH int,  
  @NightM int,  
  @TotalMonthDayH int,  
  @TotalMonthDayM int,  
  @TotalMonthNightH int,  
  @TotalMonthNightM int,  
  @TotalMonthH int,  
  @TotalMonthM int,      
  @Total_TBF_H int,  
  @Total_TBF_M int  
  
select @CTotalH = max(TBF_Total_Hours) , @CTotalMin = max(TBF_Total_Mins), @DayH = sum(DayH), @DayM = sum(DayM), @NightH = sum(NightH), @NightM = sum(NightM)  
From(  
Select TBF_Total_Hours , TBF_Total_Mins,  
case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtDay )))*2)/3  
else sum(datepart(hh,s.FlyAtDay ))  end DayH,  
  
case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtDay )))*2)/3  
else sum(datepart(MI,s.FlyAtDay )) end DayM,  
  
case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtNight )))*2)/3  
else sum(datepart(hh,s.FlyAtNight )) end NightH,   
  
case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtNight )))*2)/3  
else sum(datepart(MI,s.FlyAtNight )) end NightM  
  
from Sector S  
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID  
Inner Join AirPort A on S.From_AirportID = A.AirPortID  
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID  
Inner Join SectorPilot SP on S.SectorID = SP.SectorID  
Inner Join Pilot P on SP.PilotID = P.PilotID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where P.PilotID = @PilotID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND     
   (S.IsPAX is null or S.IsPAX <> 1 )  AND  
   /* not Dead head */  
   --((SP.PositionID <> 12 ) and  -- trainee included in pilot hours
   (SP.PositionID <> 13)  
group by IsHeavy, TBF_Total_Hours , TBF_Total_Mins  
) as A  

  
/* grand totals ( totals within start date and end date ) */  
Select @TotalH = @DayH + @NightH  ,@TotalMin = @DayM + @NightM  
Select @TotalH =  @TotalH + (@TotalMin/ 60)  
Select @TotalMin = @TotalMin - (@TotalMin/60)*60  
  
  
/* Totals for current date range */  
Select @TotalMonthDayH = @DayH + (@DayM/60)  
Select @TotalMonthDayM = @DayM - (@DayM/60)*60  
  
Select @TotalMonthNightH = @NightH + (@NightM/60)  
Select @TotalMonthNightM = @NightM - (@NightM/60)*60  
  
Select @TotalMonthH = @TotalMonthDayH + @TotalMonthNightH + ((@TotalMonthDayM+@TotalMonthNightM)/60)  
Select @TotalMonthM = (@TotalMonthDayM+@TotalMonthNightM) - (((@TotalMonthDayM+@TotalMonthNightM)/60)*60)  
  
  
  
Select P.FirstName , P.SecondName , P.SureName , P.LicenseNo,P.ShortName , @TotalH+TBF_Total_Hours+((TBF_Total_Mins+@TotalMin)/60) GrandTotalHours ,@Total_TBF_H+TBF_Total_Hours + ((@Total_TBF_M+TBF_Total_Mins)/60)  as TBF_Total_Hours, @TotalMin+
TBF_Total_Mins -(((TBF_Total_Mins+@TotalMin)/60)*60) GrandTotalMin, @Total_TBF_M+TBF_Total_Mins - (((@Total_TBF_M+TBF_Total_Mins)/60)*60) as TBF_Total_Mins,@TotalMonthH MonthTotalH, @TotalMonthM MonthTotalMin, Ap.Name, A.IATACode, A2.IATACode , S.FlightNo, S.IsHeavy
, S.SectorDate, AP.AirPlaneID, S.ChoxOff, S.ChoxOn, P.IsPilot,  
/*Right('00'+ CONVERT(VARCHAR,DateDiff(Second ,S.ChoxOn, S.ChoxOff ) / 3600),2) + ':' + Right('00'+ CONVERT(VARCHAR,(DateDiff(Second ,S.ChoxOn, S.ChoxOff ) % 3600)/60),2) TimeBlock, */  
Case isheavy when 1 then RIGHT('00' + Convert(varchar, Datepart(hh,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))*2/3),2) + ' : ' + RIGHT('00' + Convert(varchar, Datepart(MI,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))*2/
3),2)  
else RIGHT('00' + Convert(varchar,datepart(hh,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))),2) + ' : ' + RIGHT('00' + Convert(varchar,datepart(MI,DateAdd(MINUTE,Datediff(MINUTE,0 ,S.FlyAtDay) , S.FlyAtNight))),2) end TimeBlock,   
  
case isheavy when 1 then RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtDay)*2/3),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtDay)*2/3),2)  
else RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtDay)),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtDay)),2) end FlyAtDay,   
  
case isheavy when 1 then RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtNight)*2/3),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtNight)*2/3),2)  
else RIGHT('00' + Convert(varchar, datepart(hh,S.FlyAtNight)),2) + ' : ' + RIGHT('00' + Convert(varchar, datepart(MI,S.FlyAtNight)),2) end FlyAtNight  
  
, @TotalMonthDayH TotalMonthDayH, @TotalMonthDayM TotalMonthDayM, @TotalMonthNightH TotalMonthNightH, @TotalMonthNightM TotalMonthNightM  
from Sector S  
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID  
Inner Join AirPort A on S.From_AirportID = A.AirPortID  
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID  
Inner Join SectorPilot SP on S.SectorID = SP.SectorID  
Inner Join Pilot P on SP.PilotID = P.PilotID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where P.PilotID = @PilotID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND     
   (S.IsPAX is null or S.IsPAX <> 1 )  AND  
   /* not Dead head */  
   --((SP.PositionID <> 12 ) and  -- trainee included in pilot hours 
   (SP.PositionID <> 13)   
order by S.SectorDate

GO
/****** Object:  StoredProcedure [dbo].[GetPilotsAndCrewInfoToNotify]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetPilotsAndCrewInfoToNotify] @FromDate DateTime = null,  
												@ToDate DateTime = null  
as
/*
declare   @FromDate DateTime = null,  
          @ToDate DateTime = null  
set @FromDate = '01/14/2015'          
set @ToDate = '01/19/2015'
*/
Select distinct P.PilotID, P.FirstName + ' ' + P.SecondName DisplayName , p.Email, 1 as Pilot
from Pilot P 

union
 
Select distinct c.CrewID, c.Name DisplayName , c.Email , 0
from crew C

GO
/****** Object:  StoredProcedure [dbo].[GetPilotsAndCrewToNotify]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotsAndCrewToNotify] @FromDate DateTime = null,  
											@ToDate DateTime = null  
as
/*
declare   @FromDate DateTime = null,  
          @ToDate DateTime = null  
set @FromDate = '01/14/2015'          
set @ToDate = '01/19/2015'
*/
Select * from (  
Select P.FirstName + ' ' + P.SecondName DisplayName , p.Email, 
Stuff((Select '   <hr /><br />FlightNo. : ' + S.FlightNo + ' <br /> Date:  ' +  CONVERT(nvarchar(12), s.SectorDate) + '<br /> STD : ' + convert(nvarchar(8),s.STD,108) + '<br /> STA : ' + convert(nvarchar(8),s.STA,108) + '<br /> From : ' +  af.IATACode  + ' To : ' +  at.IATACode  from Sector  S
Inner Join AirPort af on s.From_AirportID = af.AirPortID
Inner Join AirPort at on s.To_AirportID = at.AirPortID
Inner Join SectorPilot SP on SP.SectorID = S.SectorID and 
								SP.PilotID = P.PilotID
where   
   S.SectorDate >= (ISNULL(@FromDate, '01/01/1900')) And   
   S.SectorDate <= (ISNULL(@ToDate, '01/01/2500')) And   
   (IsPAX is NULL Or IsPAX <> 1 )  
   order by S.SectorDate , DATEPART(hh, S.STD)
for XML path('')),1,3,'') as FlightInfo
from  Pilot P 
) A
Where A.FlightInfo is not null

union

Select * from (  
Select c.Name DisplayName , c.Email, 
Stuff((Select '   <hr /><br />FlightNo. : ' + S.FlightNo + ' <br /> Date:  ' +  CONVERT(nvarchar(12), s.SectorDate) + '<br /> STD : ' + convert(nvarchar(8),s.STD,108) + '<br /> STA : ' + convert(nvarchar(8),s.STA,108) + '<br /> From : ' +  af.IATACode  + ' To : ' +  at.IATACode  from Sector  S
Inner Join AirPort af on s.From_AirportID = af.AirPortID
Inner Join AirPort at on s.To_AirportID = at.AirPortID
Inner Join SectorCrew SP on SP.SectorID = S.SectorID and 
								SP.crewID = C.CrewID
where   
   S.SectorDate >= (ISNULL(@FromDate, '01/01/1900')) And   
   S.SectorDate <= (ISNULL(@ToDate, '01/01/2500')) And   
   (IsPAX is NULL Or IsPAX <> 1 )  
	order by S.SectorDate , DATEPART(hh, S.STD)
for XML path('')),1,3,'') as FlightInfo
from  crew C 
) A
Where A.FlightInfo is not null

GO
/****** Object:  StoredProcedure [dbo].[GetPilotsByTrainingID]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotsByTrainingID] @TrainingID int
as

select P.* 
from Pilot P 
Inner JOIN Training.PilotCourse PC ON P.PilotID = PC.PilotID
where TrainingID = @TrainingID

GO
/****** Object:  StoredProcedure [dbo].[GetPilotSchedule]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotSchedule] @PilotID int,
								  @StartDate DateTime = null,
								  @EndDate DateTime = null
as
/*
declare @PilotID int
Select @PilotID = 20 
Declare @StartDate DateTime ,
		@EndDate DateTime  
Select @StartDate = Convert (DateTime,'11/01/2012', 101)
Select @EndDate = Convert (Datetime,'11/30/2012',101)
*/
Select distinct S.SectorID, S.SectorDate , S.IsPAX,
CASE DATEPART(weekday,S.SectorDate)
WHEN 1 THEN 'SUN'
WHEN 2 THEN 'MON'
WHEN 3 THEN 'TUE'
WHEN 4 THEN 'WED'
WHEN 5 THEN 'THU'
WHEN 6 THEN 'FRI'
WHEN 7 THEN 'SAT'
END [Day], 
S.FlightNo, 
			Stuff(( Select ' / ' + ShortName 
		    From Sector SS2 
		    Inner Join SectorPilot RP2 on SS2.SectorID = RP2.SectorID 
		    inner join Pilot P2 on RP2.PilotID = P2.PilotID 
		    where SS2.SectorID = S.SectorID 
			for XML path('')),1,3,'') Pilots 
			,
			(select min(SS1.STD) 
			 from Sector SS1
			 where SS1.SectorID = S.SectorID)  STD
			 , 
			(select max(SS22.STA) 
			from Sector SS22 
			where SS22.SectorID = S.SectorID) STA
			, 
			Stuff(( Select ' * ' + A.IATACode + ' - ' + A2.IATACode 
		    From Sector SS 
			Inner Join AirPort A on SS.From_AirportID = A.AirPortID
			Inner Join AirPort A2 on SS.To_AirportID = A2.AirPortID
		    where SS.SectorID = S.SectorID 
			for XML path('')),1,3,'') [From_TO]  ,
			S.ChoxOff,
			S.ChoxOn,
			AP.AirPlaneID AirPlane
From Sector S 
Inner Join SectorPilot SP on S.SectorID = SP.SectorID 
inner join Pilot P on SP.PilotID = P.PilotID 
inner join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID
where  (@PilotID = 0 Or P.PilotID = @PilotID) and 
	   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and 
	   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') And 
	  (S.IsPAX <> 1 or S.IsPAX is null)
order by S.SectorDate

GO
/****** Object:  StoredProcedure [dbo].[GetPilotSectors]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotSectors] @PilotID int,    
         @FromDate DateTime,     
         @ToDate DateTime                
as     
    
Select S.*, datepart(hh,S.STD) STDHour, C.IATACode, SP.PositionID from Flight F    
Inner Join Sector S on F.FlightID = S.FlightID    
Inner Join SectorPilot SP on S.SectorID = SP.SectorID    
left Join AirPort C on S.PilotCityID = C.AirPortID    
where SP.PilotID = @PilotID and     
   S.SectorDate >= ISNULL(@FromDate, '01/01/1900') and       
      S.SectorDate <= ISNULL(@ToDate, '01/01/2500')    
Order by S.SectorDate asc, datepart(hh,S.STD)

GO
/****** Object:  StoredProcedure [dbo].[GetPilotSimulationHoursWithinRange]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetPilotSimulationHoursWithinRange] @PilotID int,  
													@StartDate DateTime = null,  
													@EndDate DateTime = null  
as  
  
  
Declare @TotalH int,  
  @TotalMin int  
  
select  @TotalMin = sum(DiffM)
From(  
Select   
  sum(DATEDIFF(MINUTE, DateFrom,DateTo)) DiffM
from PilotTransaction PT
Inner join Pilot P on PT.PilotID = P.PilotID
Where P.PilotID = @PilotID and   
   PT.DateFrom >= ISNULL(@StartDate, '01/01/1900') and   
   PT.DateTo <= ISNULL(@EndDate, '01/01/2500') and 
   TransactionsID = 11
   
) as A  

  
/* grand totals ( totals within start date and end date ) */  
Select @TotalH = (@TotalMin/ 60)  
Select @TotalMin = @TotalMin - (@TotalMin/60)*60  
  
  
  
Select P.FirstName , P.SecondName , P.SureName , P.LicenseNo,P.ShortName , P.IsPilot,
@TotalH GrandTotalHours , @TotalMin GrandTotalMin
, DateFrom, DateTo, DATEDIFF(MINUTE,DateFrom, DateTo )/60 TotalHours, (DATEDIFF(MINUTE,DateFrom, DateTo )) - (DATEDIFF(MINUTE,DateFrom, DateTo )/60)*60 TotalMin
from PilotTransaction PT
Inner join Pilot P on PT.PilotID = P.PilotID
Where P.PilotID = @PilotID and   
   PT.DateFrom >= ISNULL(@StartDate, '01/01/1900') and   
   PT.DateTo <= ISNULL(@EndDate, '01/01/2500') and 
   TransactionsID = 11
Order by DateFrom

GO
/****** Object:  StoredProcedure [dbo].[GetPilotTitlesByPilotID]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotTitlesByPilotID] @PilotID int
as

select T.* 
from Title T 
Inner JOIN PilotTitle PT ON T.TitleID = PT.TitleID
where PT.PilotID = @PilotID

GO
/****** Object:  StoredProcedure [dbo].[GetPilotTransactions]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetPilotTransactions] @PilotID int, 
									  @StartDate DateTime = null ,  
									  @EndDate DateTime= null
as

/*
Declare @StartDate DateTime ,  
		@EndDate DateTime    
Select @StartDate = Convert (DateTime,'08/01/2012', 101)  
Select @EndDate = Convert (Datetime,'08/18/2012',101)  
*/
create table #PilotStatusInPeriod (         
 [PilotID] [int] NOT NULL,        
 StatusDate DateTime,         
 StatusType nvarchar(50),        
 FlightNo nvarchar(10),        
 [Route] nvarchar(12),        
 STD DateTime,        
 STA DateTime,        
 City nvarchar(10),  
 SectorID int         
 )        
        
insert into #PilotStatusInPeriod        
Select A.* From (        
Select P.PilotID, S.SectorDate, 'WORK' as Status ,S.FlightNo , FromA.IATACode  + ' ' + ToA.IATACode as [Route] ,S.STD , S.STA , City.IATACode NightCity, S.SectorID        
from Sector S         
inner join AirPort FromA on S.From_AirportID = FromA.AirPortID        
inner join AirPort ToA on S.To_AirportID = ToA.AirPortID        
Left join AirPort City on S.PilotCityID = city.AirPortID        
inner join SectorPilot SP on SP.SectorID = S.SectorID        
inner join Pilot P on SP.PilotID = P.PilotID        
                      OR SP.PilotID is null        
        
where (Sp.PilotID = @PilotID) and        
   S.SectorDate between ISNULL(@StartDate, '01/01/1900') and         
       ISNULL(@EndDate, '01/01/2500')        
      ) as A         
        
insert into #PilotStatusInPeriod        
Select P.PilotID, PT.DateFrom, T.Name, null, null, PT.DateFrom, PT.DateTo ,City.IATACode,null        
from PilotTransaction PT         
Inner join Pilot P on PT.PilotID = P.PilotID        
inner join [Transactions] T on PT.TransactionsID = T.TransactionsID        
Left join AirPort City on PT.PilotCityID = city.AirPortID        
Where PT.DateFrom between ISNULL(@StartDate, '01/01/1900') and         
       ISNULL(@EndDate, '01/01/2500') and         
      p.PilotID = @PilotID        
        
        
;with amonth(day) as        
(        
    select @StartDate as day        
        union all        
    select day + 1        
        from amonth        
        where day < @EndDate        
)        
Select *, SUBSTRING(datename(dw,D.Day),0,4) [StatusDay] from #PilotStatusInPeriod PS        
Right join amonth D on D.Day = CONVERT(date, PS.StatusDate)        
order by D.Day, DatePart(hh,PS.STD)    
        
Drop Table #PilotStatusInPeriod

GO
/****** Object:  StoredProcedure [dbo].[GetPilotTrxByPilotID]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPilotTrxByPilotID] @FromDate DateTime = null,  
									  @ToDate DateTime = null,             
									  @PilotID int = 0   
             
as  
/*  
Declare @FromDate DateTime ,  
  @ToDate DateTime ,  
  @ActivityID int   
Select @FromDate = Convert (DateTime,'10/05/2012', 101)  
Select @ToDate = Convert (Datetime,'10/07/2012',101)  
Select @ActivityID = 0  
*/  
Select PT.*, P.FirstName + ' ' + P.SecondName DisplayName, T.Name TrxName, A.IATACode
from PilotTransaction PT   
Inner JOIN transactions T ON T.TransactionsID = PT.TransactionsID  
Inner Join Pilot P on PT.PilotID = P.PilotID
left join AirPort A on A.AirPortID = PT.PilotCityID
Where (PT.DateFrom >= ISNULL(@FromDate, '01/01/1900') ) and   
	  (PT.DateFrom <= ISNULL(@ToDate, '01/01/2500') )  and 
	  (PT.PilotID = @PilotID Or @PilotID =0)

GO
/****** Object:  StoredProcedure [dbo].[GetSectorInfo]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetSectorInfo] @SectorID int  
as  

Select S.SectorDate, S.FlightNo, A.Name AirCraft, FA.IATACode FromA, TA.IATACode ToA  from Sector S
Inner Join AirPlane A on S.AirCraft_AirPlaneID =A.AirPlaneID
Inner Join AirPort FA on S.From_AirportID = FA.AirPortID
Inner Join AirPort TA on S.To_AirportID = TA.AirPortID
where S.SectorID = @SectorID

GO
/****** Object:  StoredProcedure [dbo].[GetSectorPilotInfo]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetSectorPilotInfo] @SectorID int  
as  
Select S.SectorDate, S.FlightNo , p.FirstName + ' ' + p.SureName PilotName, pos.Title, P.PassportNo, P.DateOfBirth from Sector S
Inner join SectorPilot SP on S.SectorID = SP.SectorID
Inner Join Pilot P on SP.PilotID = P.PilotID
Inner Join Position pos on pos.PositionID = sp.PositionID
where S.SectorID = @SectorID

GO
/****** Object:  StoredProcedure [dbo].[GetSectorsActualBurnOff]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSectorsActualBurnOff] @From int = 0,
										 @To int = 0,
										 @StartDate DateTime = null,
										 @EndDate DateTime = null
as
/*
Declare @StartDate DateTime ,
		@EndDate DateTime ,
		@From int ,
		@To int 
Select @StartDate = Convert (DateTime,'10/05/2012', 101)
Select @EndDate = Convert (Datetime,'10/07/2012',101)
Select @From = 2
Select @To = 0*/
Select IsNull(S.ActualBurnOff, 0) ActualBurnOff, S.SectorDate , A.IATACode [From] , AA.IATACode [To],
			Stuff(( Select ' / ' + ShortName 
		    From Sector SS2 
		    Inner Join SectorPilot SP2 on SS2.SectorID = SP2.SectorID 
		    inner join Pilot P2 on SP2.PilotID = P2.PilotID 
		    where SS2.SectorID = S.SectorID 
			for XML path('')),1,3,'') Pilots 
			
From Sector S 
Inner Join AirPort A on S.From_AirportID = A.AirPortID
Inner Join AirPort AA on S.To_AirportID = AA.AirPortID
Where S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and 
	  S.SectorDate <= ISNULL(@EndDate, '01/01/2500') and 
	  (@From = 0 Or S.From_AirportID = @From) And 
	  (@To = 0 Or S.To_AirportID = @To) 
Order by S.SectorDate

GO
/****** Object:  StoredProcedure [dbo].[GetSectorsByReportID]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetSectorsByReportID] @ReportID int    
as    
    
Select * from Sector     
Where FlightID = @ReportID    
order by Sector.SectorDate, datepart(hh,Sector.STD)

GO
/****** Object:  StoredProcedure [dbo].[GetTitleCoursesByTitleID]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTitleCoursesByTitleID] @TitleID int
as

select * 
from Training.TitleCourse T 
Inner JOIN Training.Course C ON T.CourseID = C.CourseID
where T.TitleID = @TitleID

GO
/****** Object:  StoredProcedure [dbo].[GetTopMostParent]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetTopMostParent] @ManualCategoryID int  
as  
;WITH CTE AS
(   SELECT  *, 0 [Level]
    FROM    ManualCategory M
    UNION ALL
    SELECT  CTE.ManualCategoryID, CTE.Title, M.ParentCategoryID, Level + 1
    FROM    CTE
            INNER JOIN ManualCategory M
                ON CTE.ParentCategoryID = M.ManualCategoryID
    WHERE   M.ParentCategoryID IS NOT NULL
)

SELECT  top 1 c.ManualCategoryID, c.Title, c.ParentCategoryID
FROM    (   SELECT  *, MAX([Level]) OVER (PARTITION BY Level) [MaxLevel]
            FROM    CTE
        ) c
WHERE   MaxLevel = Level and 
		ManualCategoryID = @ManualCategoryID
order by ParentCategoryID asc		

GO
/****** Object:  StoredProcedure [dbo].[proc_ActivitiesDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ActivitiesDelete] (
	@ActivityID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Activities]
	WHERE
		[ActivityID] = @ActivityID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ActivitiesInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ActivitiesInsert] (
	@ActivityID int = NULL output,
	@Name nvarchar(30) = NULL,
	@ShortName nvarchar(5) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Activities]
	(
		[Name],
		[ShortName]
	)
	VALUES
	(
		@Name,
		@ShortName
	)

	SET @Err = @@Error

	SELECT @ActivityID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ActivitiesLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ActivitiesLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ActivityID],
		[Name],
		[ShortName]
	FROM [Activities]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ActivitiesLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ActivitiesLoadByPrimaryKey] (
	@ActivityID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ActivityID],
		[Name],
		[ShortName]
	FROM [Activities]
	WHERE
		([ActivityID] = @ActivityID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ActivitiesLogDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ActivitiesLogDelete] (
	@ActivitiesLogID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ActivitiesLog]
	WHERE
		[ActivitiesLogID] = @ActivitiesLogID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ActivitiesLogInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ActivitiesLogInsert] (
	@ActivitiesLogID int = NULL output,
	@Date datetime = NULL,
	@ActivityID int = NULL,
	@CrewID int = NULL,
	@FromDate datetime = NULL,
	@TODate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ActivitiesLog]
	(
		[Date],
		[ActivityID],
		[CrewID],
		[FromDate],
		[TODate]
	)
	VALUES
	(
		@Date,
		@ActivityID,
		@CrewID,
		@FromDate,
		@TODate
	)

	SET @Err = @@Error

	SELECT @ActivitiesLogID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ActivitiesLogLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ActivitiesLogLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ActivitiesLogID],
		[Date],
		[ActivityID],
		[CrewID],
		[FromDate],
		[TODate]
	FROM [ActivitiesLog]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ActivitiesLogLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ActivitiesLogLoadByPrimaryKey] (
	@ActivitiesLogID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ActivitiesLogID],
		[Date],
		[ActivityID],
		[CrewID],
		[FromDate],
		[TODate]
	FROM [ActivitiesLog]
	WHERE
		([ActivitiesLogID] = @ActivitiesLogID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ActivitiesLogUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ActivitiesLogUpdate] (
	@ActivitiesLogID int,
	@Date datetime = NULL,
	@ActivityID int = NULL,
	@CrewID int = NULL,
	@FromDate datetime = NULL,
	@TODate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ActivitiesLog]
	SET
		[Date] = @Date,
		[ActivityID] = @ActivityID,
		[CrewID] = @CrewID,
		[FromDate] = @FromDate,
		[TODate] = @TODate
	WHERE
		[ActivitiesLogID] = @ActivitiesLogID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ActivitiesUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ActivitiesUpdate] (
	@ActivityID int,
	@Name nvarchar(30) = NULL,
	@ShortName nvarchar(5) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Activities]
	SET
		[Name] = @Name,
		[ShortName] = @ShortName
	WHERE
		[ActivityID] = @ActivityID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftManualCategoryDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AircraftManualCategoryDelete]
(
	@ManualCategoryID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [AircraftManualCategory]
	WHERE
		[ManualCategoryID] = @ManualCategoryID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftManualCategoryInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AircraftManualCategoryInsert]
(
	@ManualCategoryID int = NULL output,
	@Title nvarchar(500) = NULL,
	@ParentCategoryID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [AircraftManualCategory]
	(
		[Title],
		[ParentCategoryID]
	)
	VALUES
	(
		@Title,
		@ParentCategoryID
	)

	SET @Err = @@Error

	SELECT @ManualCategoryID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftManualCategoryLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AircraftManualCategoryLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualCategoryID],
		[Title],
		[ParentCategoryID]
	FROM [AircraftManualCategory]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftManualCategoryLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AircraftManualCategoryLoadByPrimaryKey]
(
	@ManualCategoryID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualCategoryID],
		[Title],
		[ParentCategoryID]
	FROM [AircraftManualCategory]
	WHERE
		([ManualCategoryID] = @ManualCategoryID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftManualCategoryUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AircraftManualCategoryUpdate]
(
	@ManualCategoryID int,
	@Title nvarchar(500) = NULL,
	@ParentCategoryID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [AircraftManualCategory]
	SET
		[Title] = @Title,
		[ParentCategoryID] = @ParentCategoryID
	WHERE
		[ManualCategoryID] = @ManualCategoryID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirCraftManualDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AirCraftManualDelete]
(
	@ManualID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [AirCraftManual]
	WHERE
		[ManualID] = @ManualID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirCraftManualInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AirCraftManualInsert]
(
	@ManualID int = NULL output,
	@Title nvarchar(500) = NULL,
	@Path nvarchar(1000) = NULL,
	@CreatedBy nvarchar(200) = NULL,
	@createdDate datetime = NULL,
	@ManualCategoryID int = NULL,
	@IssueNumber nvarchar(10) = NULL,
	@IssueDate datetime = NULL,
	@RevisionNumber nvarchar(10) = NULL,
	@RevisionDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [AirCraftManual]
	(
		[Title],
		[Path],
		[CreatedBy],
		[createdDate],
		[ManualCategoryID],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate]
	)
	VALUES
	(
		@Title,
		@Path,
		@CreatedBy,
		@createdDate,
		@ManualCategoryID,
		@IssueNumber,
		@IssueDate,
		@RevisionNumber,
		@RevisionDate
	)

	SET @Err = @@Error

	SELECT @ManualID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirCraftManualLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AirCraftManualLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualID],
		[Title],
		[Path],
		[CreatedBy],
		[createdDate],
		[ManualCategoryID],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate]
	FROM [AirCraftManual]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirCraftManualLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AirCraftManualLoadByPrimaryKey]
(
	@ManualID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualID],
		[Title],
		[Path],
		[CreatedBy],
		[createdDate],
		[ManualCategoryID],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate]
	FROM [AirCraftManual]
	WHERE
		([ManualID] = @ManualID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirCraftManualUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AirCraftManualUpdate]
(
	@ManualID int,
	@Title nvarchar(500) = NULL,
	@Path nvarchar(1000) = NULL,
	@CreatedBy nvarchar(200) = NULL,
	@createdDate datetime = NULL,
	@ManualCategoryID int = NULL,
	@IssueNumber nvarchar(10) = NULL,
	@IssueDate datetime = NULL,
	@RevisionNumber nvarchar(10) = NULL,
	@RevisionDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [AirCraftManual]
	SET
		[Title] = @Title,
		[Path] = @Path,
		[CreatedBy] = @CreatedBy,
		[createdDate] = @createdDate,
		[ManualCategoryID] = @ManualCategoryID,
		[IssueNumber] = @IssueNumber,
		[IssueDate] = @IssueDate,
		[RevisionNumber] = @RevisionNumber,
		[RevisionDate] = @RevisionDate
	WHERE
		[ManualID] = @ManualID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftRouteDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AircraftRouteDelete]
(
	@AircraftRouteID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [AircraftRoute]
	WHERE
		[AircraftRouteID] = @AircraftRouteID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftRouteDetailsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AircraftRouteDetailsDelete]
(
	@AircraftRouteDetailsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [AircraftRouteDetails]
	WHERE
		[AircraftRouteDetailsID] = @AircraftRouteDetailsID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftRouteDetailsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AircraftRouteDetailsInsert]
(
	@AircraftRouteDetailsID int = NULL output,
	@AircraftRouteID int = NULL,
	@SectorID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [AircraftRouteDetails]
	(
		[AircraftRouteID],
		[SectorID]
	)
	VALUES
	(
		@AircraftRouteID,
		@SectorID
	)

	SET @Err = @@Error

	SELECT @AircraftRouteDetailsID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftRouteDetailsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AircraftRouteDetailsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AircraftRouteDetailsID],
		[AircraftRouteID],
		[SectorID]
	FROM [AircraftRouteDetails]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftRouteDetailsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AircraftRouteDetailsLoadByPrimaryKey]
(
	@AircraftRouteDetailsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AircraftRouteDetailsID],
		[AircraftRouteID],
		[SectorID]
	FROM [AircraftRouteDetails]
	WHERE
		([AircraftRouteDetailsID] = @AircraftRouteDetailsID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftRouteDetailsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AircraftRouteDetailsUpdate]
(
	@AircraftRouteDetailsID int,
	@AircraftRouteID int = NULL,
	@SectorID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [AircraftRouteDetails]
	SET
		[AircraftRouteID] = @AircraftRouteID,
		[SectorID] = @SectorID
	WHERE
		[AircraftRouteDetailsID] = @AircraftRouteDetailsID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftRouteInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AircraftRouteInsert]
(
	@AircraftRouteID int = NULL output,
	@Name nvarchar(10) = NULL,
	@AircraftRouteDate datetime = NULL,
	@AirPlaneID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [AircraftRoute]
	(
		[Name],
		[AircraftRouteDate],
		[AirPlaneID]
	)
	VALUES
	(
		@Name,
		@AircraftRouteDate,
		@AirPlaneID
	)

	SET @Err = @@Error

	SELECT @AircraftRouteID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftRouteLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AircraftRouteLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AircraftRouteID],
		[Name],
		[AircraftRouteDate],
		[AirPlaneID]
	FROM [AircraftRoute]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftRouteLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AircraftRouteLoadByPrimaryKey]
(
	@AircraftRouteID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AircraftRouteID],
		[Name],
		[AircraftRouteDate],
		[AirPlaneID]
	FROM [AircraftRoute]
	WHERE
		([AircraftRouteID] = @AircraftRouteID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AircraftRouteUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AircraftRouteUpdate]
(
	@AircraftRouteID int,
	@Name nvarchar(10) = NULL,
	@AircraftRouteDate datetime = NULL,
	@AirPlaneID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [AircraftRoute]
	SET
		[Name] = @Name,
		[AircraftRouteDate] = @AircraftRouteDate,
		[AirPlaneID] = @AirPlaneID
	WHERE
		[AircraftRouteID] = @AircraftRouteID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirPlaneDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AirPlaneDelete] (
	@AirPlaneID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [AirPlane]
	WHERE
		[AirPlaneID] = @AirPlaneID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirPlaneInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AirPlaneInsert] (
	@AirPlaneID int = NULL output,
	@Code nvarchar(5) = NULL,
	@Name nvarchar(100) = NULL,
	@Model nvarchar(250) = NULL,
	@Description nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [AirPlane]
	(
		[Code],
		[Name],
		[Model],
		[Description],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	)
	VALUES
	(
		@Code,
		@Name,
		@Model,
		@Description,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate
	)

	SET @Err = @@Error

	SELECT @AirPlaneID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirPlaneLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AirPlaneLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AirPlaneID],
		[Code],
		[Name],
		[Model],
		[Description],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [AirPlane]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirPlaneLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AirPlaneLoadByPrimaryKey] (
	@AirPlaneID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AirPlaneID],
		[Code],
		[Name],
		[Model],
		[Description],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [AirPlane]
	WHERE
		([AirPlaneID] = @AirPlaneID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirPlaneUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AirPlaneUpdate] (
	@AirPlaneID int,
	@Code nvarchar(5) = NULL,
	@Name nvarchar(100) = NULL,
	@Model nvarchar(250) = NULL,
	@Description nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [AirPlane]
	SET
		[Code] = @Code,
		[Name] = @Name,
		[Model] = @Model,
		[Description] = @Description,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate
	WHERE
		[AirPlaneID] = @AirPlaneID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirPortDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AirPortDelete]
(
	@AirPortID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [AirPort]
	WHERE
		[AirPortID] = @AirPortID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirPortInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AirPortInsert]
(
	@AirPortID int = NULL output,
	@Name nvarchar(100) = NULL,
	@IATACode nvarchar(5) = NULL,
	@ACAICode nvarchar(10) = NULL,
	@Description nvarchar(2000) = NULL,
	@Notes nvarchar(MAX) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@Class int = NULL,
	@TimeZoneID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [AirPort]
	(
		[Name],
		[IATACode],
		[ACAICode],
		[Description],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[Class],
		[TimeZoneID]
	)
	VALUES
	(
		@Name,
		@IATACode,
		@ACAICode,
		@Description,
		@Notes,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate,
		@Class,
		@TimeZoneID
	)

	SET @Err = @@Error

	SELECT @AirPortID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirPortLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AirPortLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AirPortID],
		[Name],
		[IATACode],
		[ACAICode],
		[Description],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[Class],
		[TimeZoneID]
	FROM [AirPort]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirPortLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AirPortLoadByPrimaryKey]
(
	@AirPortID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AirPortID],
		[Name],
		[IATACode],
		[ACAICode],
		[Description],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[Class],
		[TimeZoneID]
	FROM [AirPort]
	WHERE
		([AirPortID] = @AirPortID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AirPortUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_AirPortUpdate]
(
	@AirPortID int,
	@Name nvarchar(100) = NULL,
	@IATACode nvarchar(5) = NULL,
	@ACAICode nvarchar(10) = NULL,
	@Description nvarchar(2000) = NULL,
	@Notes nvarchar(MAX) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@Class int = NULL,
	@TimeZoneID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [AirPort]
	SET
		[Name] = @Name,
		[IATACode] = @IATACode,
		[ACAICode] = @ACAICode,
		[Description] = @Description,
		[Notes] = @Notes,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate,
		[Class] = @Class,
		[TimeZoneID] = @TimeZoneID
	WHERE
		[AirPortID] = @AirPortID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AnnouncementDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AnnouncementDelete]
(
	@AnnouncementID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Announcement]
	WHERE
		[AnnouncementID] = @AnnouncementID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AnnouncementGroupDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AnnouncementGroupDelete]
(
	@AnnouncementID int,
	@GroupID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [AnnouncementGroup]
	WHERE
		[AnnouncementID] = @AnnouncementID AND
		[GroupID] = @GroupID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AnnouncementGroupInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AnnouncementGroupInsert]
(
	@AnnouncementID int,
	@GroupID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [AnnouncementGroup]
	(
		[AnnouncementID],
		[GroupID]
	)
	VALUES
	(
		@AnnouncementID,
		@GroupID
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AnnouncementGroupLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AnnouncementGroupLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AnnouncementID],
		[GroupID]
	FROM [AnnouncementGroup]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AnnouncementGroupLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AnnouncementGroupLoadByPrimaryKey]
(
	@AnnouncementID int,
	@GroupID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AnnouncementID],
		[GroupID]
	FROM [AnnouncementGroup]
	WHERE
		([AnnouncementID] = @AnnouncementID) AND
		([GroupID] = @GroupID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AnnouncementInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AnnouncementInsert]
(
	@AnnouncementID int = NULL output,
	@Title nvarchar(500) = NULL,
	@Content nvarchar(MAX) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@createdDate datetime = NULL,
	@MainPic nvarchar(500) = NULL,
	@Brief nvarchar(1000) = NULL,
	@IsBulletin bit = NULL,
	@IsBlog bit = NULL,
	@UploadedFile nvarchar(500) = NULL,
	@GroupID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Announcement]
	(
		[Title],
		[Content],
		[CreatedBy],
		[createdDate],
		[MainPic],
		[Brief],
		[IsBulletin],
		[IsBlog],
		[UploadedFile],
		[GroupID]
	)
	VALUES
	(
		@Title,
		@Content,
		@CreatedBy,
		@createdDate,
		@MainPic,
		@Brief,
		@IsBulletin,
		@IsBlog,
		@UploadedFile,
		@GroupID
	)

	SET @Err = @@Error

	SELECT @AnnouncementID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AnnouncementLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AnnouncementLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AnnouncementID],
		[Title],
		[Content],
		[CreatedBy],
		[createdDate],
		[MainPic],
		[Brief],
		[IsBulletin],
		[IsBlog],
		[UploadedFile],
		[GroupID]
	FROM [Announcement]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AnnouncementLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AnnouncementLoadByPrimaryKey]
(
	@AnnouncementID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[AnnouncementID],
		[Title],
		[Content],
		[CreatedBy],
		[createdDate],
		[MainPic],
		[Brief],
		[IsBulletin],
		[IsBlog],
		[UploadedFile],
		[GroupID]
	FROM [Announcement]
	WHERE
		([AnnouncementID] = @AnnouncementID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_AnnouncementUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_AnnouncementUpdate]
(
	@AnnouncementID int,
	@Title nvarchar(500) = NULL,
	@Content nvarchar(MAX) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@createdDate datetime = NULL,
	@MainPic nvarchar(500) = NULL,
	@Brief nvarchar(1000) = NULL,
	@IsBulletin bit = NULL,
	@IsBlog bit = NULL,
	@UploadedFile nvarchar(500) = NULL,
	@GroupID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Announcement]
	SET
		[Title] = @Title,
		[Content] = @Content,
		[CreatedBy] = @CreatedBy,
		[createdDate] = @createdDate,
		[MainPic] = @MainPic,
		[Brief] = @Brief,
		[IsBulletin] = @IsBulletin,
		[IsBlog] = @IsBlog,
		[UploadedFile] = @UploadedFile,
		[GroupID] = @GroupID
	WHERE
		[AnnouncementID] = @AnnouncementID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_ApplicationsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_ApplicationsDelete] (
	@ApplicationId uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_Applications]
	WHERE
		[ApplicationId] = @ApplicationId
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_ApplicationsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_ApplicationsInsert] (
	@ApplicationName nvarchar(256),
	@LoweredApplicationName nvarchar(256),
	@ApplicationId uniqueidentifier,
	@Description nvarchar(256) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @ApplicationId IS NULL
		 SET @ApplicationId = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [aspnet_Applications]
	(
		[ApplicationName],
		[LoweredApplicationName],
		[ApplicationId],
		[Description]
	)
	VALUES
	(
		@ApplicationName,
		@LoweredApplicationName,
		@ApplicationId,
		@Description
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_ApplicationsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_ApplicationsLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ApplicationName],
		[LoweredApplicationName],
		[ApplicationId],
		[Description]
	FROM [aspnet_Applications]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_ApplicationsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_ApplicationsLoadByPrimaryKey] (
	@ApplicationId uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ApplicationName],
		[LoweredApplicationName],
		[ApplicationId],
		[Description]
	FROM [aspnet_Applications]
	WHERE
		([ApplicationId] = @ApplicationId)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_ApplicationsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_ApplicationsUpdate] (
	@ApplicationName nvarchar(256),
	@LoweredApplicationName nvarchar(256),
	@ApplicationId uniqueidentifier,
	@Description nvarchar(256) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [aspnet_Applications]
	SET
		[ApplicationName] = @ApplicationName,
		[LoweredApplicationName] = @LoweredApplicationName,
		[Description] = @Description
	WHERE
		[ApplicationId] = @ApplicationId


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_MembershipDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_MembershipDelete] (
	@UserId uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_Membership]
	WHERE
		[UserId] = @UserId
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_MembershipInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_MembershipInsert] (
	@ApplicationId uniqueidentifier,
	@UserId uniqueidentifier,
	@Password nvarchar(128),
	@PasswordFormat int,
	@PasswordSalt nvarchar(128),
	@MobilePIN nvarchar(16) = NULL,
	@Email nvarchar(256) = NULL,
	@LoweredEmail nvarchar(256) = NULL,
	@PasswordQuestion nvarchar(256) = NULL,
	@PasswordAnswer nvarchar(128) = NULL,
	@IsApproved bit,
	@IsLockedOut bit,
	@CreateDate datetime,
	@LastLoginDate datetime,
	@LastPasswordChangedDate datetime,
	@LastLockoutDate datetime,
	@FailedPasswordAttemptCount int,
	@FailedPasswordAttemptWindowStart datetime,
	@FailedPasswordAnswerAttemptCount int,
	@FailedPasswordAnswerAttemptWindowStart datetime,
	@Comment ntext = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @UserId IS NULL
		 SET @UserId = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [aspnet_Membership]
	(
		[ApplicationId],
		[UserId],
		[Password],
		[PasswordFormat],
		[PasswordSalt],
		[MobilePIN],
		[Email],
		[LoweredEmail],
		[PasswordQuestion],
		[PasswordAnswer],
		[IsApproved],
		[IsLockedOut],
		[CreateDate],
		[LastLoginDate],
		[LastPasswordChangedDate],
		[LastLockoutDate],
		[FailedPasswordAttemptCount],
		[FailedPasswordAttemptWindowStart],
		[FailedPasswordAnswerAttemptCount],
		[FailedPasswordAnswerAttemptWindowStart],
		[Comment]
	)
	VALUES
	(
		@ApplicationId,
		@UserId,
		@Password,
		@PasswordFormat,
		@PasswordSalt,
		@MobilePIN,
		@Email,
		@LoweredEmail,
		@PasswordQuestion,
		@PasswordAnswer,
		@IsApproved,
		@IsLockedOut,
		@CreateDate,
		@LastLoginDate,
		@LastPasswordChangedDate,
		@LastLockoutDate,
		@FailedPasswordAttemptCount,
		@FailedPasswordAttemptWindowStart,
		@FailedPasswordAnswerAttemptCount,
		@FailedPasswordAnswerAttemptWindowStart,
		@Comment
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_MembershipLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_MembershipLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ApplicationId],
		[UserId],
		[Password],
		[PasswordFormat],
		[PasswordSalt],
		[MobilePIN],
		[Email],
		[LoweredEmail],
		[PasswordQuestion],
		[PasswordAnswer],
		[IsApproved],
		[IsLockedOut],
		[CreateDate],
		[LastLoginDate],
		[LastPasswordChangedDate],
		[LastLockoutDate],
		[FailedPasswordAttemptCount],
		[FailedPasswordAttemptWindowStart],
		[FailedPasswordAnswerAttemptCount],
		[FailedPasswordAnswerAttemptWindowStart],
		[Comment]
	FROM [aspnet_Membership]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_MembershipLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_MembershipLoadByPrimaryKey] (
	@UserId uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ApplicationId],
		[UserId],
		[Password],
		[PasswordFormat],
		[PasswordSalt],
		[MobilePIN],
		[Email],
		[LoweredEmail],
		[PasswordQuestion],
		[PasswordAnswer],
		[IsApproved],
		[IsLockedOut],
		[CreateDate],
		[LastLoginDate],
		[LastPasswordChangedDate],
		[LastLockoutDate],
		[FailedPasswordAttemptCount],
		[FailedPasswordAttemptWindowStart],
		[FailedPasswordAnswerAttemptCount],
		[FailedPasswordAnswerAttemptWindowStart],
		[Comment]
	FROM [aspnet_Membership]
	WHERE
		([UserId] = @UserId)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_MembershipUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_MembershipUpdate] (
	@ApplicationId uniqueidentifier,
	@UserId uniqueidentifier,
	@Password nvarchar(128),
	@PasswordFormat int,
	@PasswordSalt nvarchar(128),
	@MobilePIN nvarchar(16) = NULL,
	@Email nvarchar(256) = NULL,
	@LoweredEmail nvarchar(256) = NULL,
	@PasswordQuestion nvarchar(256) = NULL,
	@PasswordAnswer nvarchar(128) = NULL,
	@IsApproved bit,
	@IsLockedOut bit,
	@CreateDate datetime,
	@LastLoginDate datetime,
	@LastPasswordChangedDate datetime,
	@LastLockoutDate datetime,
	@FailedPasswordAttemptCount int,
	@FailedPasswordAttemptWindowStart datetime,
	@FailedPasswordAnswerAttemptCount int,
	@FailedPasswordAnswerAttemptWindowStart datetime,
	@Comment ntext = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [aspnet_Membership]
	SET
		[ApplicationId] = @ApplicationId,
		[Password] = @Password,
		[PasswordFormat] = @PasswordFormat,
		[PasswordSalt] = @PasswordSalt,
		[MobilePIN] = @MobilePIN,
		[Email] = @Email,
		[LoweredEmail] = @LoweredEmail,
		[PasswordQuestion] = @PasswordQuestion,
		[PasswordAnswer] = @PasswordAnswer,
		[IsApproved] = @IsApproved,
		[IsLockedOut] = @IsLockedOut,
		[CreateDate] = @CreateDate,
		[LastLoginDate] = @LastLoginDate,
		[LastPasswordChangedDate] = @LastPasswordChangedDate,
		[LastLockoutDate] = @LastLockoutDate,
		[FailedPasswordAttemptCount] = @FailedPasswordAttemptCount,
		[FailedPasswordAttemptWindowStart] = @FailedPasswordAttemptWindowStart,
		[FailedPasswordAnswerAttemptCount] = @FailedPasswordAnswerAttemptCount,
		[FailedPasswordAnswerAttemptWindowStart] = @FailedPasswordAnswerAttemptWindowStart,
		[Comment] = @Comment
	WHERE
		[UserId] = @UserId


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PathsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PathsDelete] (
	@PathId uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_Paths]
	WHERE
		[PathId] = @PathId
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PathsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PathsInsert] (
	@ApplicationId uniqueidentifier,
	@PathId uniqueidentifier,
	@Path nvarchar(256),
	@LoweredPath nvarchar(256)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @PathId IS NULL
		 SET @PathId = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [aspnet_Paths]
	(
		[ApplicationId],
		[PathId],
		[Path],
		[LoweredPath]
	)
	VALUES
	(
		@ApplicationId,
		@PathId,
		@Path,
		@LoweredPath
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PathsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PathsLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ApplicationId],
		[PathId],
		[Path],
		[LoweredPath]
	FROM [aspnet_Paths]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PathsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PathsLoadByPrimaryKey] (
	@PathId uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ApplicationId],
		[PathId],
		[Path],
		[LoweredPath]
	FROM [aspnet_Paths]
	WHERE
		([PathId] = @PathId)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PathsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PathsUpdate] (
	@ApplicationId uniqueidentifier,
	@PathId uniqueidentifier,
	@Path nvarchar(256),
	@LoweredPath nvarchar(256)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [aspnet_Paths]
	SET
		[ApplicationId] = @ApplicationId,
		[Path] = @Path,
		[LoweredPath] = @LoweredPath
	WHERE
		[PathId] = @PathId


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PersonalizationAllUsersDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PersonalizationAllUsersDelete] (
	@PathId uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_PersonalizationAllUsers]
	WHERE
		[PathId] = @PathId
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PersonalizationAllUsersInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PersonalizationAllUsersInsert] (
	@PathId uniqueidentifier,
	@PageSettings image,
	@LastUpdatedDate datetime
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @PathId IS NULL
		 SET @PathId = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [aspnet_PersonalizationAllUsers]
	(
		[PathId],
		[PageSettings],
		[LastUpdatedDate]
	)
	VALUES
	(
		@PathId,
		@PageSettings,
		@LastUpdatedDate
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PersonalizationAllUsersLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PersonalizationAllUsersLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PathId],
		[PageSettings],
		[LastUpdatedDate]
	FROM [aspnet_PersonalizationAllUsers]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PersonalizationAllUsersLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PersonalizationAllUsersLoadByPrimaryKey] (
	@PathId uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PathId],
		[PageSettings],
		[LastUpdatedDate]
	FROM [aspnet_PersonalizationAllUsers]
	WHERE
		([PathId] = @PathId)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PersonalizationAllUsersUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PersonalizationAllUsersUpdate] (
	@PathId uniqueidentifier,
	@PageSettings image,
	@LastUpdatedDate datetime
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [aspnet_PersonalizationAllUsers]
	SET
		[PageSettings] = @PageSettings,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[PathId] = @PathId


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PersonalizationPerUserDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PersonalizationPerUserDelete] (
	@Id uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_PersonalizationPerUser]
	WHERE
		[Id] = @Id
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PersonalizationPerUserInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PersonalizationPerUserInsert] (
	@Id uniqueidentifier,
	@PathId uniqueidentifier = NULL,
	@UserId uniqueidentifier = NULL,
	@PageSettings image,
	@LastUpdatedDate datetime
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @Id IS NULL
		 SET @Id = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [aspnet_PersonalizationPerUser]
	(
		[Id],
		[PathId],
		[UserId],
		[PageSettings],
		[LastUpdatedDate]
	)
	VALUES
	(
		@Id,
		@PathId,
		@UserId,
		@PageSettings,
		@LastUpdatedDate
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PersonalizationPerUserLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PersonalizationPerUserLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[Id],
		[PathId],
		[UserId],
		[PageSettings],
		[LastUpdatedDate]
	FROM [aspnet_PersonalizationPerUser]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PersonalizationPerUserLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PersonalizationPerUserLoadByPrimaryKey] (
	@Id uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[Id],
		[PathId],
		[UserId],
		[PageSettings],
		[LastUpdatedDate]
	FROM [aspnet_PersonalizationPerUser]
	WHERE
		([Id] = @Id)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_PersonalizationPerUserUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_PersonalizationPerUserUpdate] (
	@Id uniqueidentifier,
	@PathId uniqueidentifier = NULL,
	@UserId uniqueidentifier = NULL,
	@PageSettings image,
	@LastUpdatedDate datetime
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [aspnet_PersonalizationPerUser]
	SET
		[PathId] = @PathId,
		[UserId] = @UserId,
		[PageSettings] = @PageSettings,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[Id] = @Id


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_ProfileDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_ProfileDelete] (
	@UserId uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_Profile]
	WHERE
		[UserId] = @UserId
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_ProfileInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_ProfileInsert] (
	@UserId uniqueidentifier,
	@PropertyNames ntext,
	@PropertyValuesString ntext,
	@PropertyValuesBinary image,
	@LastUpdatedDate datetime
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @UserId IS NULL
		 SET @UserId = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [aspnet_Profile]
	(
		[UserId],
		[PropertyNames],
		[PropertyValuesString],
		[PropertyValuesBinary],
		[LastUpdatedDate]
	)
	VALUES
	(
		@UserId,
		@PropertyNames,
		@PropertyValuesString,
		@PropertyValuesBinary,
		@LastUpdatedDate
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_ProfileLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_ProfileLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserId],
		[PropertyNames],
		[PropertyValuesString],
		[PropertyValuesBinary],
		[LastUpdatedDate]
	FROM [aspnet_Profile]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_ProfileLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_ProfileLoadByPrimaryKey] (
	@UserId uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserId],
		[PropertyNames],
		[PropertyValuesString],
		[PropertyValuesBinary],
		[LastUpdatedDate]
	FROM [aspnet_Profile]
	WHERE
		([UserId] = @UserId)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_ProfileUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_ProfileUpdate] (
	@UserId uniqueidentifier,
	@PropertyNames ntext,
	@PropertyValuesString ntext,
	@PropertyValuesBinary image,
	@LastUpdatedDate datetime
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [aspnet_Profile]
	SET
		[PropertyNames] = @PropertyNames,
		[PropertyValuesString] = @PropertyValuesString,
		[PropertyValuesBinary] = @PropertyValuesBinary,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[UserId] = @UserId


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_RolesDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_RolesDelete] (
	@RoleId uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_Roles]
	WHERE
		[RoleId] = @RoleId
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_RolesInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_RolesInsert] (
	@ApplicationId uniqueidentifier,
	@RoleId uniqueidentifier,
	@RoleName nvarchar(256),
	@LoweredRoleName nvarchar(256),
	@Description nvarchar(256) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @RoleId IS NULL
		 SET @RoleId = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [aspnet_Roles]
	(
		[ApplicationId],
		[RoleId],
		[RoleName],
		[LoweredRoleName],
		[Description]
	)
	VALUES
	(
		@ApplicationId,
		@RoleId,
		@RoleName,
		@LoweredRoleName,
		@Description
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_RolesLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_RolesLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ApplicationId],
		[RoleId],
		[RoleName],
		[LoweredRoleName],
		[Description]
	FROM [aspnet_Roles]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_RolesLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_RolesLoadByPrimaryKey] (
	@RoleId uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ApplicationId],
		[RoleId],
		[RoleName],
		[LoweredRoleName],
		[Description]
	FROM [aspnet_Roles]
	WHERE
		([RoleId] = @RoleId)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_RolesUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_RolesUpdate] (
	@ApplicationId uniqueidentifier,
	@RoleId uniqueidentifier,
	@RoleName nvarchar(256),
	@LoweredRoleName nvarchar(256),
	@Description nvarchar(256) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [aspnet_Roles]
	SET
		[ApplicationId] = @ApplicationId,
		[RoleName] = @RoleName,
		[LoweredRoleName] = @LoweredRoleName,
		[Description] = @Description
	WHERE
		[RoleId] = @RoleId


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_SchemaVersionsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_SchemaVersionsDelete] (
	@Feature nvarchar(128),
	@CompatibleSchemaVersion nvarchar(128)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_SchemaVersions]
	WHERE
		[Feature] = @Feature AND
		[CompatibleSchemaVersion] = @CompatibleSchemaVersion
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_SchemaVersionsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_SchemaVersionsInsert] (
	@Feature nvarchar(128),
	@CompatibleSchemaVersion nvarchar(128),
	@IsCurrentVersion bit
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [aspnet_SchemaVersions]
	(
		[Feature],
		[CompatibleSchemaVersion],
		[IsCurrentVersion]
	)
	VALUES
	(
		@Feature,
		@CompatibleSchemaVersion,
		@IsCurrentVersion
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_SchemaVersionsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_SchemaVersionsLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[Feature],
		[CompatibleSchemaVersion],
		[IsCurrentVersion]
	FROM [aspnet_SchemaVersions]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_SchemaVersionsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_SchemaVersionsLoadByPrimaryKey] (
	@Feature nvarchar(128),
	@CompatibleSchemaVersion nvarchar(128)
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[Feature],
		[CompatibleSchemaVersion],
		[IsCurrentVersion]
	FROM [aspnet_SchemaVersions]
	WHERE
		([Feature] = @Feature) AND
		([CompatibleSchemaVersion] = @CompatibleSchemaVersion)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_SchemaVersionsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_SchemaVersionsUpdate] (
	@Feature nvarchar(128),
	@CompatibleSchemaVersion nvarchar(128),
	@IsCurrentVersion bit
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [aspnet_SchemaVersions]
	SET
		[IsCurrentVersion] = @IsCurrentVersion
	WHERE
		[Feature] = @Feature
	AND	[CompatibleSchemaVersion] = @CompatibleSchemaVersion


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_UsersDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_UsersDelete] (
	@UserId uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_Users]
	WHERE
		[UserId] = @UserId
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_UsersInRolesDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_UsersInRolesDelete] (
	@UserId uniqueidentifier,
	@RoleId uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_UsersInRoles]
	WHERE
		[UserId] = @UserId AND
		[RoleId] = @RoleId
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_UsersInRolesInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_UsersInRolesInsert] (
	@UserId uniqueidentifier,
	@RoleId uniqueidentifier
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @UserId IS NULL
		 SET @UserId = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err

	IF @RoleId IS NULL
		 SET @RoleId = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [aspnet_UsersInRoles]
	(
		[UserId],
		[RoleId]
	)
	VALUES
	(
		@UserId,
		@RoleId
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_UsersInRolesLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_UsersInRolesLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserId],
		[RoleId]
	FROM [aspnet_UsersInRoles]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_UsersInRolesLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_UsersInRolesLoadByPrimaryKey] (
	@UserId uniqueidentifier,
	@RoleId uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserId],
		[RoleId]
	FROM [aspnet_UsersInRoles]
	WHERE
		([UserId] = @UserId) AND
		([RoleId] = @RoleId)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_UsersInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_UsersInsert] (
	@ApplicationId uniqueidentifier,
	@UserId uniqueidentifier,
	@UserName nvarchar(256),
	@LoweredUserName nvarchar(256),
	@MobileAlias nvarchar(16) = NULL,
	@IsAnonymous bit,
	@LastActivityDate datetime
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int
	IF @UserId IS NULL
		 SET @UserId = NEWID()

	SET @Err = @@Error

	IF (@Err <> 0)
	    RETURN @Err


	INSERT
	INTO [aspnet_Users]
	(
		[ApplicationId],
		[UserId],
		[UserName],
		[LoweredUserName],
		[MobileAlias],
		[IsAnonymous],
		[LastActivityDate]
	)
	VALUES
	(
		@ApplicationId,
		@UserId,
		@UserName,
		@LoweredUserName,
		@MobileAlias,
		@IsAnonymous,
		@LastActivityDate
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_UsersLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_UsersLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ApplicationId],
		[UserId],
		[UserName],
		[LoweredUserName],
		[MobileAlias],
		[IsAnonymous],
		[LastActivityDate]
	FROM [aspnet_Users]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_UsersLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_UsersLoadByPrimaryKey] (
	@UserId uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ApplicationId],
		[UserId],
		[UserName],
		[LoweredUserName],
		[MobileAlias],
		[IsAnonymous],
		[LastActivityDate]
	FROM [aspnet_Users]
	WHERE
		([UserId] = @UserId)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_UsersUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_UsersUpdate] (
	@ApplicationId uniqueidentifier,
	@UserId uniqueidentifier,
	@UserName nvarchar(256),
	@LoweredUserName nvarchar(256),
	@MobileAlias nvarchar(16) = NULL,
	@IsAnonymous bit,
	@LastActivityDate datetime
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [aspnet_Users]
	SET
		[ApplicationId] = @ApplicationId,
		[UserName] = @UserName,
		[LoweredUserName] = @LoweredUserName,
		[MobileAlias] = @MobileAlias,
		[IsAnonymous] = @IsAnonymous,
		[LastActivityDate] = @LastActivityDate
	WHERE
		[UserId] = @UserId


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_WebEvent_EventsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_WebEvent_EventsDelete] (
	@EventId char(32)
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [aspnet_WebEvent_Events]
	WHERE
		[EventId] = @EventId
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_WebEvent_EventsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_WebEvent_EventsInsert] (
	@EventId char(32),
	@EventTimeUtc datetime,
	@EventTime datetime,
	@EventType nvarchar(256),
	@EventSequence decimal(19,0),
	@EventOccurrence decimal(19,0),
	@EventCode int,
	@EventDetailCode int,
	@Message nvarchar(1024) = NULL,
	@ApplicationPath nvarchar(256) = NULL,
	@ApplicationVirtualPath nvarchar(256) = NULL,
	@MachineName nvarchar(256),
	@RequestUrl nvarchar(1024) = NULL,
	@ExceptionType nvarchar(256) = NULL,
	@Details ntext = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [aspnet_WebEvent_Events]
	(
		[EventId],
		[EventTimeUtc],
		[EventTime],
		[EventType],
		[EventSequence],
		[EventOccurrence],
		[EventCode],
		[EventDetailCode],
		[Message],
		[ApplicationPath],
		[ApplicationVirtualPath],
		[MachineName],
		[RequestUrl],
		[ExceptionType],
		[Details]
	)
	VALUES
	(
		@EventId,
		@EventTimeUtc,
		@EventTime,
		@EventType,
		@EventSequence,
		@EventOccurrence,
		@EventCode,
		@EventDetailCode,
		@Message,
		@ApplicationPath,
		@ApplicationVirtualPath,
		@MachineName,
		@RequestUrl,
		@ExceptionType,
		@Details
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_WebEvent_EventsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_WebEvent_EventsLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EventId],
		[EventTimeUtc],
		[EventTime],
		[EventType],
		[EventSequence],
		[EventOccurrence],
		[EventCode],
		[EventDetailCode],
		[Message],
		[ApplicationPath],
		[ApplicationVirtualPath],
		[MachineName],
		[RequestUrl],
		[ExceptionType],
		[Details]
	FROM [aspnet_WebEvent_Events]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_WebEvent_EventsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_WebEvent_EventsLoadByPrimaryKey] (
	@EventId char(32)
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[EventId],
		[EventTimeUtc],
		[EventTime],
		[EventType],
		[EventSequence],
		[EventOccurrence],
		[EventCode],
		[EventDetailCode],
		[Message],
		[ApplicationPath],
		[ApplicationVirtualPath],
		[MachineName],
		[RequestUrl],
		[ExceptionType],
		[Details]
	FROM [aspnet_WebEvent_Events]
	WHERE
		([EventId] = @EventId)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_aspnet_WebEvent_EventsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_aspnet_WebEvent_EventsUpdate] (
	@EventId char(32),
	@EventTimeUtc datetime,
	@EventTime datetime,
	@EventType nvarchar(256),
	@EventSequence decimal(19,0),
	@EventOccurrence decimal(19,0),
	@EventCode int,
	@EventDetailCode int,
	@Message nvarchar(1024) = NULL,
	@ApplicationPath nvarchar(256) = NULL,
	@ApplicationVirtualPath nvarchar(256) = NULL,
	@MachineName nvarchar(256),
	@RequestUrl nvarchar(1024) = NULL,
	@ExceptionType nvarchar(256) = NULL,
	@Details ntext = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [aspnet_WebEvent_Events]
	SET
		[EventTimeUtc] = @EventTimeUtc,
		[EventTime] = @EventTime,
		[EventType] = @EventType,
		[EventSequence] = @EventSequence,
		[EventOccurrence] = @EventOccurrence,
		[EventCode] = @EventCode,
		[EventDetailCode] = @EventDetailCode,
		[Message] = @Message,
		[ApplicationPath] = @ApplicationPath,
		[ApplicationVirtualPath] = @ApplicationVirtualPath,
		[MachineName] = @MachineName,
		[RequestUrl] = @RequestUrl,
		[ExceptionType] = @ExceptionType,
		[Details] = @Details
	WHERE
		[EventId] = @EventId


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CertificateDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_CertificateDelete]
(
	@CertificateID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Certificate]
	WHERE
		[CertificateID] = @CertificateID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CertificateInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_CertificateInsert]
(
	@CertificateID int = NULL output,
	@Name nvarchar(300) = NULL,
	@Path nvarchar(500) = NULL,
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
	INTO [Certificate]
	(
		[Name],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@Name,
		@Path,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @CertificateID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CertificateLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_CertificateLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CertificateID],
		[Name],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [Certificate]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CertificateLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_CertificateLoadByPrimaryKey]
(
	@CertificateID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CertificateID],
		[Name],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [Certificate]
	WHERE
		([CertificateID] = @CertificateID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CertificateUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_CertificateUpdate]
(
	@CertificateID int,
	@Name nvarchar(300) = NULL,
	@Path nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Certificate]
	SET
		[Name] = @Name,
		[Path] = @Path,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[CertificateID] = @CertificateID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CompanyPositionDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CompanyPositionDelete] (
	@CompanyPositionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [CompanyPosition]
	WHERE
		[CompanyPositionID] = @CompanyPositionID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CompanyPositionInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CompanyPositionInsert] (
	@CompanyPositionID int = NULL output,
	@Title nvarchar(250) = NULL,
	@ShortTitle nvarchar(10) = NULL,
	@JobDescription nvarchar(MAX) = NULL,
	@Notes nvarchar(1000) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [CompanyPosition]
	(
		[Title],
		[ShortTitle],
		[JobDescription],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	)
	VALUES
	(
		@Title,
		@ShortTitle,
		@JobDescription,
		@Notes,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate
	)

	SET @Err = @@Error

	SELECT @CompanyPositionID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CompanyPositionLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CompanyPositionLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CompanyPositionID],
		[Title],
		[ShortTitle],
		[JobDescription],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [CompanyPosition]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CompanyPositionLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CompanyPositionLoadByPrimaryKey] (
	@CompanyPositionID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CompanyPositionID],
		[Title],
		[ShortTitle],
		[JobDescription],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [CompanyPosition]
	WHERE
		([CompanyPositionID] = @CompanyPositionID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CompanyPositionUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CompanyPositionUpdate] (
	@CompanyPositionID int,
	@Title nvarchar(250) = NULL,
	@ShortTitle nvarchar(10) = NULL,
	@JobDescription nvarchar(MAX) = NULL,
	@Notes nvarchar(1000) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [CompanyPosition]
	SET
		[Title] = @Title,
		[ShortTitle] = @ShortTitle,
		[JobDescription] = @JobDescription,
		[Notes] = @Notes,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate
	WHERE
		[CompanyPositionID] = @CompanyPositionID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CourseDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CourseDelete] (
	@CourseID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Course]
	WHERE
		[CourseID] = @CourseID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CourseDetailDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CourseDetailDelete] (
	@CourseDetailID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [CourseDetail]
	WHERE
		[CourseDetailID] = @CourseDetailID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CourseDetailInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CourseDetailInsert] (
	@CourseDetailID int = NULL output,
	@PilotCourseID int = NULL,
	@Notes nvarchar(1000) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [CourseDetail]
	(
		[PilotCourseID],
		[Notes]
	)
	VALUES
	(
		@PilotCourseID,
		@Notes
	)

	SET @Err = @@Error

	SELECT @CourseDetailID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CourseDetailLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CourseDetailLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CourseDetailID],
		[PilotCourseID],
		[Notes]
	FROM [CourseDetail]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CourseDetailLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CourseDetailLoadByPrimaryKey] (
	@CourseDetailID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CourseDetailID],
		[PilotCourseID],
		[Notes]
	FROM [CourseDetail]
	WHERE
		([CourseDetailID] = @CourseDetailID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CourseDetailUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CourseDetailUpdate] (
	@CourseDetailID int,
	@PilotCourseID int = NULL,
	@Notes nvarchar(1000) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [CourseDetail]
	SET
		[PilotCourseID] = @PilotCourseID,
		[Notes] = @Notes
	WHERE
		[CourseDetailID] = @CourseDetailID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CourseInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CourseInsert] (
	@CourseID int = NULL output,
	@Name nvarchar(2000) = NULL,
	@Code nvarchar(100) = NULL,
	@Description nvarchar(2000) = NULL,
	@AlertDatePeriod int = NULL,
	@ExpiryDate_Period int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Course]
	(
		[Name],
		[Code],
		[Description],
		[AlertDatePeriod],
		[ExpiryDate_Period]
	)
	VALUES
	(
		@Name,
		@Code,
		@Description,
		@AlertDatePeriod,
		@ExpiryDate_Period
	)

	SET @Err = @@Error

	SELECT @CourseID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CourseLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CourseLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CourseID],
		[Name],
		[Code],
		[Description],
		[AlertDatePeriod],
		[ExpiryDate_Period]
	FROM [Course]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CourseLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CourseLoadByPrimaryKey] (
	@CourseID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CourseID],
		[Name],
		[Code],
		[Description],
		[AlertDatePeriod],
		[ExpiryDate_Period]
	FROM [Course]
	WHERE
		([CourseID] = @CourseID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CourseUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CourseUpdate] (
	@CourseID int,
	@Name nvarchar(2000) = NULL,
	@Code nvarchar(100) = NULL,
	@Description nvarchar(2000) = NULL,
	@AlertDatePeriod int = NULL,
	@ExpiryDate_Period int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Course]
	SET
		[Name] = @Name,
		[Code] = @Code,
		[Description] = @Description,
		[AlertDatePeriod] = @AlertDatePeriod,
		[ExpiryDate_Period] = @ExpiryDate_Period
	WHERE
		[CourseID] = @CourseID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewDelete] (
	@CrewID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Crew]
	WHERE
		[CrewID] = @CrewID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewInsert] (
	@CrewID int = NULL output,
	@Name nvarchar(150) = NULL,
	@StaffNo nvarchar(10) = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@Username nvarchar(50) = NULL,
	@RANK nvarchar(10) = NULL,
	@IDNO nvarchar(10) = NULL,
	@LicenseNo nvarchar(10) = NULL,
	@Competenecycheck datetime = NULL,
	@MEDICALLICENSEEXPIRYFrom datetime = NULL,
	@MEDICALLICENSEEXPIRYTo datetime = NULL,
	@InstructorRenewal datetime = NULL,
	@TRANSITIONCOURSE datetime = NULL,
	@RECURRENT12 datetime = NULL,
	@RECURRENT24 datetime = NULL,
	@SMS datetime = NULL,
	@security datetime = NULL,
	@Email nvarchar(200) = NULL,
	@Mobile nvarchar(50) = NULL,
	@ShortName nvarchar(6) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Crew]
	(
		[Name],
		[StaffNo],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[Username],
		[RANK],
		[IDNO],
		[LicenseNo],
		[Competenecycheck],
		[MEDICALLICENSEEXPIRYFrom],
		[MEDICALLICENSEEXPIRYTo],
		[InstructorRenewal],
		[TRANSITIONCOURSE],
		[RECURRENT12],
		[RECURRENT24],
		[SMS],
		[security],
		[Email],
		[Mobile],
		[ShortName]
	)
	VALUES
	(
		@Name,
		@StaffNo,
		@Notes,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate,
		@Username,
		@RANK,
		@IDNO,
		@LicenseNo,
		@Competenecycheck,
		@MEDICALLICENSEEXPIRYFrom,
		@MEDICALLICENSEEXPIRYTo,
		@InstructorRenewal,
		@TRANSITIONCOURSE,
		@RECURRENT12,
		@RECURRENT24,
		@SMS,
		@security,
		@Email,
		@Mobile,
		@ShortName
	)

	SET @Err = @@Error

	SELECT @CrewID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CrewID],
		[Name],
		[StaffNo],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[Username],
		[RANK],
		[IDNO],
		[LicenseNo],
		[Competenecycheck],
		[MEDICALLICENSEEXPIRYFrom],
		[MEDICALLICENSEEXPIRYTo],
		[InstructorRenewal],
		[TRANSITIONCOURSE],
		[RECURRENT12],
		[RECURRENT24],
		[SMS],
		[security],
		[Email],
		[Mobile],
		[ShortName]
	FROM [Crew]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewLoadByPrimaryKey] (
	@CrewID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CrewID],
		[Name],
		[StaffNo],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[Username],
		[RANK],
		[IDNO],
		[LicenseNo],
		[Competenecycheck],
		[MEDICALLICENSEEXPIRYFrom],
		[MEDICALLICENSEEXPIRYTo],
		[InstructorRenewal],
		[TRANSITIONCOURSE],
		[RECURRENT12],
		[RECURRENT24],
		[SMS],
		[security],
		[Email],
		[Mobile],
		[ShortName]
	FROM [Crew]
	WHERE
		([CrewID] = @CrewID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewRouteDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewRouteDelete]
(
	@CrewRouteID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [CrewRoute]
	WHERE
		[CrewRouteID] = @CrewRouteID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewRouteDetailsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewRouteDetailsDelete]
(
	@CrewRouteDetailsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [CrewRouteDetails]
	WHERE
		[CrewRouteDetailsID] = @CrewRouteDetailsID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewRouteDetailsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewRouteDetailsInsert]
(
	@CrewRouteDetailsID int = NULL output,
	@CrewRouteID int = NULL,
	@SectorID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [CrewRouteDetails]
	(
		[CrewRouteID],
		[SectorID]
	)
	VALUES
	(
		@CrewRouteID,
		@SectorID
	)

	SET @Err = @@Error

	SELECT @CrewRouteDetailsID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewRouteDetailsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewRouteDetailsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CrewRouteDetailsID],
		[CrewRouteID],
		[SectorID]
	FROM [CrewRouteDetails]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewRouteDetailsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewRouteDetailsLoadByPrimaryKey]
(
	@CrewRouteDetailsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CrewRouteDetailsID],
		[CrewRouteID],
		[SectorID]
	FROM [CrewRouteDetails]
	WHERE
		([CrewRouteDetailsID] = @CrewRouteDetailsID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewRouteDetailsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewRouteDetailsUpdate]
(
	@CrewRouteDetailsID int,
	@CrewRouteID int = NULL,
	@SectorID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [CrewRouteDetails]
	SET
		[CrewRouteID] = @CrewRouteID,
		[SectorID] = @SectorID
	WHERE
		[CrewRouteDetailsID] = @CrewRouteDetailsID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewRouteInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewRouteInsert]
(
	@CrewRouteID int = NULL output,
	@Name nvarchar(10) = NULL,
	@CrewRouteDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [CrewRoute]
	(
		[Name],
		[CrewRouteDate]
	)
	VALUES
	(
		@Name,
		@CrewRouteDate
	)

	SET @Err = @@Error

	SELECT @CrewRouteID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewRouteLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewRouteLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CrewRouteID],
		[Name],
		[CrewRouteDate]
	FROM [CrewRoute]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewRouteLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewRouteLoadByPrimaryKey]
(
	@CrewRouteID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CrewRouteID],
		[Name],
		[CrewRouteDate]
	FROM [CrewRoute]
	WHERE
		([CrewRouteID] = @CrewRouteID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewRouteUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewRouteUpdate]
(
	@CrewRouteID int,
	@Name nvarchar(10) = NULL,
	@CrewRouteDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [CrewRoute]
	SET
		[Name] = @Name,
		[CrewRouteDate] = @CrewRouteDate
	WHERE
		[CrewRouteID] = @CrewRouteID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewTransactionDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewTransactionDelete] (
	@CrewTransactionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [CrewTransaction]
	WHERE
		[CrewTransactionID] = @CrewTransactionID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewTransactionInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewTransactionInsert] (
	@CrewTransactionID int = NULL output,
	@TransactionsID int = NULL,
	@CrewID int = NULL,
	@DateFrom datetime = NULL,
	@DateTo datetime = NULL,
	@CrewCityID int = NULL,
	@Location nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [CrewTransaction]
	(
		[TransactionsID],
		[CrewID],
		[DateFrom],
		[DateTo],
		[CrewCityID],
		[Location]
	)
	VALUES
	(
		@TransactionsID,
		@CrewID,
		@DateFrom,
		@DateTo,
		@CrewCityID,
		@Location
	)

	SET @Err = @@Error

	SELECT @CrewTransactionID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewTransactionLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewTransactionLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CrewTransactionID],
		[TransactionsID],
		[CrewID],
		[DateFrom],
		[DateTo],
		[CrewCityID],
		[Location]
	FROM [CrewTransaction]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewTransactionLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewTransactionLoadByPrimaryKey] (
	@CrewTransactionID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CrewTransactionID],
		[TransactionsID],
		[CrewID],
		[DateFrom],
		[DateTo],
		[CrewCityID],
		[Location]
	FROM [CrewTransaction]
	WHERE
		([CrewTransactionID] = @CrewTransactionID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewTransactionUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewTransactionUpdate] (
	@CrewTransactionID int,
	@TransactionsID int = NULL,
	@CrewID int = NULL,
	@DateFrom datetime = NULL,
	@DateTo datetime = NULL,
	@CrewCityID int = NULL,
	@Location nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [CrewTransaction]
	SET
		[TransactionsID] = @TransactionsID,
		[CrewID] = @CrewID,
		[DateFrom] = @DateFrom,
		[DateTo] = @DateTo,
		[CrewCityID] = @CrewCityID,
		[Location] = @Location
	WHERE
		[CrewTransactionID] = @CrewTransactionID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_CrewUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_CrewUpdate] (
	@CrewID int,
	@Name nvarchar(150) = NULL,
	@StaffNo nvarchar(10) = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@Username nvarchar(50) = NULL,
	@RANK nvarchar(10) = NULL,
	@IDNO nvarchar(10) = NULL,
	@LicenseNo nvarchar(10) = NULL,
	@Competenecycheck datetime = NULL,
	@MEDICALLICENSEEXPIRYFrom datetime = NULL,
	@MEDICALLICENSEEXPIRYTo datetime = NULL,
	@InstructorRenewal datetime = NULL,
	@TRANSITIONCOURSE datetime = NULL,
	@RECURRENT12 datetime = NULL,
	@RECURRENT24 datetime = NULL,
	@SMS datetime = NULL,
	@security datetime = NULL,
	@Email nvarchar(200) = NULL,
	@Mobile nvarchar(50) = NULL,
	@ShortName nvarchar(6) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Crew]
	SET
		[Name] = @Name,
		[StaffNo] = @StaffNo,
		[Notes] = @Notes,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate,
		[Username] = @Username,
		[RANK] = @RANK,
		[IDNO] = @IDNO,
		[LicenseNo] = @LicenseNo,
		[Competenecycheck] = @Competenecycheck,
		[MEDICALLICENSEEXPIRYFrom] = @MEDICALLICENSEEXPIRYFrom,
		[MEDICALLICENSEEXPIRYTo] = @MEDICALLICENSEEXPIRYTo,
		[InstructorRenewal] = @InstructorRenewal,
		[TRANSITIONCOURSE] = @TRANSITIONCOURSE,
		[RECURRENT12] = @RECURRENT12,
		[RECURRENT24] = @RECURRENT24,
		[SMS] = @SMS,
		[security] = @security,
		[Email] = @Email,
		[Mobile] = @Mobile,
		[ShortName] = @ShortName
	WHERE
		[CrewID] = @CrewID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DaysDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DaysDelete] (
	@DayID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Days]
	WHERE
		[DayID] = @DayID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DaysInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DaysInsert] (
	@DayID int = NULL output,
	@Day int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Days]
	(
		[Day]
	)
	VALUES
	(
		@Day
	)

	SET @Err = @@Error

	SELECT @DayID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DaysLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DaysLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DayID],
		[Day]
	FROM [Days]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DaysLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DaysLoadByPrimaryKey] (
	@DayID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DayID],
		[Day]
	FROM [Days]
	WHERE
		([DayID] = @DayID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DaysUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DaysUpdate] (
	@DayID int,
	@Day int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Days]
	SET
		[Day] = @Day
	WHERE
		[DayID] = @DayID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DbLogDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DbLogDelete]
(
	@DbLogID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [DbLog]
	WHERE
		[DbLogID] = @DbLogID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DbLogInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DbLogInsert]
(
	@DbLogID int = NULL output,
	@UserID uniqueidentifier = NULL,
	@ItemID int = NULL,
	@ItemType int = NULL,
	@LogDate datetime = NULL,
	@ActionType int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [DbLog]
	(
		[UserID],
		[ItemID],
		[ItemType],
		[LogDate],
		[ActionType]
	)
	VALUES
	(
		@UserID,
		@ItemID,
		@ItemType,
		@LogDate,
		@ActionType
	)

	SET @Err = @@Error

	SELECT @DbLogID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DbLogLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DbLogLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DbLogID],
		[UserID],
		[ItemID],
		[ItemType],
		[LogDate],
		[ActionType]
	FROM [DbLog]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DbLogLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DbLogLoadByPrimaryKey]
(
	@DbLogID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DbLogID],
		[UserID],
		[ItemID],
		[ItemType],
		[LogDate],
		[ActionType]
	FROM [DbLog]
	WHERE
		([DbLogID] = @DbLogID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DbLogUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_DbLogUpdate]
(
	@DbLogID int,
	@UserID uniqueidentifier = NULL,
	@ItemID int = NULL,
	@ItemType int = NULL,
	@LogDate datetime = NULL,
	@ActionType int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [DbLog]
	SET
		[UserID] = @UserID,
		[ItemID] = @ItemID,
		[ItemType] = @ItemType,
		[LogDate] = @LogDate,
		[ActionType] = @ActionType
	WHERE
		[DbLogID] = @DbLogID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DelayDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DelayDelete] (
	@DelayID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Delay]
	WHERE
		[DelayID] = @DelayID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DelayInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DelayInsert] (
	@DelayID int = NULL output,
	@Code nvarchar(5) = NULL,
	@Description nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Delay]
	(
		[Code],
		[Description],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	)
	VALUES
	(
		@Code,
		@Description,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate
	)

	SET @Err = @@Error

	SELECT @DelayID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DelayLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DelayLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DelayID],
		[Code],
		[Description],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [Delay]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DelayLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DelayLoadByPrimaryKey] (
	@DelayID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[DelayID],
		[Code],
		[Description],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [Delay]
	WHERE
		([DelayID] = @DelayID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_DelayUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_DelayUpdate] (
	@DelayID int,
	@Code nvarchar(5) = NULL,
	@Description nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Delay]
	SET
		[Code] = @Code,
		[Description] = @Description,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate
	WHERE
		[DelayID] = @DelayID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightCrewDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightCrewDelete] (
	@ReportCrewID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [FlightCrew]
	WHERE
		[ReportCrewID] = @ReportCrewID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightCrewInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightCrewInsert] (
	@ReportCrewID int = NULL output,
	@ReportID int,
	@CrewID int,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [FlightCrew]
	(
		[ReportID],
		[CrewID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	)
	VALUES
	(
		@ReportID,
		@CrewID,
		@PositionID,
		@Notes,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate
	)

	SET @Err = @@Error

	SELECT @ReportCrewID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightCrewLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightCrewLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportCrewID],
		[ReportID],
		[CrewID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [FlightCrew]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightCrewLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightCrewLoadByPrimaryKey] (
	@ReportCrewID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportCrewID],
		[ReportID],
		[CrewID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [FlightCrew]
	WHERE
		([ReportCrewID] = @ReportCrewID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightCrewUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightCrewUpdate] (
	@ReportCrewID int,
	@ReportID int,
	@CrewID int,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [FlightCrew]
	SET
		[ReportID] = @ReportID,
		[CrewID] = @CrewID,
		[PositionID] = @PositionID,
		[Notes] = @Notes,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate
	WHERE
		[ReportCrewID] = @ReportCrewID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightDelete] (
	@FlightID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Flight]
	WHERE
		[FlightID] = @FlightID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightInsert] (
	@FlightID int = NULL output,
	@FlightDate datetime,
	@AirCraft_AirPlaneID int,
	@FlightNo nvarchar(15) = NULL,
	@IsHeavy bit,
	@Comment nvarchar(MAX) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@IsHeavyCrew bit = NULL,
	@IsPAX bit = NULL,
	@IsReturnFlight bit = NULL,
	@ReturnFlightID int = NULL,
	@FlightTypeID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Flight]
	(
		[FlightDate],
		[AirCraft_AirPlaneID],
		[FlightNo],
		[IsHeavy],
		[Comment],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[IsHeavyCrew],
		[IsPAX],
		[IsReturnFlight],
		[ReturnFlightID],
		[FlightTypeID]
	)
	VALUES
	(
		@FlightDate,
		@AirCraft_AirPlaneID,
		@FlightNo,
		@IsHeavy,
		@Comment,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate,
		@IsHeavyCrew,
		@IsPAX,
		@IsReturnFlight,
		@ReturnFlightID,
		@FlightTypeID
	)

	SET @Err = @@Error

	SELECT @FlightID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[FlightID],
		[FlightDate],
		[AirCraft_AirPlaneID],
		[FlightNo],
		[IsHeavy],
		[Comment],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[IsHeavyCrew],
		[IsPAX],
		[IsReturnFlight],
		[ReturnFlightID],
		[FlightTypeID]
	FROM [Flight]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightLoadByPrimaryKey] (
	@FlightID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[FlightID],
		[FlightDate],
		[AirCraft_AirPlaneID],
		[FlightNo],
		[IsHeavy],
		[Comment],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[IsHeavyCrew],
		[IsPAX],
		[IsReturnFlight],
		[ReturnFlightID],
		[FlightTypeID]
	FROM [Flight]
	WHERE
		([FlightID] = @FlightID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightPilotDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightPilotDelete] (
	@ReportPilotID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [FlightPilot]
	WHERE
		[ReportPilotID] = @ReportPilotID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightPilotInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightPilotInsert] (
	@ReportPilotID int = NULL output,
	@ReportID int = NULL,
	@PilotID int = NULL,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [FlightPilot]
	(
		[ReportID],
		[PilotID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	)
	VALUES
	(
		@ReportID,
		@PilotID,
		@PositionID,
		@Notes,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate
	)

	SET @Err = @@Error

	SELECT @ReportPilotID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightPilotLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightPilotLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportPilotID],
		[ReportID],
		[PilotID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [FlightPilot]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightPilotLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightPilotLoadByPrimaryKey] (
	@ReportPilotID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportPilotID],
		[ReportID],
		[PilotID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [FlightPilot]
	WHERE
		([ReportPilotID] = @ReportPilotID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightPilotUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightPilotUpdate] (
	@ReportPilotID int,
	@ReportID int = NULL,
	@PilotID int = NULL,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [FlightPilot]
	SET
		[ReportID] = @ReportID,
		[PilotID] = @PilotID,
		[PositionID] = @PositionID,
		[Notes] = @Notes,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate
	WHERE
		[ReportPilotID] = @ReportPilotID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightTypeDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightTypeDelete] (
	@FlightTypeID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [FlightType]
	WHERE
		[FlightTypeID] = @FlightTypeID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightTypeInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightTypeInsert] (
	@FlightTypeID int = NULL output,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [FlightType]
	(
		[Name]
	)
	VALUES
	(
		@Name
	)

	SET @Err = @@Error

	SELECT @FlightTypeID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightTypeLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightTypeLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[FlightTypeID],
		[Name]
	FROM [FlightType]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightTypeLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightTypeLoadByPrimaryKey] (
	@FlightTypeID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[FlightTypeID],
		[Name]
	FROM [FlightType]
	WHERE
		([FlightTypeID] = @FlightTypeID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightTypeUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightTypeUpdate] (
	@FlightTypeID int,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [FlightType]
	SET
		[Name] = @Name
	WHERE
		[FlightTypeID] = @FlightTypeID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FlightUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlightUpdate] (
	@FlightID int,
	@FlightDate datetime,
	@AirCraft_AirPlaneID int,
	@FlightNo nvarchar(15) = NULL,
	@IsHeavy bit,
	@Comment nvarchar(MAX) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@IsHeavyCrew bit = NULL,
	@IsPAX bit = NULL,
	@IsReturnFlight bit = NULL,
	@ReturnFlightID int = NULL,
	@FlightTypeID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Flight]
	SET
		[FlightDate] = @FlightDate,
		[AirCraft_AirPlaneID] = @AirCraft_AirPlaneID,
		[FlightNo] = @FlightNo,
		[IsHeavy] = @IsHeavy,
		[Comment] = @Comment,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate,
		[IsHeavyCrew] = @IsHeavyCrew,
		[IsPAX] = @IsPAX,
		[IsReturnFlight] = @IsReturnFlight,
		[ReturnFlightID] = @ReturnFlightID,
		[FlightTypeID] = @FlightTypeID
	WHERE
		[FlightID] = @FlightID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FromVersionDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_FromVersionDelete]
(
	@FromVersionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [FromVersion]
	WHERE
		[FromVersionID] = @FromVersionID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FromVersionInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_FromVersionInsert]
(
	@FromVersionID int = NULL output,
	@ManualFromID int = NULL,
	@Title nvarchar(300) = NULL,
	@Path nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@IssueNumber nvarchar(10) = NULL,
	@IssueDate datetime = NULL,
	@RevisionNumber nvarchar(10) = NULL,
	@RevisionDate datetime = NULL,
	@Notes nvarchar(MAX) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [FromVersion]
	(
		[ManualFromID],
		[Title],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[Notes]
	)
	VALUES
	(
		@ManualFromID,
		@Title,
		@Path,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate,
		@IssueNumber,
		@IssueDate,
		@RevisionNumber,
		@RevisionDate,
		@Notes
	)

	SET @Err = @@Error

	SELECT @FromVersionID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FromVersionLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_FromVersionLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[FromVersionID],
		[ManualFromID],
		[Title],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[Notes]
	FROM [FromVersion]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FromVersionLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_FromVersionLoadByPrimaryKey]
(
	@FromVersionID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[FromVersionID],
		[ManualFromID],
		[Title],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[Notes]
	FROM [FromVersion]
	WHERE
		([FromVersionID] = @FromVersionID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_FromVersionUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_FromVersionUpdate]
(
	@FromVersionID int,
	@ManualFromID int = NULL,
	@Title nvarchar(300) = NULL,
	@Path nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@IssueNumber nvarchar(10) = NULL,
	@IssueDate datetime = NULL,
	@RevisionNumber nvarchar(10) = NULL,
	@RevisionDate datetime = NULL,
	@Notes nvarchar(MAX) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [FromVersion]
	SET
		[ManualFromID] = @ManualFromID,
		[Title] = @Title,
		[Path] = @Path,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate,
		[IssueNumber] = @IssueNumber,
		[IssueDate] = @IssueDate,
		[RevisionNumber] = @RevisionNumber,
		[RevisionDate] = @RevisionDate,
		[Notes] = @Notes
	WHERE
		[FromVersionID] = @FromVersionID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GroupsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GroupsDelete]
(
	@GroupID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Groups]
	WHERE
		[GroupID] = @GroupID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GroupsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GroupsInsert]
(
	@GroupID int = NULL output,
	@GroupName nvarchar(50) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Groups]
	(
		[GroupName]
	)
	VALUES
	(
		@GroupName
	)

	SET @Err = @@Error

	SELECT @GroupID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GroupsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GroupsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[GroupID],
		[GroupName]
	FROM [Groups]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GroupsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GroupsLoadByPrimaryKey]
(
	@GroupID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[GroupID],
		[GroupName]
	FROM [Groups]
	WHERE
		([GroupID] = @GroupID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_GroupsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_GroupsUpdate]
(
	@GroupID int,
	@GroupName nvarchar(50) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Groups]
	SET
		[GroupName] = @GroupName
	WHERE
		[GroupID] = @GroupID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_LogTypeDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_LogTypeDelete] (
	@LogTypeID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [LogType]
	WHERE
		[LogTypeID] = @LogTypeID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_LogTypeInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_LogTypeInsert] (
	@LogTypeID int = NULL output,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [LogType]
	(
		[Name]
	)
	VALUES
	(
		@Name
	)

	SET @Err = @@Error

	SELECT @LogTypeID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_LogTypeLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_LogTypeLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[LogTypeID],
		[Name]
	FROM [LogType]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_LogTypeLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_LogTypeLoadByPrimaryKey] (
	@LogTypeID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[LogTypeID],
		[Name]
	FROM [LogType]
	WHERE
		([LogTypeID] = @LogTypeID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_LogTypeUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_LogTypeUpdate] (
	@LogTypeID int,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [LogType]
	SET
		[Name] = @Name
	WHERE
		[LogTypeID] = @LogTypeID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualCategoryDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualCategoryDelete]
(
	@ManualCategoryID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ManualCategory]
	WHERE
		[ManualCategoryID] = @ManualCategoryID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualCategoryInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualCategoryInsert]
(
	@ManualCategoryID int = NULL output,
	@Title nvarchar(500) = NULL,
	@ParentCategoryID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ManualCategory]
	(
		[Title],
		[ParentCategoryID]
	)
	VALUES
	(
		@Title,
		@ParentCategoryID
	)

	SET @Err = @@Error

	SELECT @ManualCategoryID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualCategoryLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualCategoryLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualCategoryID],
		[Title],
		[ParentCategoryID]
	FROM [ManualCategory]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualCategoryLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualCategoryLoadByPrimaryKey]
(
	@ManualCategoryID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualCategoryID],
		[Title],
		[ParentCategoryID]
	FROM [ManualCategory]
	WHERE
		([ManualCategoryID] = @ManualCategoryID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualCategoryUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualCategoryUpdate]
(
	@ManualCategoryID int,
	@Title nvarchar(500) = NULL,
	@ParentCategoryID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ManualCategory]
	SET
		[Title] = @Title,
		[ParentCategoryID] = @ParentCategoryID
	WHERE
		[ManualCategoryID] = @ManualCategoryID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualDelete]
(
	@ManualID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Manual]
	WHERE
		[ManualID] = @ManualID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualFormDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualFormDelete]
(
	@ManualFormID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ManualForm]
	WHERE
		[ManualFormID] = @ManualFormID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualFormInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualFormInsert]
(
	@ManualFormID int = NULL output,
	@ManualID int = NULL,
	@Name nvarchar(300) = NULL,
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
	INTO [ManualForm]
	(
		[ManualID],
		[Name],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@ManualID,
		@Name,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @ManualFormID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualFormLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualFormLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualFormID],
		[ManualID],
		[Name],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [ManualForm]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualFormLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualFormLoadByPrimaryKey]
(
	@ManualFormID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualFormID],
		[ManualID],
		[Name],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [ManualForm]
	WHERE
		([ManualFormID] = @ManualFormID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualFormUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualFormUpdate]
(
	@ManualFormID int,
	@ManualID int = NULL,
	@Name nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ManualForm]
	SET
		[ManualID] = @ManualID,
		[Name] = @Name,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[ManualFormID] = @ManualFormID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualInsert]
(
	@ManualID int = NULL output,
	@Title nvarchar(500) = NULL,
	@Path nvarchar(1000) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@createdDate datetime = NULL,
	@ManualCategoryID int = NULL,
	@IssueNumber nvarchar(10) = NULL,
	@IssueDate datetime = NULL,
	@RevisionNumber nvarchar(10) = NULL,
	@RevisionDate datetime = NULL,
	@IsForm bit = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Manual]
	(
		[Title],
		[Path],
		[CreatedBy],
		[createdDate],
		[ManualCategoryID],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[IsForm],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@Title,
		@Path,
		@CreatedBy,
		@createdDate,
		@ManualCategoryID,
		@IssueNumber,
		@IssueDate,
		@RevisionNumber,
		@RevisionDate,
		@IsForm,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @ManualID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualID],
		[Title],
		[Path],
		[CreatedBy],
		[createdDate],
		[ManualCategoryID],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[IsForm],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [Manual]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualLoadByPrimaryKey]
(
	@ManualID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualID],
		[Title],
		[Path],
		[CreatedBy],
		[createdDate],
		[ManualCategoryID],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[IsForm],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [Manual]
	WHERE
		([ManualID] = @ManualID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualUpdate]
(
	@ManualID int,
	@Title nvarchar(500) = NULL,
	@Path nvarchar(1000) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@createdDate datetime = NULL,
	@ManualCategoryID int = NULL,
	@IssueNumber nvarchar(10) = NULL,
	@IssueDate datetime = NULL,
	@RevisionNumber nvarchar(10) = NULL,
	@RevisionDate datetime = NULL,
	@IsForm bit = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Manual]
	SET
		[Title] = @Title,
		[Path] = @Path,
		[CreatedBy] = @CreatedBy,
		[createdDate] = @createdDate,
		[ManualCategoryID] = @ManualCategoryID,
		[IssueNumber] = @IssueNumber,
		[IssueDate] = @IssueDate,
		[RevisionNumber] = @RevisionNumber,
		[RevisionDate] = @RevisionDate,
		[IsForm] = @IsForm,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[ManualID] = @ManualID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualVersionDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualVersionDelete]
(
	@ManualVersionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ManualVersion]
	WHERE
		[ManualVersionID] = @ManualVersionID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualVersionInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualVersionInsert]
(
	@ManualVersionID int = NULL output,
	@ManualID int = NULL,
	@Title nvarchar(300) = NULL,
	@Path nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@IssueNumber nvarchar(10) = NULL,
	@IssueDate datetime = NULL,
	@RevisionNumber nvarchar(10) = NULL,
	@RevisionDate datetime = NULL,
	@Notes nvarchar(MAX) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ManualVersion]
	(
		[ManualID],
		[Title],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[Notes]
	)
	VALUES
	(
		@ManualID,
		@Title,
		@Path,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate,
		@IssueNumber,
		@IssueDate,
		@RevisionNumber,
		@RevisionDate,
		@Notes
	)

	SET @Err = @@Error

	SELECT @ManualVersionID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualVersionLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualVersionLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualVersionID],
		[ManualID],
		[Title],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[Notes]
	FROM [ManualVersion]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualVersionLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualVersionLoadByPrimaryKey]
(
	@ManualVersionID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ManualVersionID],
		[ManualID],
		[Title],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[Notes]
	FROM [ManualVersion]
	WHERE
		([ManualVersionID] = @ManualVersionID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ManualVersionUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ManualVersionUpdate]
(
	@ManualVersionID int,
	@ManualID int = NULL,
	@Title nvarchar(300) = NULL,
	@Path nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@IssueNumber nvarchar(10) = NULL,
	@IssueDate datetime = NULL,
	@RevisionNumber nvarchar(10) = NULL,
	@RevisionDate datetime = NULL,
	@Notes nvarchar(MAX) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ManualVersion]
	SET
		[ManualID] = @ManualID,
		[Title] = @Title,
		[Path] = @Path,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate,
		[IssueNumber] = @IssueNumber,
		[IssueDate] = @IssueDate,
		[RevisionNumber] = @RevisionNumber,
		[RevisionDate] = @RevisionDate,
		[Notes] = @Notes
	WHERE
		[ManualVersionID] = @ManualVersionID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_NotificationTypesDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_NotificationTypesDelete]
(
	@NotificationTypeID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [NotificationTypes]
	WHERE
		[NotificationTypeID] = @NotificationTypeID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_NotificationTypesInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_NotificationTypesInsert]
(
	@NotificationTypeID int = NULL output,
	@NotificationTypeName nvarchar(50) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [NotificationTypes]
	(
		[NotificationTypeName]
	)
	VALUES
	(
		@NotificationTypeName
	)

	SET @Err = @@Error

	SELECT @NotificationTypeID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_NotificationTypesLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_NotificationTypesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[NotificationTypeID],
		[NotificationTypeName]
	FROM [NotificationTypes]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_NotificationTypesLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_NotificationTypesLoadByPrimaryKey]
(
	@NotificationTypeID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[NotificationTypeID],
		[NotificationTypeName]
	FROM [NotificationTypes]
	WHERE
		([NotificationTypeID] = @NotificationTypeID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_NotificationTypesUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_NotificationTypesUpdate]
(
	@NotificationTypeID int,
	@NotificationTypeName nvarchar(50) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [NotificationTypes]
	SET
		[NotificationTypeName] = @NotificationTypeName
	WHERE
		[NotificationTypeID] = @NotificationTypeID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_Pilot_CompanyPositionDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Pilot_CompanyPositionDelete] (
	@Pilot_CompanyPositionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Pilot_CompanyPosition]
	WHERE
		[Pilot_CompanyPositionID] = @Pilot_CompanyPositionID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_Pilot_CompanyPositionInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Pilot_CompanyPositionInsert] (
	@Pilot_CompanyPositionID int = NULL output,
	@PilotID int = NULL,
	@CompanyPositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Pilot_CompanyPosition]
	(
		[PilotID],
		[CompanyPositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	)
	VALUES
	(
		@PilotID,
		@CompanyPositionID,
		@Notes,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate
	)

	SET @Err = @@Error

	SELECT @Pilot_CompanyPositionID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_Pilot_CompanyPositionLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Pilot_CompanyPositionLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[Pilot_CompanyPositionID],
		[PilotID],
		[CompanyPositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [Pilot_CompanyPosition]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_Pilot_CompanyPositionLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Pilot_CompanyPositionLoadByPrimaryKey] (
	@Pilot_CompanyPositionID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[Pilot_CompanyPositionID],
		[PilotID],
		[CompanyPositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [Pilot_CompanyPosition]
	WHERE
		([Pilot_CompanyPositionID] = @Pilot_CompanyPositionID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_Pilot_CompanyPositionUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Pilot_CompanyPositionUpdate] (
	@Pilot_CompanyPositionID int,
	@PilotID int = NULL,
	@CompanyPositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Pilot_CompanyPosition]
	SET
		[PilotID] = @PilotID,
		[CompanyPositionID] = @CompanyPositionID,
		[Notes] = @Notes,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate
	WHERE
		[Pilot_CompanyPositionID] = @Pilot_CompanyPositionID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_Pilot_TBFDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Pilot_TBFDelete] (
	@TBF_ID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Pilot_TBF]
	WHERE
		[TBF_ID] = @TBF_ID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_Pilot_TBFInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Pilot_TBFInsert] (
	@TBF_ID int = NULL output,
	@TBF_Day datetime = NULL,
	@TBF_Night datetime = NULL,
	@PilotID int = NULL,
	@AirPlaneID int = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Pilot_TBF]
	(
		[TBF_Day],
		[TBF_Night],
		[PilotID],
		[AirPlaneID],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	)
	VALUES
	(
		@TBF_Day,
		@TBF_Night,
		@PilotID,
		@AirPlaneID,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate
	)

	SET @Err = @@Error

	SELECT @TBF_ID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_Pilot_TBFLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Pilot_TBFLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TBF_ID],
		[TBF_Day],
		[TBF_Night],
		[PilotID],
		[AirPlaneID],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [Pilot_TBF]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_Pilot_TBFLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Pilot_TBFLoadByPrimaryKey] (
	@TBF_ID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TBF_ID],
		[TBF_Day],
		[TBF_Night],
		[PilotID],
		[AirPlaneID],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [Pilot_TBF]
	WHERE
		([TBF_ID] = @TBF_ID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_Pilot_TBFUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Pilot_TBFUpdate] (
	@TBF_ID int,
	@TBF_Day datetime = NULL,
	@TBF_Night datetime = NULL,
	@PilotID int = NULL,
	@AirPlaneID int = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Pilot_TBF]
	SET
		[TBF_Day] = @TBF_Day,
		[TBF_Night] = @TBF_Night,
		[PilotID] = @PilotID,
		[AirPlaneID] = @AirPlaneID,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate
	WHERE
		[TBF_ID] = @TBF_ID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotAirCraftDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotAirCraftDelete] (
	@PilotID int,
	@AirplaneID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [PilotAirCraft]
	WHERE
		[PilotID] = @PilotID AND
		[AirplaneID] = @AirplaneID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotAirCraftInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotAirCraftInsert] (
	@PilotID int,
	@AirplaneID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [PilotAirCraft]
	(
		[PilotID],
		[AirplaneID]
	)
	VALUES
	(
		@PilotID,
		@AirplaneID
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotAirCraftLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotAirCraftLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotID],
		[AirplaneID]
	FROM [PilotAirCraft]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotAirCraftLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotAirCraftLoadByPrimaryKey] (
	@PilotID int,
	@AirplaneID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotID],
		[AirplaneID]
	FROM [PilotAirCraft]
	WHERE
		([PilotID] = @PilotID) AND
		([AirplaneID] = @AirplaneID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotCourseDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotCourseDelete] (
	@PilotCourseID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [PilotCourse]
	WHERE
		[PilotCourseID] = @PilotCourseID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotCourseInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotCourseInsert] (
	@PilotCourseID int = NULL output,
	@CourseID int = NULL,
	@PilotID int = NULL,
	@PilotTitleID int = NULL,
	@TrainerID int = NULL,
	@TrainerTitleID int = NULL,
	@ExaminerID int = NULL,
	@TrainingID int = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL,
	@TravelDate datetime = NULL,
	@BackDate datetime = NULL,
	@ExpiryDate datetime = NULL,
	@Result bit = NULL,
	@Notes nvarchar(1000) = NULL,
	@PilotCityID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [PilotCourse]
	(
		[CourseID],
		[PilotID],
		[PilotTitleID],
		[TrainerID],
		[TrainerTitleID],
		[ExaminerID],
		[TrainingID],
		[StartDate],
		[EndDate],
		[TravelDate],
		[BackDate],
		[ExpiryDate],
		[Result],
		[Notes],
		[PilotCityID]
	)
	VALUES
	(
		@CourseID,
		@PilotID,
		@PilotTitleID,
		@TrainerID,
		@TrainerTitleID,
		@ExaminerID,
		@TrainingID,
		@StartDate,
		@EndDate,
		@TravelDate,
		@BackDate,
		@ExpiryDate,
		@Result,
		@Notes,
		@PilotCityID
	)

	SET @Err = @@Error

	SELECT @PilotCourseID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotCourseLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotCourseLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotCourseID],
		[CourseID],
		[PilotID],
		[PilotTitleID],
		[TrainerID],
		[TrainerTitleID],
		[ExaminerID],
		[TrainingID],
		[StartDate],
		[EndDate],
		[TravelDate],
		[BackDate],
		[ExpiryDate],
		[Result],
		[Notes],
		[PilotCityID]
	FROM [PilotCourse]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotCourseLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotCourseLoadByPrimaryKey] (
	@PilotCourseID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotCourseID],
		[CourseID],
		[PilotID],
		[PilotTitleID],
		[TrainerID],
		[TrainerTitleID],
		[ExaminerID],
		[TrainingID],
		[StartDate],
		[EndDate],
		[TravelDate],
		[BackDate],
		[ExpiryDate],
		[Result],
		[Notes],
		[PilotCityID]
	FROM [PilotCourse]
	WHERE
		([PilotCourseID] = @PilotCourseID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotCourseUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotCourseUpdate] (
	@PilotCourseID int,
	@CourseID int = NULL,
	@PilotID int = NULL,
	@PilotTitleID int = NULL,
	@TrainerID int = NULL,
	@TrainerTitleID int = NULL,
	@ExaminerID int = NULL,
	@TrainingID int = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL,
	@TravelDate datetime = NULL,
	@BackDate datetime = NULL,
	@ExpiryDate datetime = NULL,
	@Result bit = NULL,
	@Notes nvarchar(1000) = NULL,
	@PilotCityID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [PilotCourse]
	SET
		[CourseID] = @CourseID,
		[PilotID] = @PilotID,
		[PilotTitleID] = @PilotTitleID,
		[TrainerID] = @TrainerID,
		[TrainerTitleID] = @TrainerTitleID,
		[ExaminerID] = @ExaminerID,
		[TrainingID] = @TrainingID,
		[StartDate] = @StartDate,
		[EndDate] = @EndDate,
		[TravelDate] = @TravelDate,
		[BackDate] = @BackDate,
		[ExpiryDate] = @ExpiryDate,
		[Result] = @Result,
		[Notes] = @Notes,
		[PilotCityID] = @PilotCityID
	WHERE
		[PilotCourseID] = @PilotCourseID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotDelete]
(
	@PilotID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Pilot]
	WHERE
		[PilotID] = @PilotID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotInsert]
(
	@PilotID int = NULL output,
	@FirstName nvarchar(50) = NULL,
	@SecondName nvarchar(50) = NULL,
	@SureName nvarchar(50) = NULL,
	@TBF_Day_Hours int = NULL,
	@TBF_Day_Mins int = NULL,
	@TBF_Night_Hours int = NULL,
	@TBF_Night_Mins int = NULL,
	@TBF_Total_Hours int,
	@TBF_Total_Mins int,
	@LicenseNo nvarchar(15) = NULL,
	@LicenseStatus nvarchar(50) = NULL,
	@LicenseRenewDate datetime = NULL,
	@StaffNo nvarchar(10) = NULL,
	@ShortName nvarchar(5) = NULL,
	@IsPilot bit = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@UserName nvarchar(50) = NULL,
	@AirportClass int = NULL,
	@Email nvarchar(200) = NULL,
	@Mobile nvarchar(50) = NULL,
	@address nvarchar(400) = NULL,
	@PassportNo nvarchar(20) = NULL,
	@PassportExpiryDate datetime = NULL,
	@PICDayHours int = NULL,
	@PICDayMin int = NULL,
	@SICDayHours int = NULL,
	@SICDayMin int = NULL,
	@PICNightHours int = NULL,
	@PICNightMin int = NULL,
	@SICNightHours int = NULL,
	@SICNightMin int = NULL,
	@DateOfBirth datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Pilot]
	(
		[FirstName],
		[SecondName],
		[SureName],
		[TBF_Day_Hours],
		[TBF_Day_Mins],
		[TBF_Night_Hours],
		[TBF_Night_Mins],
		[TBF_Total_Hours],
		[TBF_Total_Mins],
		[LicenseNo],
		[LicenseStatus],
		[LicenseRenewDate],
		[StaffNo],
		[ShortName],
		[IsPilot],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[UserName],
		[AirportClass],
		[Email],
		[Mobile],
		[address],
		[PassportNo],
		[PassportExpiryDate],
		[PICDayHours],
		[PICDayMin],
		[SICDayHours],
		[SICDayMin],
		[PICNightHours],
		[PICNightMin],
		[SICNightHours],
		[SICNightMin],
		[DateOfBirth]
	)
	VALUES
	(
		@FirstName,
		@SecondName,
		@SureName,
		@TBF_Day_Hours,
		@TBF_Day_Mins,
		@TBF_Night_Hours,
		@TBF_Night_Mins,
		@TBF_Total_Hours,
		@TBF_Total_Mins,
		@LicenseNo,
		@LicenseStatus,
		@LicenseRenewDate,
		@StaffNo,
		@ShortName,
		@IsPilot,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate,
		@UserName,
		@AirportClass,
		@Email,
		@Mobile,
		@address,
		@PassportNo,
		@PassportExpiryDate,
		@PICDayHours,
		@PICDayMin,
		@SICDayHours,
		@SICDayMin,
		@PICNightHours,
		@PICNightMin,
		@SICNightHours,
		@SICNightMin,
		@DateOfBirth
	)

	SET @Err = @@Error

	SELECT @PilotID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotID],
		[FirstName],
		[SecondName],
		[SureName],
		[TBF_Day_Hours],
		[TBF_Day_Mins],
		[TBF_Night_Hours],
		[TBF_Night_Mins],
		[TBF_Total_Hours],
		[TBF_Total_Mins],
		[LicenseNo],
		[LicenseStatus],
		[LicenseRenewDate],
		[StaffNo],
		[ShortName],
		[IsPilot],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[UserName],
		[AirportClass],
		[Email],
		[Mobile],
		[address],
		[PassportNo],
		[PassportExpiryDate],
		[PICDayHours],
		[PICDayMin],
		[SICDayHours],
		[SICDayMin],
		[PICNightHours],
		[PICNightMin],
		[SICNightHours],
		[SICNightMin],
		[DateOfBirth]
	FROM [Pilot]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotLoadByPrimaryKey]
(
	@PilotID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotID],
		[FirstName],
		[SecondName],
		[SureName],
		[TBF_Day_Hours],
		[TBF_Day_Mins],
		[TBF_Night_Hours],
		[TBF_Night_Mins],
		[TBF_Total_Hours],
		[TBF_Total_Mins],
		[LicenseNo],
		[LicenseStatus],
		[LicenseRenewDate],
		[StaffNo],
		[ShortName],
		[IsPilot],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[UserName],
		[AirportClass],
		[Email],
		[Mobile],
		[address],
		[PassportNo],
		[PassportExpiryDate],
		[PICDayHours],
		[PICDayMin],
		[SICDayHours],
		[SICDayMin],
		[PICNightHours],
		[PICNightMin],
		[SICNightHours],
		[SICNightMin],
		[DateOfBirth]
	FROM [Pilot]
	WHERE
		([PilotID] = @PilotID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotLogDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotLogDelete] (
	@PilotLogID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [PilotLog]
	WHERE
		[PilotLogID] = @PilotLogID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotLogInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotLogInsert] (
	@PilotLogID int = NULL output,
	@LogTypeID int = NULL,
	@LogDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [PilotLog]
	(
		[LogTypeID],
		[LogDate]
	)
	VALUES
	(
		@LogTypeID,
		@LogDate
	)

	SET @Err = @@Error

	SELECT @PilotLogID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotLogLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotLogLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotLogID],
		[LogTypeID],
		[LogDate]
	FROM [PilotLog]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotLogLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotLogLoadByPrimaryKey] (
	@PilotLogID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotLogID],
		[LogTypeID],
		[LogDate]
	FROM [PilotLog]
	WHERE
		([PilotLogID] = @PilotLogID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotLogUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotLogUpdate] (
	@PilotLogID int,
	@LogTypeID int = NULL,
	@LogDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [PilotLog]
	SET
		[LogTypeID] = @LogTypeID,
		[LogDate] = @LogDate
	WHERE
		[PilotLogID] = @PilotLogID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotPerDiemLogDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotPerDiemLogDelete] (
	@LogID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [PilotPerDiemLog]
	WHERE
		[LogID] = @LogID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotPerDiemLogInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotPerDiemLogInsert] (
	@LogID int = NULL output,
	@PilotID int,
	@FromDate datetime = NULL,
	@ToDate datetime = NULL,
	@Days int = NULL,
	@InsertedDate datetime = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [PilotPerDiemLog]
	(
		[PilotID],
		[FromDate],
		[ToDate],
		[Days],
		[InsertedDate],
		[StartDate],
		[EndDate]
	)
	VALUES
	(
		@PilotID,
		@FromDate,
		@ToDate,
		@Days,
		@InsertedDate,
		@StartDate,
		@EndDate
	)

	SET @Err = @@Error

	SELECT @LogID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotPerDiemLogLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotPerDiemLogLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[LogID],
		[PilotID],
		[FromDate],
		[ToDate],
		[Days],
		[InsertedDate],
		[StartDate],
		[EndDate]
	FROM [PilotPerDiemLog]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotPerDiemLogLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotPerDiemLogLoadByPrimaryKey] (
	@LogID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[LogID],
		[PilotID],
		[FromDate],
		[ToDate],
		[Days],
		[InsertedDate],
		[StartDate],
		[EndDate]
	FROM [PilotPerDiemLog]
	WHERE
		([LogID] = @LogID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotPerDiemLogUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotPerDiemLogUpdate] (
	@LogID int,
	@PilotID int,
	@FromDate datetime = NULL,
	@ToDate datetime = NULL,
	@Days int = NULL,
	@InsertedDate datetime = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [PilotPerDiemLog]
	SET
		[PilotID] = @PilotID,
		[FromDate] = @FromDate,
		[ToDate] = @ToDate,
		[Days] = @Days,
		[InsertedDate] = @InsertedDate,
		[StartDate] = @StartDate,
		[EndDate] = @EndDate
	WHERE
		[LogID] = @LogID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotTitleDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotTitleDelete] (
	@PilotID int,
	@TitleID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [PilotTitle]
	WHERE
		[PilotID] = @PilotID AND
		[TitleID] = @TitleID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotTitleInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotTitleInsert] (
	@PilotID int,
	@TitleID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [PilotTitle]
	(
		[PilotID],
		[TitleID]
	)
	VALUES
	(
		@PilotID,
		@TitleID
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotTitleLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotTitleLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotID],
		[TitleID]
	FROM [PilotTitle]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotTitleLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotTitleLoadByPrimaryKey] (
	@PilotID int,
	@TitleID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotID],
		[TitleID]
	FROM [PilotTitle]
	WHERE
		([PilotID] = @PilotID) AND
		([TitleID] = @TitleID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotTransactionDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotTransactionDelete] (
	@PilotTransactionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [PilotTransaction]
	WHERE
		[PilotTransactionID] = @PilotTransactionID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotTransactionInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotTransactionInsert] (
	@PilotTransactionID int = NULL output,
	@TransactionsID int = NULL,
	@PilotID int = NULL,
	@DateFrom datetime = NULL,
	@DateTo datetime = NULL,
	@PilotCityID int = NULL,
	@Location nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [PilotTransaction]
	(
		[TransactionsID],
		[PilotID],
		[DateFrom],
		[DateTo],
		[PilotCityID],
		[Location]
	)
	VALUES
	(
		@TransactionsID,
		@PilotID,
		@DateFrom,
		@DateTo,
		@PilotCityID,
		@Location
	)

	SET @Err = @@Error

	SELECT @PilotTransactionID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotTransactionLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotTransactionLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotTransactionID],
		[TransactionsID],
		[PilotID],
		[DateFrom],
		[DateTo],
		[PilotCityID],
		[Location]
	FROM [PilotTransaction]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotTransactionLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotTransactionLoadByPrimaryKey] (
	@PilotTransactionID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PilotTransactionID],
		[TransactionsID],
		[PilotID],
		[DateFrom],
		[DateTo],
		[PilotCityID],
		[Location]
	FROM [PilotTransaction]
	WHERE
		([PilotTransactionID] = @PilotTransactionID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotTransactionUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotTransactionUpdate] (
	@PilotTransactionID int,
	@TransactionsID int = NULL,
	@PilotID int = NULL,
	@DateFrom datetime = NULL,
	@DateTo datetime = NULL,
	@PilotCityID int = NULL,
	@Location nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [PilotTransaction]
	SET
		[TransactionsID] = @TransactionsID,
		[PilotID] = @PilotID,
		[DateFrom] = @DateFrom,
		[DateTo] = @DateTo,
		[PilotCityID] = @PilotCityID,
		[Location] = @Location
	WHERE
		[PilotTransactionID] = @PilotTransactionID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PilotUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PilotUpdate]
(
	@PilotID int,
	@FirstName nvarchar(50) = NULL,
	@SecondName nvarchar(50) = NULL,
	@SureName nvarchar(50) = NULL,
	@TBF_Day_Hours int = NULL,
	@TBF_Day_Mins int = NULL,
	@TBF_Night_Hours int = NULL,
	@TBF_Night_Mins int = NULL,
	@TBF_Total_Hours int,
	@TBF_Total_Mins int,
	@LicenseNo nvarchar(15) = NULL,
	@LicenseStatus nvarchar(50) = NULL,
	@LicenseRenewDate datetime = NULL,
	@StaffNo nvarchar(10) = NULL,
	@ShortName nvarchar(5) = NULL,
	@IsPilot bit = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@UserName nvarchar(50) = NULL,
	@AirportClass int = NULL,
	@Email nvarchar(200) = NULL,
	@Mobile nvarchar(50) = NULL,
	@address nvarchar(400) = NULL,
	@PassportNo nvarchar(20) = NULL,
	@PassportExpiryDate datetime = NULL,
	@PICDayHours int = NULL,
	@PICDayMin int = NULL,
	@SICDayHours int = NULL,
	@SICDayMin int = NULL,
	@PICNightHours int = NULL,
	@PICNightMin int = NULL,
	@SICNightHours int = NULL,
	@SICNightMin int = NULL,
	@DateOfBirth datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Pilot]
	SET
		[FirstName] = @FirstName,
		[SecondName] = @SecondName,
		[SureName] = @SureName,
		[TBF_Day_Hours] = @TBF_Day_Hours,
		[TBF_Day_Mins] = @TBF_Day_Mins,
		[TBF_Night_Hours] = @TBF_Night_Hours,
		[TBF_Night_Mins] = @TBF_Night_Mins,
		[TBF_Total_Hours] = @TBF_Total_Hours,
		[TBF_Total_Mins] = @TBF_Total_Mins,
		[LicenseNo] = @LicenseNo,
		[LicenseStatus] = @LicenseStatus,
		[LicenseRenewDate] = @LicenseRenewDate,
		[StaffNo] = @StaffNo,
		[ShortName] = @ShortName,
		[IsPilot] = @IsPilot,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate,
		[UserName] = @UserName,
		[AirportClass] = @AirportClass,
		[Email] = @Email,
		[Mobile] = @Mobile,
		[address] = @address,
		[PassportNo] = @PassportNo,
		[PassportExpiryDate] = @PassportExpiryDate,
		[PICDayHours] = @PICDayHours,
		[PICDayMin] = @PICDayMin,
		[SICDayHours] = @SICDayHours,
		[SICDayMin] = @SICDayMin,
		[PICNightHours] = @PICNightHours,
		[PICNightMin] = @PICNightMin,
		[SICNightHours] = @SICNightHours,
		[SICNightMin] = @SICNightMin,
		[DateOfBirth] = @DateOfBirth
	WHERE
		[PilotID] = @PilotID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PositionDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PositionDelete] (
	@PositionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Position]
	WHERE
		[PositionID] = @PositionID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PositionInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PositionInsert] (
	@PositionID int = NULL output,
	@Title nvarchar(150) = NULL,
	@TitleShort nvarchar(10) = NULL,
	@Description nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Position]
	(
		[Title],
		[TitleShort],
		[Description],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	)
	VALUES
	(
		@Title,
		@TitleShort,
		@Description,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate
	)

	SET @Err = @@Error

	SELECT @PositionID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PositionLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PositionLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PositionID],
		[Title],
		[TitleShort],
		[Description],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [Position]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PositionLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PositionLoadByPrimaryKey] (
	@PositionID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[PositionID],
		[Title],
		[TitleShort],
		[Description],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [Position]
	WHERE
		([PositionID] = @PositionID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_PositionUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_PositionUpdate] (
	@PositionID int,
	@Title nvarchar(150) = NULL,
	@TitleShort nvarchar(10) = NULL,
	@Description nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Position]
	SET
		[Title] = @Title,
		[TitleShort] = @TitleShort,
		[Description] = @Description,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate
	WHERE
		[PositionID] = @PositionID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyDelete] (
	@ProfilePropertyID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ProfileProperty]
	WHERE
		[ProfilePropertyID] = @ProfilePropertyID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyInsert] (
	@ProfilePropertyID int = NULL output,
	@Name nvarchar(200) = NULL,
	@ProfilePropertyTypeID int = NULL,
	@PilotProperty bit = NULL,
	@CrewProperty bit = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ProfileProperty]
	(
		[Name],
		[ProfilePropertyTypeID],
		[PilotProperty],
		[CrewProperty]
	)
	VALUES
	(
		@Name,
		@ProfilePropertyTypeID,
		@PilotProperty,
		@CrewProperty
	)

	SET @Err = @@Error

	SELECT @ProfilePropertyID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProfilePropertyID],
		[Name],
		[ProfilePropertyTypeID],
		[PilotProperty],
		[CrewProperty]
	FROM [ProfileProperty]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyLoadByPrimaryKey] (
	@ProfilePropertyID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProfilePropertyID],
		[Name],
		[ProfilePropertyTypeID],
		[PilotProperty],
		[CrewProperty]
	FROM [ProfileProperty]
	WHERE
		([ProfilePropertyID] = @ProfilePropertyID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyTypeDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyTypeDelete] (
	@ProfilePropertyTypeID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ProfilePropertyType]
	WHERE
		[ProfilePropertyTypeID] = @ProfilePropertyTypeID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyTypeInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyTypeInsert] (
	@ProfilePropertyTypeID int = NULL output,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ProfilePropertyType]
	(
		[Name]
	)
	VALUES
	(
		@Name
	)

	SET @Err = @@Error

	SELECT @ProfilePropertyTypeID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyTypeLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyTypeLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProfilePropertyTypeID],
		[Name]
	FROM [ProfilePropertyType]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyTypeLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyTypeLoadByPrimaryKey] (
	@ProfilePropertyTypeID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProfilePropertyTypeID],
		[Name]
	FROM [ProfilePropertyType]
	WHERE
		([ProfilePropertyTypeID] = @ProfilePropertyTypeID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyTypeUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyTypeUpdate] (
	@ProfilePropertyTypeID int,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ProfilePropertyType]
	SET
		[Name] = @Name
	WHERE
		[ProfilePropertyTypeID] = @ProfilePropertyTypeID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyUpdate] (
	@ProfilePropertyID int,
	@Name nvarchar(200) = NULL,
	@ProfilePropertyTypeID int = NULL,
	@PilotProperty bit = NULL,
	@CrewProperty bit = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ProfileProperty]
	SET
		[Name] = @Name,
		[ProfilePropertyTypeID] = @ProfilePropertyTypeID,
		[PilotProperty] = @PilotProperty,
		[CrewProperty] = @CrewProperty
	WHERE
		[ProfilePropertyID] = @ProfilePropertyID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyValueDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyValueDelete] (
	@ProfilePropertyValueID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ProfilePropertyValue]
	WHERE
		[ProfilePropertyValueID] = @ProfilePropertyValueID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyValueInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyValueInsert] (
	@ProfilePropertyValueID int = NULL output,
	@PropertyValue nvarchar(200) = NULL,
	@ProfilePropertyID int = NULL,
	@PilotID int = NULL,
	@CrewID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ProfilePropertyValue]
	(
		[PropertyValue],
		[ProfilePropertyID],
		[PilotID],
		[CrewID]
	)
	VALUES
	(
		@PropertyValue,
		@ProfilePropertyID,
		@PilotID,
		@CrewID
	)

	SET @Err = @@Error

	SELECT @ProfilePropertyValueID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyValueLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyValueLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProfilePropertyValueID],
		[PropertyValue],
		[ProfilePropertyID],
		[PilotID],
		[CrewID]
	FROM [ProfilePropertyValue]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyValueLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyValueLoadByPrimaryKey] (
	@ProfilePropertyValueID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ProfilePropertyValueID],
		[PropertyValue],
		[ProfilePropertyID],
		[PilotID],
		[CrewID]
	FROM [ProfilePropertyValue]
	WHERE
		([ProfilePropertyValueID] = @ProfilePropertyValueID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ProfilePropertyValueUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ProfilePropertyValueUpdate] (
	@ProfilePropertyValueID int,
	@PropertyValue nvarchar(200) = NULL,
	@ProfilePropertyID int = NULL,
	@PilotID int = NULL,
	@CrewID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ProfilePropertyValue]
	SET
		[PropertyValue] = @PropertyValue,
		[ProfilePropertyID] = @ProfilePropertyID,
		[PilotID] = @PilotID,
		[CrewID] = @CrewID
	WHERE
		[ProfilePropertyValueID] = @ProfilePropertyValueID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportCrewDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportCrewDelete] (
	@ReportCrewID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ReportCrew]
	WHERE
		[ReportCrewID] = @ReportCrewID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportCrewInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportCrewInsert] (
	@ReportCrewID int = NULL output,
	@ReportID int,
	@CrewID int,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ReportCrew]
	(
		[ReportID],
		[CrewID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	)
	VALUES
	(
		@ReportID,
		@CrewID,
		@PositionID,
		@Notes,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate
	)

	SET @Err = @@Error

	SELECT @ReportCrewID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportCrewLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportCrewLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportCrewID],
		[ReportID],
		[CrewID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [ReportCrew]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportCrewLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportCrewLoadByPrimaryKey] (
	@ReportCrewID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportCrewID],
		[ReportID],
		[CrewID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [ReportCrew]
	WHERE
		([ReportCrewID] = @ReportCrewID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportCrewUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportCrewUpdate] (
	@ReportCrewID int,
	@ReportID int,
	@CrewID int,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ReportCrew]
	SET
		[ReportID] = @ReportID,
		[CrewID] = @CrewID,
		[PositionID] = @PositionID,
		[Notes] = @Notes,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate
	WHERE
		[ReportCrewID] = @ReportCrewID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportDelete] (
	@ReportID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Report]
	WHERE
		[ReportID] = @ReportID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportInsert] (
	@ReportID int = NULL output,
	@ReportDate datetime,
	@AirCraft_AirPlaneID int,
	@FlightNo nvarchar(15),
	@IsHeavy bit,
	@Comment nvarchar(MAX) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Report]
	(
		[ReportDate],
		[AirCraft_AirPlaneID],
		[FlightNo],
		[IsHeavy],
		[Comment]
	)
	VALUES
	(
		@ReportDate,
		@AirCraft_AirPlaneID,
		@FlightNo,
		@IsHeavy,
		@Comment
	)

	SET @Err = @@Error

	SELECT @ReportID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportID],
		[ReportDate],
		[AirCraft_AirPlaneID],
		[FlightNo],
		[IsHeavy],
		[Comment]
	FROM [Report]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportLoadByPrimaryKey] (
	@ReportID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportID],
		[ReportDate],
		[AirCraft_AirPlaneID],
		[FlightNo],
		[IsHeavy],
		[Comment]
	FROM [Report]
	WHERE
		([ReportID] = @ReportID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportPilotDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportPilotDelete] (
	@ReportPilotID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ReportPilot]
	WHERE
		[ReportPilotID] = @ReportPilotID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportPilotInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportPilotInsert] (
	@ReportPilotID int = NULL output,
	@ReportID int = NULL,
	@PilotID int = NULL,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ReportPilot]
	(
		[ReportID],
		[PilotID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	)
	VALUES
	(
		@ReportID,
		@PilotID,
		@PositionID,
		@Notes,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate
	)

	SET @Err = @@Error

	SELECT @ReportPilotID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportPilotLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportPilotLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportPilotID],
		[ReportID],
		[PilotID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [ReportPilot]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportPilotLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportPilotLoadByPrimaryKey] (
	@ReportPilotID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportPilotID],
		[ReportID],
		[PilotID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate]
	FROM [ReportPilot]
	WHERE
		([ReportPilotID] = @ReportPilotID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportPilotUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportPilotUpdate] (
	@ReportPilotID int,
	@ReportID int = NULL,
	@PilotID int = NULL,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ReportPilot]
	SET
		[ReportID] = @ReportID,
		[PilotID] = @PilotID,
		[PositionID] = @PositionID,
		[Notes] = @Notes,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate
	WHERE
		[ReportPilotID] = @ReportPilotID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ReportUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReportUpdate] (
	@ReportID int,
	@ReportDate datetime,
	@AirCraft_AirPlaneID int,
	@FlightNo nvarchar(15),
	@IsHeavy bit,
	@Comment nvarchar(MAX) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Report]
	SET
		[ReportDate] = @ReportDate,
		[AirCraft_AirPlaneID] = @AirCraft_AirPlaneID,
		[FlightNo] = @FlightNo,
		[IsHeavy] = @IsHeavy,
		[Comment] = @Comment
	WHERE
		[ReportID] = @ReportID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ScheduleDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ScheduleDelete]
(
	@ScheduleID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Schedule]
	WHERE
		[ScheduleID] = @ScheduleID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ScheduleInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ScheduleInsert]
(
	@ScheduleID int = NULL output,
	@Name nvarchar(300) = NULL,
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
	INTO [Schedule]
	(
		[Name],
		[StartDate],
		[EndDate],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	)
	VALUES
	(
		@Name,
		@StartDate,
		@EndDate,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate
	)

	SET @Err = @@Error

	SELECT @ScheduleID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ScheduleLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ScheduleLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ScheduleID],
		[Name],
		[StartDate],
		[EndDate],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [Schedule]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ScheduleLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ScheduleLoadByPrimaryKey]
(
	@ScheduleID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ScheduleID],
		[Name],
		[StartDate],
		[EndDate],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate]
	FROM [Schedule]
	WHERE
		([ScheduleID] = @ScheduleID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ScheduleUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ScheduleUpdate]
(
	@ScheduleID int,
	@Name nvarchar(300) = NULL,
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

	UPDATE [Schedule]
	SET
		[Name] = @Name,
		[StartDate] = @StartDate,
		[EndDate] = @EndDate,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate
	WHERE
		[ScheduleID] = @ScheduleID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ScheduleVersionDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ScheduleVersionDelete]
(
	@ScheduleVersionID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ScheduleVersion]
	WHERE
		[ScheduleVersionID] = @ScheduleVersionID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ScheduleVersionInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ScheduleVersionInsert]
(
	@ScheduleVersionID int = NULL output,
	@ScheduleID int = NULL,
	@Title nvarchar(300) = NULL,
	@Path nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@IssueNumber nvarchar(10) = NULL,
	@IssueDate datetime = NULL,
	@RevisionNumber nvarchar(10) = NULL,
	@RevisionDate datetime = NULL,
	@Notes nvarchar(MAX) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ScheduleVersion]
	(
		[ScheduleID],
		[Title],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[Notes]
	)
	VALUES
	(
		@ScheduleID,
		@Title,
		@Path,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate,
		@IssueNumber,
		@IssueDate,
		@RevisionNumber,
		@RevisionDate,
		@Notes
	)

	SET @Err = @@Error

	SELECT @ScheduleVersionID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ScheduleVersionLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ScheduleVersionLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ScheduleVersionID],
		[ScheduleID],
		[Title],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[Notes]
	FROM [ScheduleVersion]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ScheduleVersionLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ScheduleVersionLoadByPrimaryKey]
(
	@ScheduleVersionID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ScheduleVersionID],
		[ScheduleID],
		[Title],
		[Path],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[IssueNumber],
		[IssueDate],
		[RevisionNumber],
		[RevisionDate],
		[Notes]
	FROM [ScheduleVersion]
	WHERE
		([ScheduleVersionID] = @ScheduleVersionID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ScheduleVersionUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_ScheduleVersionUpdate]
(
	@ScheduleVersionID int,
	@ScheduleID int = NULL,
	@Title nvarchar(300) = NULL,
	@Path nvarchar(300) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@IssueNumber nvarchar(10) = NULL,
	@IssueDate datetime = NULL,
	@RevisionNumber nvarchar(10) = NULL,
	@RevisionDate datetime = NULL,
	@Notes nvarchar(MAX) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ScheduleVersion]
	SET
		[ScheduleID] = @ScheduleID,
		[Title] = @Title,
		[Path] = @Path,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate,
		[IssueNumber] = @IssueNumber,
		[IssueDate] = @IssueDate,
		[RevisionNumber] = @RevisionNumber,
		[RevisionDate] = @RevisionDate,
		[Notes] = @Notes
	WHERE
		[ScheduleVersionID] = @ScheduleVersionID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorClientsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorClientsDelete] (
	@ClientID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [SectorClients]
	WHERE
		[ClientID] = @ClientID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorClientsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorClientsInsert] (
	@ClientID int = NULL output,
	@Name nvarchar(200) = NULL,
	@Tele nvarchar(50) = NULL,
	@Fax nvarchar(50) = NULL,
	@Mail nvarchar(100) = NULL,
	@Address nvarchar(300) = NULL,
	@Website nvarchar(100) = NULL,
	@ContactName nvarchar(200) = NULL,
	@ContactTele nvarchar(50) = NULL,
	@ContactMail nvarchar(100) = NULL,
	@ContactMobile nvarchar(100) = NULL,
	@LogoPath nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [SectorClients]
	(
		[Name],
		[Tele],
		[Fax],
		[Mail],
		[Address],
		[Website],
		[ContactName],
		[ContactTele],
		[ContactMail],
		[ContactMobile],
		[LogoPath]
	)
	VALUES
	(
		@Name,
		@Tele,
		@Fax,
		@Mail,
		@Address,
		@Website,
		@ContactName,
		@ContactTele,
		@ContactMail,
		@ContactMobile,
		@LogoPath
	)

	SET @Err = @@Error

	SELECT @ClientID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorClientsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorClientsLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ClientID],
		[Name],
		[Tele],
		[Fax],
		[Mail],
		[Address],
		[Website],
		[ContactName],
		[ContactTele],
		[ContactMail],
		[ContactMobile],
		[LogoPath]
	FROM [SectorClients]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorClientsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorClientsLoadByPrimaryKey] (
	@ClientID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ClientID],
		[Name],
		[Tele],
		[Fax],
		[Mail],
		[Address],
		[Website],
		[ContactName],
		[ContactTele],
		[ContactMail],
		[ContactMobile],
		[LogoPath]
	FROM [SectorClients]
	WHERE
		([ClientID] = @ClientID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorClientsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorClientsUpdate] (
	@ClientID int,
	@Name nvarchar(200) = NULL,
	@Tele nvarchar(50) = NULL,
	@Fax nvarchar(50) = NULL,
	@Mail nvarchar(100) = NULL,
	@Address nvarchar(300) = NULL,
	@Website nvarchar(100) = NULL,
	@ContactName nvarchar(200) = NULL,
	@ContactTele nvarchar(50) = NULL,
	@ContactMail nvarchar(100) = NULL,
	@ContactMobile nvarchar(100) = NULL,
	@LogoPath nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [SectorClients]
	SET
		[Name] = @Name,
		[Tele] = @Tele,
		[Fax] = @Fax,
		[Mail] = @Mail,
		[Address] = @Address,
		[Website] = @Website,
		[ContactName] = @ContactName,
		[ContactTele] = @ContactTele,
		[ContactMail] = @ContactMail,
		[ContactMobile] = @ContactMobile,
		[LogoPath] = @LogoPath
	WHERE
		[ClientID] = @ClientID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorCrewDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorCrewDelete] (
	@ReportCrewID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [SectorCrew]
	WHERE
		[ReportCrewID] = @ReportCrewID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorCrewInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorCrewInsert] (
	@ReportCrewID int = NULL output,
	@CrewID int,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@SectorID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [SectorCrew]
	(
		[CrewID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[SectorID]
	)
	VALUES
	(
		@CrewID,
		@PositionID,
		@Notes,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate,
		@SectorID
	)

	SET @Err = @@Error

	SELECT @ReportCrewID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorCrewLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorCrewLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportCrewID],
		[CrewID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[SectorID]
	FROM [SectorCrew]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorCrewLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorCrewLoadByPrimaryKey] (
	@ReportCrewID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportCrewID],
		[CrewID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[SectorID]
	FROM [SectorCrew]
	WHERE
		([ReportCrewID] = @ReportCrewID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorCrewUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorCrewUpdate] (
	@ReportCrewID int,
	@CrewID int,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@SectorID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [SectorCrew]
	SET
		[CrewID] = @CrewID,
		[PositionID] = @PositionID,
		[Notes] = @Notes,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate,
		[SectorID] = @SectorID
	WHERE
		[ReportCrewID] = @ReportCrewID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorDelete]
(
	@SectorID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Sector]
	WHERE
		[SectorID] = @SectorID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorInsert]
(
	@SectorID int = NULL output,
	@FlightID int = NULL,
	@From_AirportID int = NULL,
	@To_AirportID int = NULL,
	@FuleUplifted int = NULL,
	@STD datetime = NULL,
	@ATD datetime = NULL,
	@ChoxOff datetime = NULL,
	@STA datetime = NULL,
	@ATA datetime = NULL,
	@ChoxOn datetime = NULL,
	@StandardBurnOff int = NULL,
	@ActualBurnOff int = NULL,
	@DepDelayID1 int = NULL,
	@DepDelayTime1 datetime = NULL,
	@DepDelayID2 int = NULL,
	@DepDelayTime2 datetime = NULL,
	@DepDelayID3 int = NULL,
	@DepDelayTime3 datetime = NULL,
	@ArrDelayID1 int = NULL,
	@ArrDelayTime1 datetime = NULL,
	@ArrDelayID2 int = NULL,
	@ArrDelayTime2 datetime = NULL,
	@ArrDelayID3 int = NULL,
	@ArrDelayTime3 datetime = NULL,
	@PilotFlying_CrewID int = NULL,
	@PilotMonitoring_CrewID int = NULL,
	@FlyAtDay datetime = NULL,
	@FlyAtNight datetime = NULL,
	@DepFule int = NULL,
	@ArrFule int = NULL,
	@NoOfPax_A int = NULL,
	@NoOfPax_C int = NULL,
	@NoOfPax_I int = NULL,
	@ZFW bigint = NULL,
	@TOW bigint = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@FlightNo nvarchar(15) = NULL,
	@IsPAX bit = NULL,
	@IsHeavy bit = NULL,
	@IsHeavyCrew bit = NULL,
	@Comments nvarchar(500) = NULL,
	@AirCraft_AirPlaneID int = NULL,
	@SectorDate datetime = NULL,
	@IsReturnSector bit = NULL,
	@ReturnSectorID int = NULL,
	@ClientID int = NULL,
	@PilotCityID int = NULL,
	@OnBoardFuel int = NULL,
	@ReceiptNo int = NULL,
	@FO_AS_PilotFlying bit = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Sector]
	(
		[FlightID],
		[From_AirportID],
		[To_AirportID],
		[FuleUplifted],
		[STD],
		[ATD],
		[ChoxOff],
		[STA],
		[ATA],
		[ChoxOn],
		[StandardBurnOff],
		[ActualBurnOff],
		[DepDelayID1],
		[DepDelayTime1],
		[DepDelayID2],
		[DepDelayTime2],
		[DepDelayID3],
		[DepDelayTime3],
		[ArrDelayID1],
		[ArrDelayTime1],
		[ArrDelayID2],
		[ArrDelayTime2],
		[ArrDelayID3],
		[ArrDelayTime3],
		[PilotFlying_CrewID],
		[PilotMonitoring_CrewID],
		[FlyAtDay],
		[FlyAtNight],
		[DepFule],
		[ArrFule],
		[NoOfPax_A],
		[NoOfPax_C],
		[NoOfPax_I],
		[ZFW],
		[TOW],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[FlightNo],
		[IsPAX],
		[IsHeavy],
		[IsHeavyCrew],
		[Comments],
		[AirCraft_AirPlaneID],
		[SectorDate],
		[IsReturnSector],
		[ReturnSectorID],
		[ClientID],
		[PilotCityID],
		[OnBoardFuel],
		[ReceiptNo],
		[FO_AS_PilotFlying]
	)
	VALUES
	(
		@FlightID,
		@From_AirportID,
		@To_AirportID,
		@FuleUplifted,
		@STD,
		@ATD,
		@ChoxOff,
		@STA,
		@ATA,
		@ChoxOn,
		@StandardBurnOff,
		@ActualBurnOff,
		@DepDelayID1,
		@DepDelayTime1,
		@DepDelayID2,
		@DepDelayTime2,
		@DepDelayID3,
		@DepDelayTime3,
		@ArrDelayID1,
		@ArrDelayTime1,
		@ArrDelayID2,
		@ArrDelayTime2,
		@ArrDelayID3,
		@ArrDelayTime3,
		@PilotFlying_CrewID,
		@PilotMonitoring_CrewID,
		@FlyAtDay,
		@FlyAtNight,
		@DepFule,
		@ArrFule,
		@NoOfPax_A,
		@NoOfPax_C,
		@NoOfPax_I,
		@ZFW,
		@TOW,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate,
		@FlightNo,
		@IsPAX,
		@IsHeavy,
		@IsHeavyCrew,
		@Comments,
		@AirCraft_AirPlaneID,
		@SectorDate,
		@IsReturnSector,
		@ReturnSectorID,
		@ClientID,
		@PilotCityID,
		@OnBoardFuel,
		@ReceiptNo,
		@FO_AS_PilotFlying
	)

	SET @Err = @@Error

	SELECT @SectorID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SectorID],
		[FlightID],
		[From_AirportID],
		[To_AirportID],
		[FuleUplifted],
		[STD],
		[ATD],
		[ChoxOff],
		[STA],
		[ATA],
		[ChoxOn],
		[StandardBurnOff],
		[ActualBurnOff],
		[DepDelayID1],
		[DepDelayTime1],
		[DepDelayID2],
		[DepDelayTime2],
		[DepDelayID3],
		[DepDelayTime3],
		[ArrDelayID1],
		[ArrDelayTime1],
		[ArrDelayID2],
		[ArrDelayTime2],
		[ArrDelayID3],
		[ArrDelayTime3],
		[PilotFlying_CrewID],
		[PilotMonitoring_CrewID],
		[FlyAtDay],
		[FlyAtNight],
		[DepFule],
		[ArrFule],
		[NoOfPax_A],
		[NoOfPax_C],
		[NoOfPax_I],
		[ZFW],
		[TOW],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[FlightNo],
		[IsPAX],
		[IsHeavy],
		[IsHeavyCrew],
		[Comments],
		[AirCraft_AirPlaneID],
		[SectorDate],
		[IsReturnSector],
		[ReturnSectorID],
		[ClientID],
		[PilotCityID],
		[OnBoardFuel],
		[ReceiptNo],
		[FO_AS_PilotFlying]
	FROM [Sector]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorLoadByPrimaryKey]
(
	@SectorID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SectorID],
		[FlightID],
		[From_AirportID],
		[To_AirportID],
		[FuleUplifted],
		[STD],
		[ATD],
		[ChoxOff],
		[STA],
		[ATA],
		[ChoxOn],
		[StandardBurnOff],
		[ActualBurnOff],
		[DepDelayID1],
		[DepDelayTime1],
		[DepDelayID2],
		[DepDelayTime2],
		[DepDelayID3],
		[DepDelayTime3],
		[ArrDelayID1],
		[ArrDelayTime1],
		[ArrDelayID2],
		[ArrDelayTime2],
		[ArrDelayID3],
		[ArrDelayTime3],
		[PilotFlying_CrewID],
		[PilotMonitoring_CrewID],
		[FlyAtDay],
		[FlyAtNight],
		[DepFule],
		[ArrFule],
		[NoOfPax_A],
		[NoOfPax_C],
		[NoOfPax_I],
		[ZFW],
		[TOW],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[FlightNo],
		[IsPAX],
		[IsHeavy],
		[IsHeavyCrew],
		[Comments],
		[AirCraft_AirPlaneID],
		[SectorDate],
		[IsReturnSector],
		[ReturnSectorID],
		[ClientID],
		[PilotCityID],
		[OnBoardFuel],
		[ReceiptNo],
		[FO_AS_PilotFlying]
	FROM [Sector]
	WHERE
		([SectorID] = @SectorID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorPilotDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorPilotDelete] (
	@ReportPilotID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [SectorPilot]
	WHERE
		[ReportPilotID] = @ReportPilotID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorPilotInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorPilotInsert] (
	@ReportPilotID int = NULL output,
	@PilotID int = NULL,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@SectorID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [SectorPilot]
	(
		[PilotID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[SectorID]
	)
	VALUES
	(
		@PilotID,
		@PositionID,
		@Notes,
		@CreatedBy,
		@ModifiedBy,
		@CreatedDate,
		@LastModifiedDate,
		@SectorID
	)

	SET @Err = @@Error

	SELECT @ReportPilotID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorPilotLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorPilotLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportPilotID],
		[PilotID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[SectorID]
	FROM [SectorPilot]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorPilotLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorPilotLoadByPrimaryKey] (
	@ReportPilotID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ReportPilotID],
		[PilotID],
		[PositionID],
		[Notes],
		[CreatedBy],
		[ModifiedBy],
		[CreatedDate],
		[LastModifiedDate],
		[SectorID]
	FROM [SectorPilot]
	WHERE
		([ReportPilotID] = @ReportPilotID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorPilotUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorPilotUpdate] (
	@ReportPilotID int,
	@PilotID int = NULL,
	@PositionID int = NULL,
	@Notes nvarchar(500) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@SectorID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [SectorPilot]
	SET
		[PilotID] = @PilotID,
		[PositionID] = @PositionID,
		[Notes] = @Notes,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate,
		[SectorID] = @SectorID
	WHERE
		[ReportPilotID] = @ReportPilotID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SectorUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SectorUpdate]
(
	@SectorID int,
	@FlightID int = NULL,
	@From_AirportID int = NULL,
	@To_AirportID int = NULL,
	@FuleUplifted int = NULL,
	@STD datetime = NULL,
	@ATD datetime = NULL,
	@ChoxOff datetime = NULL,
	@STA datetime = NULL,
	@ATA datetime = NULL,
	@ChoxOn datetime = NULL,
	@StandardBurnOff int = NULL,
	@ActualBurnOff int = NULL,
	@DepDelayID1 int = NULL,
	@DepDelayTime1 datetime = NULL,
	@DepDelayID2 int = NULL,
	@DepDelayTime2 datetime = NULL,
	@DepDelayID3 int = NULL,
	@DepDelayTime3 datetime = NULL,
	@ArrDelayID1 int = NULL,
	@ArrDelayTime1 datetime = NULL,
	@ArrDelayID2 int = NULL,
	@ArrDelayTime2 datetime = NULL,
	@ArrDelayID3 int = NULL,
	@ArrDelayTime3 datetime = NULL,
	@PilotFlying_CrewID int = NULL,
	@PilotMonitoring_CrewID int = NULL,
	@FlyAtDay datetime = NULL,
	@FlyAtNight datetime = NULL,
	@DepFule int = NULL,
	@ArrFule int = NULL,
	@NoOfPax_A int = NULL,
	@NoOfPax_C int = NULL,
	@NoOfPax_I int = NULL,
	@ZFW bigint = NULL,
	@TOW bigint = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@ModifiedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@LastModifiedDate datetime = NULL,
	@FlightNo nvarchar(15) = NULL,
	@IsPAX bit = NULL,
	@IsHeavy bit = NULL,
	@IsHeavyCrew bit = NULL,
	@Comments nvarchar(500) = NULL,
	@AirCraft_AirPlaneID int = NULL,
	@SectorDate datetime = NULL,
	@IsReturnSector bit = NULL,
	@ReturnSectorID int = NULL,
	@ClientID int = NULL,
	@PilotCityID int = NULL,
	@OnBoardFuel int = NULL,
	@ReceiptNo int = NULL,
	@FO_AS_PilotFlying bit = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Sector]
	SET
		[FlightID] = @FlightID,
		[From_AirportID] = @From_AirportID,
		[To_AirportID] = @To_AirportID,
		[FuleUplifted] = @FuleUplifted,
		[STD] = @STD,
		[ATD] = @ATD,
		[ChoxOff] = @ChoxOff,
		[STA] = @STA,
		[ATA] = @ATA,
		[ChoxOn] = @ChoxOn,
		[StandardBurnOff] = @StandardBurnOff,
		[ActualBurnOff] = @ActualBurnOff,
		[DepDelayID1] = @DepDelayID1,
		[DepDelayTime1] = @DepDelayTime1,
		[DepDelayID2] = @DepDelayID2,
		[DepDelayTime2] = @DepDelayTime2,
		[DepDelayID3] = @DepDelayID3,
		[DepDelayTime3] = @DepDelayTime3,
		[ArrDelayID1] = @ArrDelayID1,
		[ArrDelayTime1] = @ArrDelayTime1,
		[ArrDelayID2] = @ArrDelayID2,
		[ArrDelayTime2] = @ArrDelayTime2,
		[ArrDelayID3] = @ArrDelayID3,
		[ArrDelayTime3] = @ArrDelayTime3,
		[PilotFlying_CrewID] = @PilotFlying_CrewID,
		[PilotMonitoring_CrewID] = @PilotMonitoring_CrewID,
		[FlyAtDay] = @FlyAtDay,
		[FlyAtNight] = @FlyAtNight,
		[DepFule] = @DepFule,
		[ArrFule] = @ArrFule,
		[NoOfPax_A] = @NoOfPax_A,
		[NoOfPax_C] = @NoOfPax_C,
		[NoOfPax_I] = @NoOfPax_I,
		[ZFW] = @ZFW,
		[TOW] = @TOW,
		[CreatedBy] = @CreatedBy,
		[ModifiedBy] = @ModifiedBy,
		[CreatedDate] = @CreatedDate,
		[LastModifiedDate] = @LastModifiedDate,
		[FlightNo] = @FlightNo,
		[IsPAX] = @IsPAX,
		[IsHeavy] = @IsHeavy,
		[IsHeavyCrew] = @IsHeavyCrew,
		[Comments] = @Comments,
		[AirCraft_AirPlaneID] = @AirCraft_AirPlaneID,
		[SectorDate] = @SectorDate,
		[IsReturnSector] = @IsReturnSector,
		[ReturnSectorID] = @ReturnSectorID,
		[ClientID] = @ClientID,
		[PilotCityID] = @PilotCityID,
		[OnBoardFuel] = @OnBoardFuel,
		[ReceiptNo] = @ReceiptNo,
		[FO_AS_PilotFlying] = @FO_AS_PilotFlying
	WHERE
		[SectorID] = @SectorID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SubTitleDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SubTitleDelete] (
	@SubTitleID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [SubTitle]
	WHERE
		[SubTitleID] = @SubTitleID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SubTitleInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SubTitleInsert] (
	@SubTitleID int = NULL output,
	@TitleID int = NULL,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [SubTitle]
	(
		[TitleID],
		[Name]
	)
	VALUES
	(
		@TitleID,
		@Name
	)

	SET @Err = @@Error

	SELECT @SubTitleID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SubTitleLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SubTitleLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SubTitleID],
		[TitleID],
		[Name]
	FROM [SubTitle]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SubTitleLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SubTitleLoadByPrimaryKey] (
	@SubTitleID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SubTitleID],
		[TitleID],
		[Name]
	FROM [SubTitle]
	WHERE
		([SubTitleID] = @SubTitleID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SubTitleUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SubTitleUpdate] (
	@SubTitleID int,
	@TitleID int = NULL,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [SubTitle]
	SET
		[TitleID] = @TitleID,
		[Name] = @Name
	WHERE
		[SubTitleID] = @SubTitleID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SystemSettingsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SystemSettingsDelete]
(
	@SystemSettingsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [SystemSettings]
	WHERE
		[SystemSettingsID] = @SystemSettingsID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SystemSettingsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SystemSettingsInsert]
(
	@SystemSettingsID int = NULL output,
	@FlightNoPrefix nvarchar(10) = NULL,
	@EnableFlightTimeLimitaion bit = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [SystemSettings]
	(
		[FlightNoPrefix],
		[EnableFlightTimeLimitaion]
	)
	VALUES
	(
		@FlightNoPrefix,
		@EnableFlightTimeLimitaion
	)

	SET @Err = @@Error

	SELECT @SystemSettingsID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SystemSettingsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SystemSettingsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SystemSettingsID],
		[FlightNoPrefix],
		[EnableFlightTimeLimitaion]
	FROM [SystemSettings]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SystemSettingsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SystemSettingsLoadByPrimaryKey]
(
	@SystemSettingsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[SystemSettingsID],
		[FlightNoPrefix],
		[EnableFlightTimeLimitaion]
	FROM [SystemSettings]
	WHERE
		([SystemSettingsID] = @SystemSettingsID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_SystemSettingsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_SystemSettingsUpdate]
(
	@SystemSettingsID int,
	@FlightNoPrefix nvarchar(10) = NULL,
	@EnableFlightTimeLimitaion bit = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [SystemSettings]
	SET
		[FlightNoPrefix] = @FlightNoPrefix,
		[EnableFlightTimeLimitaion] = @EnableFlightTimeLimitaion
	WHERE
		[SystemSettingsID] = @SystemSettingsID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TimeLimitationTableDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TimeLimitationTableDelete]
(
	@TimeLimitationTableID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [TimeLimitationTable]
	WHERE
		[TimeLimitationTableID] = @TimeLimitationTableID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TimeLimitationTableInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TimeLimitationTableInsert]
(
	@TimeLimitationTableID int = NULL output,
	@TimeIntervalFrom datetime = NULL,
	@TimeIntervalTo datetime = NULL,
	@NoOfSectors smallint = NULL,
	@NoOfHours datetime = NULL,
	@IsAcclimatized bit = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [TimeLimitationTable]
	(
		[TimeIntervalFrom],
		[TimeIntervalTo],
		[NoOfSectors],
		[NoOfHours],
		[IsAcclimatized]
	)
	VALUES
	(
		@TimeIntervalFrom,
		@TimeIntervalTo,
		@NoOfSectors,
		@NoOfHours,
		@IsAcclimatized
	)

	SET @Err = @@Error

	SELECT @TimeLimitationTableID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TimeLimitationTableLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TimeLimitationTableLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TimeLimitationTableID],
		[TimeIntervalFrom],
		[TimeIntervalTo],
		[NoOfSectors],
		[NoOfHours],
		[IsAcclimatized]
	FROM [TimeLimitationTable]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TimeLimitationTableLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TimeLimitationTableLoadByPrimaryKey]
(
	@TimeLimitationTableID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TimeLimitationTableID],
		[TimeIntervalFrom],
		[TimeIntervalTo],
		[NoOfSectors],
		[NoOfHours],
		[IsAcclimatized]
	FROM [TimeLimitationTable]
	WHERE
		([TimeLimitationTableID] = @TimeLimitationTableID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TimeLimitationTableUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TimeLimitationTableUpdate]
(
	@TimeLimitationTableID int,
	@TimeIntervalFrom datetime = NULL,
	@TimeIntervalTo datetime = NULL,
	@NoOfSectors smallint = NULL,
	@NoOfHours datetime = NULL,
	@IsAcclimatized bit = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [TimeLimitationTable]
	SET
		[TimeIntervalFrom] = @TimeIntervalFrom,
		[TimeIntervalTo] = @TimeIntervalTo,
		[NoOfSectors] = @NoOfSectors,
		[NoOfHours] = @NoOfHours,
		[IsAcclimatized] = @IsAcclimatized
	WHERE
		[TimeLimitationTableID] = @TimeLimitationTableID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TimeZoneDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TimeZoneDelete]
(
	@TimeZoneID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [TimeZone]
	WHERE
		[TimeZoneID] = @TimeZoneID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TimeZoneInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TimeZoneInsert]
(
	@TimeZoneID int = NULL output,
	@DisplayName nvarchar(10) = NULL,
	@Hours int = NULL,
	@Mins int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [TimeZone]
	(
		[DisplayName],
		[Hours],
		[Mins]
	)
	VALUES
	(
		@DisplayName,
		@Hours,
		@Mins
	)

	SET @Err = @@Error

	SELECT @TimeZoneID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TimeZoneLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TimeZoneLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TimeZoneID],
		[DisplayName],
		[Hours],
		[Mins]
	FROM [TimeZone]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TimeZoneLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TimeZoneLoadByPrimaryKey]
(
	@TimeZoneID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TimeZoneID],
		[DisplayName],
		[Hours],
		[Mins]
	FROM [TimeZone]
	WHERE
		([TimeZoneID] = @TimeZoneID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TimeZoneUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TimeZoneUpdate]
(
	@TimeZoneID int,
	@DisplayName nvarchar(10) = NULL,
	@Hours int = NULL,
	@Mins int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [TimeZone]
	SET
		[DisplayName] = @DisplayName,
		[Hours] = @Hours,
		[Mins] = @Mins
	WHERE
		[TimeZoneID] = @TimeZoneID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TitleCourseDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TitleCourseDelete] (
	@CourseID int,
	@TitleID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [TitleCourse]
	WHERE
		[CourseID] = @CourseID AND
		[TitleID] = @TitleID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TitleCourseInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TitleCourseInsert] (
	@CourseID int,
	@TitleID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [TitleCourse]
	(
		[CourseID],
		[TitleID]
	)
	VALUES
	(
		@CourseID,
		@TitleID
	)

	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TitleCourseLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TitleCourseLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CourseID],
		[TitleID]
	FROM [TitleCourse]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TitleCourseLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TitleCourseLoadByPrimaryKey] (
	@CourseID int,
	@TitleID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[CourseID],
		[TitleID]
	FROM [TitleCourse]
	WHERE
		([CourseID] = @CourseID) AND
		([TitleID] = @TitleID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TitleDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TitleDelete] (
	@TitleID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Title]
	WHERE
		[TitleID] = @TitleID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TitleInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TitleInsert] (
	@TitleID int = NULL output,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Title]
	(
		[Name]
	)
	VALUES
	(
		@Name
	)

	SET @Err = @@Error

	SELECT @TitleID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TitleLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TitleLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TitleID],
		[Name]
	FROM [Title]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TitleLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TitleLoadByPrimaryKey] (
	@TitleID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TitleID],
		[Name]
	FROM [Title]
	WHERE
		([TitleID] = @TitleID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TitleUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TitleUpdate] (
	@TitleID int,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Title]
	SET
		[Name] = @Name
	WHERE
		[TitleID] = @TitleID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TrainingDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TrainingDelete] (
	@TrainingID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Training]
	WHERE
		[TrainingID] = @TrainingID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TrainingInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TrainingInsert] (
	@TrainingID int = NULL output,
	@TrainingCode nvarchar(200) = NULL,
	@AirPlaneModel int = NULL,
	@TrainingPlace nvarchar(200) = NULL,
	@AssignedByID int = NULL,
	@IsSpecial bit = NULL,
	@IsApproved bit = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL,
	@TravelDate datetime = NULL,
	@BackDate datetime = NULL,
	@TrainerID int = NULL,
	@TrainerTitleID int = NULL,
	@CourseID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Training]
	(
		[TrainingCode],
		[AirPlaneModel],
		[TrainingPlace],
		[AssignedByID],
		[IsSpecial],
		[IsApproved],
		[StartDate],
		[EndDate],
		[TravelDate],
		[BackDate],
		[TrainerID],
		[TrainerTitleID],
		[CourseID]
	)
	VALUES
	(
		@TrainingCode,
		@AirPlaneModel,
		@TrainingPlace,
		@AssignedByID,
		@IsSpecial,
		@IsApproved,
		@StartDate,
		@EndDate,
		@TravelDate,
		@BackDate,
		@TrainerID,
		@TrainerTitleID,
		@CourseID
	)

	SET @Err = @@Error

	SELECT @TrainingID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TrainingLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TrainingLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TrainingID],
		[TrainingCode],
		[AirPlaneModel],
		[TrainingPlace],
		[AssignedByID],
		[IsSpecial],
		[IsApproved],
		[StartDate],
		[EndDate],
		[TravelDate],
		[BackDate],
		[TrainerID],
		[TrainerTitleID],
		[CourseID]
	FROM [Training]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TrainingLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TrainingLoadByPrimaryKey] (
	@TrainingID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TrainingID],
		[TrainingCode],
		[AirPlaneModel],
		[TrainingPlace],
		[AssignedByID],
		[IsSpecial],
		[IsApproved],
		[StartDate],
		[EndDate],
		[TravelDate],
		[BackDate],
		[TrainerID],
		[TrainerTitleID],
		[CourseID]
	FROM [Training]
	WHERE
		([TrainingID] = @TrainingID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TrainingUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TrainingUpdate] (
	@TrainingID int,
	@TrainingCode nvarchar(200) = NULL,
	@AirPlaneModel int = NULL,
	@TrainingPlace nvarchar(200) = NULL,
	@AssignedByID int = NULL,
	@IsSpecial bit = NULL,
	@IsApproved bit = NULL,
	@StartDate datetime = NULL,
	@EndDate datetime = NULL,
	@TravelDate datetime = NULL,
	@BackDate datetime = NULL,
	@TrainerID int = NULL,
	@TrainerTitleID int = NULL,
	@CourseID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Training]
	SET
		[TrainingCode] = @TrainingCode,
		[AirPlaneModel] = @AirPlaneModel,
		[TrainingPlace] = @TrainingPlace,
		[AssignedByID] = @AssignedByID,
		[IsSpecial] = @IsSpecial,
		[IsApproved] = @IsApproved,
		[StartDate] = @StartDate,
		[EndDate] = @EndDate,
		[TravelDate] = @TravelDate,
		[BackDate] = @BackDate,
		[TrainerID] = @TrainerID,
		[TrainerTitleID] = @TrainerTitleID,
		[CourseID] = @CourseID
	WHERE
		[TrainingID] = @TrainingID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TransactionsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TransactionsDelete] (
	@TransactionsID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [Transactions]
	WHERE
		[TransactionsID] = @TransactionsID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TransactionsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TransactionsInsert] (
	@TransactionsID int = NULL output,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [Transactions]
	(
		[Name]
	)
	VALUES
	(
		@Name
	)

	SET @Err = @@Error

	SELECT @TransactionsID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TransactionsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TransactionsLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TransactionsID],
		[Name]
	FROM [Transactions]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TransactionsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TransactionsLoadByPrimaryKey] (
	@TransactionsID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[TransactionsID],
		[Name]
	FROM [Transactions]
	WHERE
		([TransactionsID] = @TransactionsID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_TransactionsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TransactionsUpdate] (
	@TransactionsID int,
	@Name nvarchar(200) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [Transactions]
	SET
		[Name] = @Name
	WHERE
		[TransactionsID] = @TransactionsID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsefulLinkDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsefulLinkDelete]
(
	@UsefulLinkID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [UsefulLink]
	WHERE
		[UsefulLinkID] = @UsefulLinkID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsefulLinkInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsefulLinkInsert]
(
	@UsefulLinkID int = NULL output,
	@Title nvarchar(300) = NULL,
	@Description nvarchar(1000) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@URL nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [UsefulLink]
	(
		[Title],
		[Description],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[URL]
	)
	VALUES
	(
		@Title,
		@Description,
		@CreatedBy,
		@CreatedDate,
		@UpdatedBy,
		@LastUpdatedDate,
		@URL
	)

	SET @Err = @@Error

	SELECT @UsefulLinkID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsefulLinkLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsefulLinkLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UsefulLinkID],
		[Title],
		[Description],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[URL]
	FROM [UsefulLink]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsefulLinkLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsefulLinkLoadByPrimaryKey]
(
	@UsefulLinkID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UsefulLinkID],
		[Title],
		[Description],
		[CreatedBy],
		[CreatedDate],
		[UpdatedBy],
		[LastUpdatedDate],
		[URL]
	FROM [UsefulLink]
	WHERE
		([UsefulLinkID] = @UsefulLinkID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsefulLinkUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsefulLinkUpdate]
(
	@UsefulLinkID int,
	@Title nvarchar(300) = NULL,
	@Description nvarchar(1000) = NULL,
	@CreatedBy uniqueidentifier = NULL,
	@CreatedDate datetime = NULL,
	@UpdatedBy uniqueidentifier = NULL,
	@LastUpdatedDate datetime = NULL,
	@URL nvarchar(500) = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [UsefulLink]
	SET
		[Title] = @Title,
		[Description] = @Description,
		[CreatedBy] = @CreatedBy,
		[CreatedDate] = @CreatedDate,
		[UpdatedBy] = @UpdatedBy,
		[LastUpdatedDate] = @LastUpdatedDate,
		[URL] = @URL
	WHERE
		[UsefulLinkID] = @UsefulLinkID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsersNoficationsDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsersNoficationsDelete]
(
	@UserNotificationID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [UsersNofications]
	WHERE
		[UserNotificationID] = @UserNotificationID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsersNoficationsInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsersNoficationsInsert]
(
	@UserNotificationID int = NULL output,
	@UserID uniqueidentifier = NULL,
	@NotificationType int = NULL,
	@IsRead bit = NULL,
	@CategoryID int = NULL,
	@ManualID int = NULL,
	@FormID int = NULL,
	@ManualVersionID int = NULL,
	@FromVersionID int = NULL,
	@ScheduleID int = NULL,
	@ScheduleVersionID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [UsersNofications]
	(
		[UserID],
		[NotificationType],
		[IsRead],
		[CategoryID],
		[ManualID],
		[FormID],
		[ManualVersionID],
		[FromVersionID],
		[ScheduleID],
		[ScheduleVersionID]
	)
	VALUES
	(
		@UserID,
		@NotificationType,
		@IsRead,
		@CategoryID,
		@ManualID,
		@FormID,
		@ManualVersionID,
		@FromVersionID,
		@ScheduleID,
		@ScheduleVersionID
	)

	SET @Err = @@Error

	SELECT @UserNotificationID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsersNoficationsLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsersNoficationsLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserNotificationID],
		[UserID],
		[NotificationType],
		[IsRead],
		[CategoryID],
		[ManualID],
		[FormID],
		[ManualVersionID],
		[FromVersionID],
		[ScheduleID],
		[ScheduleVersionID]
	FROM [UsersNofications]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsersNoficationsLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsersNoficationsLoadByPrimaryKey]
(
	@UserNotificationID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserNotificationID],
		[UserID],
		[NotificationType],
		[IsRead],
		[CategoryID],
		[ManualID],
		[FormID],
		[ManualVersionID],
		[FromVersionID],
		[ScheduleID],
		[ScheduleVersionID]
	FROM [UsersNofications]
	WHERE
		([UserNotificationID] = @UserNotificationID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsersNoficationsUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsersNoficationsUpdate]
(
	@UserNotificationID int,
	@UserID uniqueidentifier = NULL,
	@NotificationType int = NULL,
	@IsRead bit = NULL,
	@CategoryID int = NULL,
	@ManualID int = NULL,
	@FormID int = NULL,
	@ManualVersionID int = NULL,
	@FromVersionID int = NULL,
	@ScheduleID int = NULL,
	@ScheduleVersionID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [UsersNofications]
	SET
		[UserID] = @UserID,
		[NotificationType] = @NotificationType,
		[IsRead] = @IsRead,
		[CategoryID] = @CategoryID,
		[ManualID] = @ManualID,
		[FormID] = @FormID,
		[ManualVersionID] = @ManualVersionID,
		[FromVersionID] = @FromVersionID,
		[ScheduleID] = @ScheduleID,
		[ScheduleVersionID] = @ScheduleVersionID
	WHERE
		[UserNotificationID] = @UserNotificationID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsersProfilesDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsersProfilesDelete]
(
	@UserProfileID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [UsersProfiles]
	WHERE
		[UserProfileID] = @UserProfileID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsersProfilesInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsersProfilesInsert]
(
	@UserProfileID int = NULL output,
	@UserID uniqueidentifier = NULL,
	@FullName nvarchar(50) = NULL,
	@Email nvarchar(50) = NULL,
	@Telephone nvarchar(50) = NULL,
	@Photo nvarchar(1000) = NULL,
	@GroupID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [UsersProfiles]
	(
		[UserID],
		[FullName],
		[Email],
		[Telephone],
		[Photo],
		[GroupID]
	)
	VALUES
	(
		@UserID,
		@FullName,
		@Email,
		@Telephone,
		@Photo,
		@GroupID
	)

	SET @Err = @@Error

	SELECT @UserProfileID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsersProfilesLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsersProfilesLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserProfileID],
		[UserID],
		[FullName],
		[Email],
		[Telephone],
		[Photo],
		[GroupID]
	FROM [UsersProfiles]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsersProfilesLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsersProfilesLoadByPrimaryKey]
(
	@UserProfileID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[UserProfileID],
		[UserID],
		[FullName],
		[Email],
		[Telephone],
		[Photo],
		[GroupID]
	FROM [UsersProfiles]
	WHERE
		([UserProfileID] = @UserProfileID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_UsersProfilesUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_UsersProfilesUpdate]
(
	@UserProfileID int,
	@UserID uniqueidentifier = NULL,
	@FullName nvarchar(50) = NULL,
	@Email nvarchar(50) = NULL,
	@Telephone nvarchar(50) = NULL,
	@Photo nvarchar(1000) = NULL,
	@GroupID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [UsersProfiles]
	SET
		[UserID] = @UserID,
		[FullName] = @FullName,
		[Email] = @Email,
		[Telephone] = @Telephone,
		[Photo] = @Photo,
		[GroupID] = @GroupID
	WHERE
		[UserProfileID] = @UserProfileID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ValidationSettingDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ValidationSettingDelete]
(
	@ValidationSettingID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [ValidationSetting]
	WHERE
		[ValidationSettingID] = @ValidationSettingID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ValidationSettingInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ValidationSettingInsert]
(
	@ValidationSettingID int = NULL output,
	@Name nvarchar(200) = NULL,
	@ConfigType smallint = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [ValidationSetting]
	(
		[Name],
		[ConfigType]
	)
	VALUES
	(
		@Name,
		@ConfigType
	)

	SET @Err = @@Error

	SELECT @ValidationSettingID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ValidationSettingLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ValidationSettingLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ValidationSettingID],
		[Name],
		[ConfigType]
	FROM [ValidationSetting]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ValidationSettingLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ValidationSettingLoadByPrimaryKey]
(
	@ValidationSettingID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[ValidationSettingID],
		[Name],
		[ConfigType]
	FROM [ValidationSetting]
	WHERE
		([ValidationSettingID] = @ValidationSettingID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_ValidationSettingUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ValidationSettingUpdate]
(
	@ValidationSettingID int,
	@Name nvarchar(200) = NULL,
	@ConfigType smallint = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [ValidationSetting]
	SET
		[Name] = @Name,
		[ConfigType] = @ConfigType
	WHERE
		[ValidationSettingID] = @ValidationSettingID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_VisaInfoDelete]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_VisaInfoDelete] (
	@VisaInfoID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [VisaInfo]
	WHERE
		[VisaInfoID] = @VisaInfoID
	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_VisaInfoInsert]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_VisaInfoInsert] (
	@VisaInfoID int = NULL output,
	@Country nvarchar(200) = NULL,
	@VisaNo nvarchar(200) = NULL,
	@ExpiryDate datetime = NULL,
	@PilotID int = NULL,
	@CrewID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [VisaInfo]
	(
		[Country],
		[VisaNo],
		[ExpiryDate],
		[PilotID],
		[CrewID]
	)
	VALUES
	(
		@Country,
		@VisaNo,
		@ExpiryDate,
		@PilotID,
		@CrewID
	)

	SET @Err = @@Error

	SELECT @VisaInfoID = SCOPE_IDENTITY()

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_VisaInfoLoadAll]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_VisaInfoLoadAll] AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[VisaInfoID],
		[Country],
		[VisaNo],
		[ExpiryDate],
		[PilotID],
		[CrewID]
	FROM [VisaInfo]

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_VisaInfoLoadByPrimaryKey]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_VisaInfoLoadByPrimaryKey] (
	@VisaInfoID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[VisaInfoID],
		[Country],
		[VisaNo],
		[ExpiryDate],
		[PilotID],
		[CrewID]
	FROM [VisaInfo]
	WHERE
		([VisaInfoID] = @VisaInfoID)

	SET @Err = @@Error

	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[proc_VisaInfoUpdate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_VisaInfoUpdate] (
	@VisaInfoID int,
	@Country nvarchar(200) = NULL,
	@VisaNo nvarchar(200) = NULL,
	@ExpiryDate datetime = NULL,
	@PilotID int = NULL,
	@CrewID int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [VisaInfo]
	SET
		[Country] = @Country,
		[VisaNo] = @VisaNo,
		[ExpiryDate] = @ExpiryDate,
		[PilotID] = @PilotID,
		[CrewID] = @CrewID
	WHERE
		[VisaInfoID] = @VisaInfoID


	SET @Err = @@Error


	RETURN @Err
END

GO
/****** Object:  StoredProcedure [dbo].[SearchBatchSectors]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[SearchBatchSectors] @filterText nvarchar(30),  
          @FromDate DateTime = null,  
          @ToDate DateTime = null  
as  
 /* declare   @FromDate DateTime = null,  
          @ToDate DateTime = null  ,
          @filterText nvarchar(30) = ''
set @FromDate = '01/01/2015'          
set @ToDate = '01/31/2015'*/
Select S.FlightNo, S.SectorDate, S.STD, S.STA,FromA.IATACode FromA, ToA.IATACode TOA ,Stuff(( Select '   <br />'+ po.Title + ' - ' + P2.ShortName    
      From Sector SS2   
      Inner Join SectorPilot RP2 on SS2.SectorID = RP2.SectorID   
      inner join Pilot P2 on RP2.PilotID = P2.PilotID   
      Inner Join Position po on RP2.PositionID = po.PositionID
      where SS2.SectorID = S.SectorID   
      order by po.PositionID
   for XML path('')),1,3,'') Pilots ,
    Stuff(( Select '   <br />' + po.Title + ' - ' + CC.ShortName 
      From Sector S2   
      Inner Join SectorCrew C on S2.SectorID = C.SectorID   
      inner join Crew CC on CC.CrewID = C.CrewID   
      Inner Join Position po on c.PositionID = po.PositionID
      where S2.SectorID = S.SectorID   
      order by po.PositionID
   for XML path('')),1,3,'') Crew
from Sector S
Inner Join AirPort FromA on FromA.AirPortID = S.From_AirportID
Inner join AirPort ToA on ToA.AirPortID = S.To_AirportID
where (ISNULL(@filterText,'') = '' Or FlightNo Like N'%' + @filterText + N'%') and   
   SectorDate >= (ISNULL(@FromDate, '01/01/1900')) And   
   SectorDate <= (ISNULL(@ToDate, '01/01/2500')) And   
   (IsPAX is NULL Or IsPAX <> 1 )  
  Order by S.SectorDate , datepart(hh,S.STD)

GO
/****** Object:  StoredProcedure [dbo].[SearchCrew]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchCrew] @filterText nvarchar(200)
as

select * 
from Crew 
where UserName like N'%' + @filterText + N'%' or 
	  Name like N'%' + @filterText + N'%'

GO
/****** Object:  StoredProcedure [dbo].[SearchPAXSectors]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchPAXSectors] @filterText nvarchar(30),
							   @FromDate DateTime = null,
							   @ToDate DateTime = null
as

Select * from Sector S 
where (ISNULL(@filterText,'') = '' Or S.FlightNo Like N'%' + @filterText + N'%') and 
	  S.SectorDate >= (ISNULL(@FromDate, '01/01/1900')) And 
	  S.SectorDate <= (ISNULL(@ToDate, '01/01/2500')) and 
	  S.IsPAX = 1

GO
/****** Object:  StoredProcedure [dbo].[SearchPilot]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchPilot] @filterText nvarchar(200)  
as  
  
select *   
from Pilot   
where UserName like N'%' + @filterText + N'%' or   
   FirstName like N'%' + @filterText + N'%' or
   SecondName like N'%' + @filterText + N'%'  or
   SureName like N'%' + @filterText + N'%'

GO
/****** Object:  StoredProcedure [dbo].[SearchReports]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchReports] @filterText nvarchar(30),    
          @FromDate DateTime = null,    
          @ToDate DateTime = null    
as    
    
Select F.*,   
(select top 1 S.STD from  Sector S   
inner Join AirPort fr on S.From_AirportID = fr.AirPortID  
inner join AirPort t on S.To_AirportID = t.AirPortID  
where F.FlightID = S.FlightID  
order by S.SectorDate, S.STD   
) STD,( select top 1 fr.IATACode + ' ' + t.IATACode [Route] from  Sector S   
inner Join AirPort fr on S.From_AirportID = fr.AirPortID  
inner join AirPort t on S.To_AirportID = t.AirPortID  
where F.FlightID = S.FlightID  
order by S.SectorDate, S.STD ) [Route]  
  
from Flight F  
  
where (ISNULL(@filterText,'') = '' Or F.FlightNo Like N'%' + @filterText + N'%') and     
   FlightDate >= (ISNULL(@FromDate, '01/01/1900')) And     
   FlightDate <= (ISNULL(@ToDate, '01/01/2500'))    
   Order by FlightDate Desc, STD

GO
/****** Object:  StoredProcedure [dbo].[SearchSectorClients]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchSectorClients] @filterText nvarchar(200)
as

Select * from SectorClients
where (ISNULL(@filterText,'') = '' Or Name Like N'%' + @filterText + N'%' Or ContactName Like N'%' + @filterText + N'%')

GO
/****** Object:  StoredProcedure [dbo].[SearchSectors]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchSectors] @filterText nvarchar(30),
							   @FromDate DateTime = null,
							   @ToDate DateTime = null
as

Select * from Sector
where (ISNULL(@filterText,'') = '' Or FlightNo Like N'%' + @filterText + N'%') and 
	  SectorDate >= (ISNULL(@FromDate, '01/01/1900')) And 
	  SectorDate <= (ISNULL(@ToDate, '01/01/2500')) And 
	  (IsPAX is NULL Or IsPAX <> 1 )

GO
/****** Object:  UserDefinedFunction [dbo].[GetCrewDHDWithinRangeAsTable]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetCrewDHDWithinRangeAsTable] (@CrewID int,  
        @StartDate DateTime = null,  
        @EndDate DateTime = null)
returns @result table
(
	GrandTotalDHDHours int, 
	GrandTotalDHDMins int
)
as  
  
  Begin 
  
Declare @TotalH int,  
  @TotalMin int,  
  @CTotalH int,  
  @CTotalMin int,  
  @DayH int,   
  @DayM int,  
  @NightH int,  
  @NightM int  
  
select @DayH = sum(DayH), @DayM = sum(DayM), @NightH = sum(NightH), @NightM = sum(NightM)  
From(  
Select   
case when IsHeavyCrew = 1 then ((sum(datepart(hh,s.FlyAtDay )))*2)/3  
else sum(datepart(hh,s.FlyAtDay ))  end DayH,  
  
case when IsHeavyCrew = 1 then ((sum(datepart(MI,s.FlyAtDay )))*2)/3  
else sum(datepart(MI,s.FlyAtDay )) end DayM,  
  
case when IsHeavyCrew = 1 then ((sum(datepart(hh,s.FlyAtNight )))*2)/3  
else sum(datepart(hh,s.FlyAtNight )) end NightH,   
  
case when IsHeavyCrew = 1 then ((sum(datepart(MI,s.FlyAtNight )))*2)/3  
else sum(datepart(MI,s.FlyAtNight )) end NightM  
  
from Sector S   
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID  
Inner Join AirPort A on S.From_AirportID = A.AirPortID  
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID  
Inner Join SectorCrew SP on S.SectorID = SP.SectorID  
Inner Join Crew C on SP.CrewID = C.CrewID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where C.CrewID = @CrewID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND     
   /*  Dead head */  
   (SP.PositionID = 13 ) 
group by IsHeavyCrew  
) as A  
  
  
/* grand totals ( TBF + all times till start date + totals within start date and end date ) */  
Select @TotalH =  @DayH + @NightH  , @TotalMin = @DayM + @NightM  
Select @TotalH =  @TotalH + (@TotalMin/ 60)  
Select @TotalMin = @TotalMin - (@TotalMin/60)*60  
  
  insert @result
Select @TotalH+(@TotalMin/60)  ,      
    @TotalMin-((@TotalMin/60)*60) 
    return 
  End

GO
/****** Object:  UserDefinedFunction [dbo].[GetCrewHoursWithinRangeAsTable]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetCrewHoursWithinRangeAsTable] (@CrewID int,  
        @StartDate DateTime = null,  
        @EndDate DateTime = null)
returns @result table
(
	GrandTotalHours int, 
	GrandTotalMins int
)
as  
Begin


Declare @TotalH int,  
  @TotalMin int,  
  @CTotalH int,  
  @CTotalMin int,  
  @DayH int,   
  @DayM int,  
  @NightH int,  
  @NightM int  
  
select @DayH = sum(DayH), @DayM = sum(DayM), @NightH = sum(NightH), @NightM = sum(NightM)  
From(  
Select   
case when IsHeavyCrew = 1 then ((sum(datepart(hh,s.FlyAtDay )))*2)/3  
else sum(datepart(hh,s.FlyAtDay ))  end DayH,  
  
case when IsHeavyCrew = 1 then ((sum(datepart(MI,s.FlyAtDay )))*2)/3  
else sum(datepart(MI,s.FlyAtDay )) end DayM,  
  
case when IsHeavyCrew = 1 then ((sum(datepart(hh,s.FlyAtNight )))*2)/3  
else sum(datepart(hh,s.FlyAtNight )) end NightH,   
  
case when IsHeavyCrew = 1 then ((sum(datepart(MI,s.FlyAtNight )))*2)/3  
else sum(datepart(MI,s.FlyAtNight )) end NightM  
  
from Sector S   
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID  
Inner Join AirPort A on S.From_AirportID = A.AirPortID  
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID  
Inner Join SectorCrew SP on S.SectorID = SP.SectorID  
Inner Join Crew C on SP.CrewID = C.CrewID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where C.CrewID = @CrewID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND  
   (S.IsPAX is null or S.IsPAX <> 1 ) AND  
   /* not Dead head */  
   --((SP.PositionID <> 12 ) and  -- trainee included in crew hours 
   (SP.PositionID <> 13) 
group by IsHeavyCrew  
) as A  
  
  
/* grand totals ( TBF + all times till start date + totals within start date and end date ) */  
Select @TotalH =  @DayH + @NightH  , @TotalMin = @DayM + @NightM  
Select @TotalH =  @TotalH + (@TotalMin/ 60)  
Select @TotalMin = @TotalMin - (@TotalMin/60)*60  
  
  insert @Result
Select @TotalH+(@TotalMin/60)  , @TotalMin-((@TotalMin/60)*60)        
  Return

End

GO
/****** Object:  UserDefinedFunction [dbo].[GetPilotDHDWithinRangeAsTable]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[GetPilotDHDWithinRangeAsTable] (@PilotID int,  
        @StartDate DateTime = null,  
        @EndDate DateTime = null )
Returns @Result Table 
(
	GrandTotalDHDHours int, 
	GrandTotalDHDMins int
)
as  
Begin  
  
Declare @TotalH int,  
  @TotalMin int,  
  @CTotalH int,  
  @CTotalMin int,  
  @DayH int,   
  @DayM int,  
  @NightH int,  
  @NightM int,  
  @TotalMonthDayH int,  
  @TotalMonthDayM int,  
  @TotalMonthNightH int,  
  @TotalMonthNightM int,  
  @TotalMonthH int,  
  @TotalMonthM int,      
  @Total_TBF_H int,  
  @Total_TBF_M int  
  
select @CTotalH = max(TBF_Total_Hours) , @CTotalMin = max(TBF_Total_Mins), @DayH = sum(DayH), @DayM = sum(DayM), @NightH = sum(NightH), @NightM = sum(NightM)  
From(  
Select TBF_Total_Hours , TBF_Total_Mins,  
case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtDay )))*2)/3  
else sum(datepart(hh,s.FlyAtDay ))  end DayH,  
  
case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtDay )))*2)/3  
else sum(datepart(MI,s.FlyAtDay )) end DayM,  
  
case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtNight )))*2)/3  
else sum(datepart(hh,s.FlyAtNight )) end NightH,   
  
case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtNight )))*2)/3  
else sum(datepart(MI,s.FlyAtNight )) end NightM  
  
from Sector S  
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID  
Inner Join AirPort A on S.From_AirportID = A.AirPortID  
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID  
Inner Join SectorPilot SP on S.SectorID = SP.SectorID  
Inner Join Pilot P on SP.PilotID = P.PilotID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where P.PilotID = @PilotID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND     
     
   /* Dead head */  
   (SP.PositionID = 13 ) 
group by IsHeavy, TBF_Total_Hours , TBF_Total_Mins  
) as A  

  
/* grand totals ( totals within start date and end date ) */  
Select @TotalH = @DayH + @NightH  ,@TotalMin = @DayM + @NightM  
Select @TotalH =  @TotalH + (@TotalMin/ 60)  
Select @TotalMin = @TotalMin - (@TotalMin/60)*60  
  
  
/* Totals for current date range */  
Select @TotalMonthDayH = @DayH + (@DayM/60)  
Select @TotalMonthDayM = @DayM - (@DayM/60)*60  
  
Select @TotalMonthNightH = @NightH + (@NightM/60)  
Select @TotalMonthNightM = @NightM - (@NightM/60)*60  
  
Select @TotalMonthH = @TotalMonthDayH + @TotalMonthNightH + ((@TotalMonthDayM+@TotalMonthNightM)/60)  
Select @TotalMonthM = (@TotalMonthDayM+@TotalMonthNightM) - (((@TotalMonthDayM+@TotalMonthNightM)/60)*60)  
  
  
insert @Result  
Select  isnull(@TotalH+((@TotalMin)/60),0) GrandTotalDHDHours,  isnull(@TotalMin -(((@TotalMin)/60)*60), 0) GrandTotalDHDMin
return
End

GO
/****** Object:  UserDefinedFunction [dbo].[GetPilotHoursWithinRangeAsTable_Validation]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetPilotHoursWithinRangeAsTable_Validation] (@PilotID int,  
        @StartDate DateTime = null,  
        @EndDate DateTime = null)
returns @result table
(
	GrandTotalHours int, 
	GrandTotalMins int
)
as  
Begin
  
Declare @TotalH int,  
  @TotalMin int  
  
select  @TotalH = sum(TotalH), @TotalMin = sum(TotalM)
From(  
Select 
case when isheavy = 1 then 
	case when CAST(ChoxOff as Time) = '00:00' and CAST(ChoxOn as Time) = '00:00' then 
		((sum(case when (DateDiff(Second ,S.STD, S.STA) / 3600) < 0 then (DateDiff(Second ,S.STD, S.STA) / 3600) + 24 else (DateDiff(Second ,S.STD, S.STA) / 3600) end) + 
		sum(case when ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) < 0 then ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) + 60 else ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) end )/60 )*2)/3
	else 
		((sum(case when (DateDiff(Second ,S.ChoxOff, S.ChoxOn) / 3600) < 0 then (DateDiff(Second ,S.ChoxOff, S.ChoxOn) / 3600) + 24 else (DateDiff(Second ,S.ChoxOff, S.ChoxOn) / 3600) end) + 
		sum(case when ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) < 0 then ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) + 60 else ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) end )/60 )*2)/3
	end

else 
	case when CAST(ChoxOff as Time) = '00:00' and CAST(ChoxOn as Time) = '00:00' then 
		sum(case when (DateDiff(Second ,S.STD, S.STA) / 3600) < 0 then (DateDiff(Second ,S.STD, S.STA) / 3600) + 24 else (DateDiff(Second ,S.STD, S.STA) / 3600) end) + 
		sum(case when ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) < 0 then ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) + 60 else ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) end )/60 
	else 
		sum(case when (DateDiff(Second ,S.ChoxOff, S.ChoxOn) / 3600) < 0 then (DateDiff(Second ,S.ChoxOff, S.ChoxOn) / 3600) + 24 else (DateDiff(Second ,S.ChoxOff, S.ChoxOn) / 3600) end) + 
		sum(case when ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) < 0 then ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) + 60 else ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) end )/60 
	end
  end TotalH,  
  
case when isheavy = 1 then 
	case when CAST(ChoxOff as Time) = '00:00' and CAST(ChoxOn as Time) = '00:00' then 
		((sum(case when ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) < 0 then ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) + 60 else ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) end ) - 
		((sum(case when ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) < 0 then ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) + 60 else ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) end ))/60)*60 )*2)/3
	else 
		((sum(case when ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) < 0 then ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) + 60 else ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) end ) - 
		((sum(case when ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) < 0 then ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) + 60 else ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) end ))/60)*60 )*2)/3
	end
	
	
else 

	case when CAST(ChoxOff as Time) = '00:00' and CAST(ChoxOn as Time) = '00:00' then 
		sum(case when ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) < 0 then ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) + 60 else ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) end ) - 
		((sum(case when ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) < 0 then ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) + 60 else ((DateDiff(Second ,S.STD, S.STA ) % 3600)/60) end ))/60)*60 
	else 
		sum(case when ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) < 0 then ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) + 60 else ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) end ) - 
		((sum(case when ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) < 0 then ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) + 60 else ((DateDiff(Second ,S.ChoxOff, S.ChoxOn ) % 3600)/60) end ))/60)*60 
	end
	
 end TotalM
from Sector S  
Inner Join SectorPilot SP on S.SectorID = SP.SectorID  
Inner Join Pilot P on SP.PilotID = P.PilotID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where P.PilotID = @PilotID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND     
   (S.IsPAX is null or S.IsPAX <> 1 )  AND  
   /* not Dead head or trainee */  
   --(SP.PositionID <> 12 ) AND  
   (SP.PositionID <> 13)  
group by ChoxOff, ChoxOn, IsHeavy
) As A

  
/* grand totals ( totals within start date and end date ) */  
Select @TotalH =  @TotalH + (@TotalMin/ 60)  
Select @TotalMin = @TotalMin - (@TotalMin/60)*60  
  
insert @result
Select isnull(@TotalH+((@TotalMin)/60),0) GrandTotalHours , isnull(@TotalMin -(((@TotalMin)/60)*60),0) GrandTotalMin

return  
End

GO
/****** Object:  UserDefinedFunction [dbo].[GetPilotReportWithinRangeAsTable]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetPilotReportWithinRangeAsTable] (@PilotID int,  
        @StartDate DateTime = null,  
        @EndDate DateTime = null)
returns @result table
(
	GrandTotalHours int, 
	GrandTotalMins int
)
as  
Begin
  
Declare @TotalH int,  
  @TotalMin int,  
  @CTotalH int,  
  @CTotalMin int,  
  @DayH int,   
  @DayM int,  
  @NightH int,  
  @NightM int,  
  @TotalMonthDayH int,  
  @TotalMonthDayM int,  
  @TotalMonthNightH int,  
  @TotalMonthNightM int,  
  @TotalMonthH int,  
  @TotalMonthM int,      
  @Total_TBF_H int,  
  @Total_TBF_M int  
  
select @CTotalH = max(TBF_Total_Hours) , @CTotalMin = max(TBF_Total_Mins), @DayH = sum(DayH), @DayM = sum(DayM), @NightH = sum(NightH), @NightM = sum(NightM)  
From(  
Select TBF_Total_Hours , TBF_Total_Mins,  
case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtDay )))*2)/3  
else sum(datepart(hh,s.FlyAtDay ))  end DayH,  
  
case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtDay )))*2)/3  
else sum(datepart(MI,s.FlyAtDay )) end DayM,  
  
case when isheavy = 1 then ((sum(datepart(hh,s.FlyAtNight )))*2)/3  
else sum(datepart(hh,s.FlyAtNight )) end NightH,   
  
case when isheavy = 1 then ((sum(datepart(MI,s.FlyAtNight )))*2)/3  
else sum(datepart(MI,s.FlyAtNight )) end NightM  
  
from Sector S  
Inner Join AirPlane AP on S.AirCraft_AirPlaneID = AP.AirPlaneID  
Inner Join AirPort A on S.From_AirportID = A.AirPortID  
Inner Join AirPort A2 on S.To_AirportID = A2.AirPortID  
Inner Join SectorPilot SP on S.SectorID = SP.SectorID  
Inner Join Pilot P on SP.PilotID = P.PilotID  
Inner join Position PP on SP.PositionID = PP.PositionID  
Where P.PilotID = @PilotID and   
   S.SectorDate >= ISNULL(@StartDate, '01/01/1900') and   
   S.SectorDate <= ISNULL(@EndDate, '01/01/2500') AND     
   (S.IsPAX is null or S.IsPAX <> 1 )  AND  
   /* not Dead head or trainee */  
   --(SP.PositionID <> 12 ) AND  
   (SP.PositionID <> 13)  
group by IsHeavy, TBF_Total_Hours , TBF_Total_Mins  
) As A

  
/* grand totals ( totals within start date and end date ) */  
Select @TotalH = @DayH + @NightH  ,@TotalMin = @DayM + @NightM  
Select @TotalH =  @TotalH + (@TotalMin/ 60)  
Select @TotalMin = @TotalMin - (@TotalMin/60)*60  
  
  
/* Totals for current date range */  
Select @TotalMonthDayH = @DayH + (@DayM/60)  
Select @TotalMonthDayM = @DayM - (@DayM/60)*60  
  
Select @TotalMonthNightH = @NightH + (@NightM/60)  
Select @TotalMonthNightM = @NightM - (@NightM/60)*60  
  
Select @TotalMonthH = @TotalMonthDayH + @TotalMonthNightH + ((@TotalMonthDayM+@TotalMonthNightM)/60)  
Select @TotalMonthM = (@TotalMonthDayM+@TotalMonthNightM) - (((@TotalMonthDayM+@TotalMonthNightM)/60)*60)  
  
  
  
insert @result
Select isnull(@TotalH+((@TotalMin)/60),0) GrandTotalHours , isnull(@TotalMin -(((@TotalMin)/60)*60),0) GrandTotalMin

return  
End

GO
/****** Object:  UserDefinedFunction [dbo].[GetPilotSimulationWithinRangeAsTable]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[GetPilotSimulationWithinRangeAsTable] (@PilotID int,  
        @StartDate DateTime = null,  
        @EndDate DateTime = null)
returns @result table
(
	GrandTotalSimHours int, 
	GrandTotalSimMins int
)
as  
Begin
Declare @TotalH int,  
  @TotalMin int  
  
select  @TotalMin = sum(DiffM)
From(  
Select   
  sum(DATEDIFF(MINUTE, DateFrom,DateTo)) DiffM
from PilotTransaction PT
Inner join Pilot P on PT.PilotID = P.PilotID
Where P.PilotID = @PilotID and   
   PT.DateFrom >= ISNULL(@StartDate, '01/01/1900') and   
   PT.DateTo <= ISNULL(@EndDate, '01/01/2500') and 
   TransactionsID = 11
) as A  

  
/* grand totals ( totals within start date and end date ) */  
Select @TotalH = (@TotalMin/ 60)  
Select @TotalMin = @TotalMin - (@TotalMin/60)*60 

 insert @result
Select isnull(@TotalH,0)  ,      
    isnull(@TotalMin ,0)
    return 
End

GO
/****** Object:  Table [dbo].[AirCraftManual]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AirCraftManual](
	[ManualID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Path] [nvarchar](1000) NULL,
	[CreatedBy] [nvarchar](200) NULL,
	[createdDate] [datetime] NULL,
	[ManualCategoryID] [int] NULL,
	[IssueNumber] [nvarchar](10) NULL,
	[IssueDate] [datetime] NULL,
	[RevisionNumber] [nvarchar](10) NULL,
	[RevisionDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ManualID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AircraftManualCategory]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AircraftManualCategory](
	[ManualCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[ParentCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ManualCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[AnnouncementID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[createdDate] [datetime] NULL,
	[MainPic] [nvarchar](500) NULL,
	[Brief] [nvarchar](1000) NULL,
	[IsBulletin] [bit] NULL,
	[IsBlog] [bit] NULL,
	[UploadedFile] [nvarchar](500) NULL,
	[GroupID] [int] NULL,
 CONSTRAINT [PK__Announce__9DE445541D1C38C9] PRIMARY KEY CLUSTERED 
(
	[AnnouncementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnnouncementGroup]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnouncementGroup](
	[AnnouncementID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AnnouncementID] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_A__C93A4C980F2D40CE] PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_A__17477DE41209AD79] UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ__aspnet_A__3091033114E61A24] UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK__aspnet_P__CD67DC5866EA454A] PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__CD67DC596E8B6712] PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__3214EC0673501C2F] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_P__1788CC4C44952D46] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
 CONSTRAINT [PK__aspnet_R__8AFACE1B5006DFF2] PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
 CONSTRAINT [PK__aspnet_S__5A1E6BC1214BF109] PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_U__1788CC4D19AACF41] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__aspnet_U__AF2760AD55BFB948] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
 CONSTRAINT [PK__aspnet_W__7944C810075714DC] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Certificate]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificate](
	[CertificateID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[Path] [nvarchar](500) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CertificateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DbLog]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DbLog](
	[DbLogID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [uniqueidentifier] NULL,
	[ItemID] [int] NULL,
	[ItemType] [int] NULL,
	[LogDate] [datetime] NULL,
	[ActionType] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DbLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FromVersion]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FromVersion](
	[FromVersionID] [int] IDENTITY(1,1) NOT NULL,
	[ManualFromID] [int] NULL,
	[Title] [nvarchar](300) NULL,
	[Path] [nvarchar](300) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[IssueNumber] [nvarchar](10) NULL,
	[IssueDate] [datetime] NULL,
	[RevisionNumber] [nvarchar](10) NULL,
	[RevisionDate] [datetime] NULL,
	[Notes] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[FromVersionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Groups]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Manual]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manual](
	[ManualID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Path] [nvarchar](1000) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[createdDate] [datetime] NULL,
	[ManualCategoryID] [int] NULL,
	[IssueNumber] [nvarchar](10) NULL,
	[IssueDate] [datetime] NULL,
	[RevisionNumber] [nvarchar](10) NULL,
	[RevisionDate] [datetime] NULL,
	[IsForm] [bit] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ManualID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManualCategory]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManualCategory](
	[ManualCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[ParentCategoryID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ManualCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManualForm]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManualForm](
	[ManualFormID] [int] IDENTITY(1,1) NOT NULL,
	[ManualID] [int] NULL,
	[Name] [nvarchar](300) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ManualFormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ManualVersion]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManualVersion](
	[ManualVersionID] [int] IDENTITY(1,1) NOT NULL,
	[ManualID] [int] NULL,
	[Title] [nvarchar](300) NULL,
	[Path] [nvarchar](300) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[IssueNumber] [nvarchar](10) NULL,
	[IssueDate] [datetime] NULL,
	[RevisionNumber] [nvarchar](10) NULL,
	[RevisionDate] [datetime] NULL,
	[Notes] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ManualVersionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NotificationTypes]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotificationTypes](
	[NotificationTypeID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_NotificationTypes] PRIMARY KEY CLUSTERED 
(
	[NotificationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[ScheduleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](300) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ScheduleVersion]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScheduleVersion](
	[ScheduleVersionID] [int] IDENTITY(1,1) NOT NULL,
	[ScheduleID] [int] NULL,
	[Title] [nvarchar](300) NULL,
	[Path] [nvarchar](300) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[IssueNumber] [nvarchar](10) NULL,
	[IssueDate] [datetime] NULL,
	[RevisionNumber] [nvarchar](10) NULL,
	[RevisionDate] [datetime] NULL,
	[Notes] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ScheduleVersionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsefulLink]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsefulLink](
	[UsefulLinkID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](300) NULL,
	[Description] [nvarchar](1000) NULL,
	[CreatedBy] [uniqueidentifier] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [uniqueidentifier] NULL,
	[LastUpdatedDate] [datetime] NULL,
	[URL] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[UsefulLinkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersNofications]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersNofications](
	[UserNotificationID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [uniqueidentifier] NULL,
	[NotificationType] [int] NULL,
	[IsRead] [bit] NULL,
	[CategoryID] [int] NULL,
	[ManualID] [int] NULL,
	[FormID] [int] NULL,
	[ManualVersionID] [int] NULL,
	[FromVersionID] [int] NULL,
	[ScheduleID] [int] NULL,
	[ScheduleVersionID] [int] NULL,
 CONSTRAINT [PK_UsersNofications] PRIMARY KEY CLUSTERED 
(
	[UserNotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsersProfiles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersProfiles](
	[UserProfileID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [uniqueidentifier] NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Photo] [nvarchar](1000) NULL,
	[GroupID] [int] NULL,
 CONSTRAINT [PK_UsersProfiles] PRIMARY KEY CLUSTERED 
(
	[UserProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Applications] AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]

GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_MembershipUsers] AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]

GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Profiles] AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]

GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Roles] AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]

GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_Users] AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]

GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_UsersInRoles] AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths] AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared] AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]

GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 28/06/2015 7:26:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE VIEW [dbo].[vw_aspnet_WebPartState_User] AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Applications_Index]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications]
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Membership_index]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership]
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Paths_index]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths]
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Roles_index1]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles]
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [aspnet_Users_Index]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_Users_Index2]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 28/06/2015 7:26:50 PM ******/
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  CONSTRAINT [DF__aspnet_Ap__Appli__16CE6296]  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  CONSTRAINT [DF__aspnet_Pa__PathI__69C6B1F5]  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  CONSTRAINT [DF__aspnet_Perso__Id__753864A1]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  CONSTRAINT [DF__aspnet_Ro__RoleI__52E34C9D]  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__UserI__1C873BEC]  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__1D7B6025]  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__1E6F845E]  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[Announcement]  WITH CHECK ADD FOREIGN KEY([GroupID])
REFERENCES [dbo].[Groups] ([GroupID])
GO
ALTER TABLE [dbo].[AnnouncementGroup]  WITH CHECK ADD FOREIGN KEY([AnnouncementID])
REFERENCES [dbo].[Announcement] ([AnnouncementID])
GO
ALTER TABLE [dbo].[AnnouncementGroup]  WITH CHECK ADD FOREIGN KEY([GroupID])
REFERENCES [dbo].[Groups] ([GroupID])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pa__Appli__68D28DBC] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Paths] CHECK CONSTRAINT [FK__aspnet_Pa__Appli__68D28DBC]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__7073AF84] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__7073AF84]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__PathI__762C88DA] FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__PathI__762C88DA]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__7720AD13] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__7720AD13]
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__467D75B8] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__467D75B8]
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH NOCHECK ADD  CONSTRAINT [FK__aspnet_Ro__Appli__51EF2864] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Roles] CHECK CONSTRAINT [FK__aspnet_Ro__Appli__51EF2864]
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH NOCHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__1B9317B3] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__1B9317B3]
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH NOCHECK ADD  CONSTRAINT [FK__aspnet_Us__RoleI__589C25F3] FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__RoleI__589C25F3]
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH NOCHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__57A801BA] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__57A801BA]
GO
ALTER TABLE [dbo].[DbLog]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[FromVersion]  WITH CHECK ADD FOREIGN KEY([ManualFromID])
REFERENCES [dbo].[ManualForm] ([ManualFormID])
GO
ALTER TABLE [dbo].[Manual]  WITH CHECK ADD FOREIGN KEY([ManualCategoryID])
REFERENCES [dbo].[ManualCategory] ([ManualCategoryID])
GO
ALTER TABLE [dbo].[ManualCategory]  WITH CHECK ADD FOREIGN KEY([ParentCategoryID])
REFERENCES [dbo].[ManualCategory] ([ManualCategoryID])
GO
ALTER TABLE [dbo].[ManualCategory]  WITH CHECK ADD FOREIGN KEY([ParentCategoryID])
REFERENCES [dbo].[ManualCategory] ([ManualCategoryID])
GO
ALTER TABLE [dbo].[ManualForm]  WITH CHECK ADD FOREIGN KEY([ManualID])
REFERENCES [dbo].[Manual] ([ManualID])
GO
ALTER TABLE [dbo].[ManualVersion]  WITH CHECK ADD FOREIGN KEY([ManualID])
REFERENCES [dbo].[Manual] ([ManualID])
GO
ALTER TABLE [dbo].[ScheduleVersion]  WITH CHECK ADD FOREIGN KEY([ScheduleID])
REFERENCES [dbo].[Schedule] ([ScheduleID])
GO
USE [master]
GO
ALTER DATABASE [Intranetdb_final] SET  READ_WRITE 
GO
