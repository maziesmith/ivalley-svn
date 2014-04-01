
/****** Object:  StoredProcedure [proc_RoomMemberLoadByPrimaryKey]    Script Date: 3/9/2014 11:33:57 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RoomMemberLoadByPrimaryKey]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RoomMemberLoadByPrimaryKey];
GO

CREATE PROCEDURE [proc_RoomMemberLoadByPrimaryKey]
(
	@MemberID int,
	@RoomID int
)
AS
BEGIN
	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[MemberID],
		[RoomID],
		[IsAdmin],
		[AdminTypeID],
		[HasMic],
		[HasCam],
		[CanAccessMic],
		[CanAccessCam],
		[CanWrite],
		[IsBanned],
		[IsBannedFor24],
		[IsBannedFor7Days],
		[IsBannedForMonth],
		[IsMarked],
		[AskForMic],
		[QueueOrder]
	FROM [RoomMember]
	WHERE
		([MemberID] = @MemberID) AND
		([RoomID] = @RoomID)

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_RoomMemberLoadByPrimaryKey Succeeded'
ELSE PRINT 'Procedure Creation: proc_RoomMemberLoadByPrimaryKey Error on Creation'
GO

/****** Object:  StoredProcedure [proc_RoomMemberLoadAll]    Script Date: 3/9/2014 11:33:57 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RoomMemberLoadAll]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RoomMemberLoadAll];
GO

CREATE PROCEDURE [proc_RoomMemberLoadAll]
AS
BEGIN

	SET NOCOUNT ON
	DECLARE @Err int

	SELECT
		[MemberID],
		[RoomID],
		[IsAdmin],
		[AdminTypeID],
		[HasMic],
		[HasCam],
		[CanAccessMic],
		[CanAccessCam],
		[CanWrite],
		[IsBanned],
		[IsBannedFor24],
		[IsBannedFor7Days],
		[IsBannedForMonth],
		[IsMarked],
		[AskForMic],
		[QueueOrder]
	FROM [RoomMember]

	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_RoomMemberLoadAll Succeeded'
ELSE PRINT 'Procedure Creation: proc_RoomMemberLoadAll Error on Creation'
GO

/****** Object:  StoredProcedure [proc_RoomMemberUpdate]    Script Date: 3/9/2014 11:33:57 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RoomMemberUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RoomMemberUpdate];
GO

CREATE PROCEDURE [proc_RoomMemberUpdate]
(
	@MemberID int,
	@RoomID int,
	@IsAdmin bit = NULL,
	@AdminTypeID int = NULL,
	@HasMic bit = NULL,
	@HasCam bit = NULL,
	@CanAccessMic bit = NULL,
	@CanAccessCam bit = NULL,
	@CanWrite bit = NULL,
	@IsBanned bit = NULL,
	@IsBannedFor24 bit = NULL,
	@IsBannedFor7Days bit = NULL,
	@IsBannedForMonth bit = NULL,
	@IsMarked bit = NULL,
	@AskForMic bit = NULL,
	@QueueOrder int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [RoomMember]
	SET
		[IsAdmin] = @IsAdmin,
		[AdminTypeID] = @AdminTypeID,
		[HasMic] = @HasMic,
		[HasCam] = @HasCam,
		[CanAccessMic] = @CanAccessMic,
		[CanAccessCam] = @CanAccessCam,
		[CanWrite] = @CanWrite,
		[IsBanned] = @IsBanned,
		[IsBannedFor24] = @IsBannedFor24,
		[IsBannedFor7Days] = @IsBannedFor7Days,
		[IsBannedForMonth] = @IsBannedForMonth,
		[IsMarked] = @IsMarked,
		[AskForMic] = @AskForMic,
		[QueueOrder] = @QueueOrder
	WHERE
		[MemberID] = @MemberID
	AND	[RoomID] = @RoomID


	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_RoomMemberUpdate Succeeded'
ELSE PRINT 'Procedure Creation: proc_RoomMemberUpdate Error on Creation'
GO




/****** Object:  StoredProcedure [proc_RoomMemberInsert]    Script Date: 3/9/2014 11:33:57 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RoomMemberInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RoomMemberInsert];
GO

CREATE PROCEDURE [proc_RoomMemberInsert]
(
	@MemberID int,
	@RoomID int,
	@IsAdmin bit = NULL,
	@AdminTypeID int = NULL,
	@HasMic bit = NULL,
	@HasCam bit = NULL,
	@CanAccessMic bit = NULL,
	@CanAccessCam bit = NULL,
	@CanWrite bit = NULL,
	@IsBanned bit = NULL,
	@IsBannedFor24 bit = NULL,
	@IsBannedFor7Days bit = NULL,
	@IsBannedForMonth bit = NULL,
	@IsMarked bit = NULL,
	@AskForMic bit = NULL,
	@QueueOrder int = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	INSERT
	INTO [RoomMember]
	(
		[MemberID],
		[RoomID],
		[IsAdmin],
		[AdminTypeID],
		[HasMic],
		[HasCam],
		[CanAccessMic],
		[CanAccessCam],
		[CanWrite],
		[IsBanned],
		[IsBannedFor24],
		[IsBannedFor7Days],
		[IsBannedForMonth],
		[IsMarked],
		[AskForMic],
		[QueueOrder]
	)
	VALUES
	(
		@MemberID,
		@RoomID,
		@IsAdmin,
		@AdminTypeID,
		@HasMic,
		@HasCam,
		@CanAccessMic,
		@CanAccessCam,
		@CanWrite,
		@IsBanned,
		@IsBannedFor24,
		@IsBannedFor7Days,
		@IsBannedForMonth,
		@IsMarked,
		@AskForMic,
		@QueueOrder
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_RoomMemberInsert Succeeded'
ELSE PRINT 'Procedure Creation: proc_RoomMemberInsert Error on Creation'
GO

/****** Object:  StoredProcedure [proc_RoomMemberDelete]    Script Date: 3/9/2014 11:33:57 AM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RoomMemberDelete]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RoomMemberDelete];
GO

CREATE PROCEDURE [proc_RoomMemberDelete]
(
	@MemberID int,
	@RoomID int
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	DELETE
	FROM [RoomMember]
	WHERE
		[MemberID] = @MemberID AND
		[RoomID] = @RoomID
	SET @Err = @@Error

	RETURN @Err
END
GO


-- Display the status of Proc creation
IF (@@Error = 0) PRINT 'Procedure Creation: proc_RoomMemberDelete Succeeded'
ELSE PRINT 'Procedure Creation: proc_RoomMemberDelete Error on Creation'
GO