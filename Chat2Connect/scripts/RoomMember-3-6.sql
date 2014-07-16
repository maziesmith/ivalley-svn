
ALTER TABLE RoomMember ADD ShowMessageTime bit
GO

/****** Object:  StoredProcedure [proc_RoomMemberLoadByPrimaryKey]    Script Date: 3/6/2014 11:58:36 PM ******/
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
		[HasMic],
		[HasCam],
		[CanAccessMic],
		[CanAccessCam],
		[CanWrite],
		[IsMarked],
		[AskForMic],
		[QueueOrder],
		[UserRate],
		[InRoom],
		[RoomMemberLevelID],
		[NotifyOnFriendsLogOn],
		[NotifyOnFriendsLogOff],
		[NotifyOnMicOn],
		[NotifyOnMicOff],
		[NotifyOnOpenCam],
		[NotifyOnCloseCam],
		[IsFavorite],
		[ShowMessageTime]
	FROM [RoomMember]
	WHERE
		([MemberID] = @MemberID) AND
		([RoomID] = @RoomID)

	SET @Err = @@Error

	RETURN @Err
END
GO


/****** Object:  StoredProcedure [proc_RoomMemberLoadAll]    Script Date: 3/6/2014 11:58:36 PM ******/
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
		[HasMic],
		[HasCam],
		[CanAccessMic],
		[CanAccessCam],
		[CanWrite],
		[IsMarked],
		[AskForMic],
		[QueueOrder],
		[UserRate],
		[InRoom],
		[RoomMemberLevelID],
		[NotifyOnFriendsLogOn],
		[NotifyOnFriendsLogOff],
		[NotifyOnMicOn],
		[NotifyOnMicOff],
		[NotifyOnOpenCam],
		[NotifyOnCloseCam],
		[IsFavorite],
		[ShowMessageTime]
	FROM [RoomMember]

	SET @Err = @@Error

	RETURN @Err
END
GO


/****** Object:  StoredProcedure [proc_RoomMemberUpdate]    Script Date: 3/6/2014 11:58:36 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RoomMemberUpdate]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RoomMemberUpdate];
GO

CREATE PROCEDURE [proc_RoomMemberUpdate]
(
	@MemberID int,
	@RoomID int,
	@HasMic bit = NULL,
	@HasCam bit = NULL,
	@CanAccessMic bit = NULL,
	@CanAccessCam bit = NULL,
	@CanWrite bit = NULL,
	@IsMarked bit = NULL,
	@AskForMic bit = NULL,
	@QueueOrder int = NULL,
	@UserRate smallint = NULL,
	@InRoom bit = NULL,
	@RoomMemberLevelID int = NULL,
	@NotifyOnFriendsLogOn bit = NULL,
	@NotifyOnFriendsLogOff bit = NULL,
	@NotifyOnMicOn bit = NULL,
	@NotifyOnMicOff bit = NULL,
	@NotifyOnOpenCam bit = NULL,
	@NotifyOnCloseCam bit = NULL,
	@IsFavorite bit = NULL,
	@ShowMessageTime bit = NULL
)
AS
BEGIN

	SET NOCOUNT OFF
	DECLARE @Err int

	UPDATE [RoomMember]
	SET
		[HasMic] = @HasMic,
		[HasCam] = @HasCam,
		[CanAccessMic] = @CanAccessMic,
		[CanAccessCam] = @CanAccessCam,
		[CanWrite] = @CanWrite,
		[IsMarked] = @IsMarked,
		[AskForMic] = @AskForMic,
		[QueueOrder] = @QueueOrder,
		[UserRate] = @UserRate,
		[InRoom] = @InRoom,
		[RoomMemberLevelID] = @RoomMemberLevelID,
		[NotifyOnFriendsLogOn] = @NotifyOnFriendsLogOn,
		[NotifyOnFriendsLogOff] = @NotifyOnFriendsLogOff,
		[NotifyOnMicOn] = @NotifyOnMicOn,
		[NotifyOnMicOff] = @NotifyOnMicOff,
		[NotifyOnOpenCam] = @NotifyOnOpenCam,
		[NotifyOnCloseCam] = @NotifyOnCloseCam,
		[IsFavorite] = @IsFavorite,
		[ShowMessageTime] = @ShowMessageTime
	WHERE
		[MemberID] = @MemberID
	AND	[RoomID] = @RoomID


	SET @Err = @@Error


	RETURN @Err
END
GO




/****** Object:  StoredProcedure [proc_RoomMemberInsert]    Script Date: 3/6/2014 11:58:36 PM ******/
IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[proc_RoomMemberInsert]') AND OBJECTPROPERTY(id,N'IsProcedure') = 1)
    DROP PROCEDURE [proc_RoomMemberInsert];
GO

CREATE PROCEDURE [proc_RoomMemberInsert]
(
	@MemberID int,
	@RoomID int,
	@HasMic bit = NULL,
	@HasCam bit = NULL,
	@CanAccessMic bit = NULL,
	@CanAccessCam bit = NULL,
	@CanWrite bit = NULL,
	@IsMarked bit = NULL,
	@AskForMic bit = NULL,
	@QueueOrder int = NULL,
	@UserRate smallint = NULL,
	@InRoom bit = NULL,
	@RoomMemberLevelID int = NULL,
	@NotifyOnFriendsLogOn bit = NULL,
	@NotifyOnFriendsLogOff bit = NULL,
	@NotifyOnMicOn bit = NULL,
	@NotifyOnMicOff bit = NULL,
	@NotifyOnOpenCam bit = NULL,
	@NotifyOnCloseCam bit = NULL,
	@IsFavorite bit = NULL,
	@ShowMessageTime bit = NULL
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
		[HasMic],
		[HasCam],
		[CanAccessMic],
		[CanAccessCam],
		[CanWrite],
		[IsMarked],
		[AskForMic],
		[QueueOrder],
		[UserRate],
		[InRoom],
		[RoomMemberLevelID],
		[NotifyOnFriendsLogOn],
		[NotifyOnFriendsLogOff],
		[NotifyOnMicOn],
		[NotifyOnMicOff],
		[NotifyOnOpenCam],
		[NotifyOnCloseCam],
		[IsFavorite],
		[ShowMessageTime]
	)
	VALUES
	(
		@MemberID,
		@RoomID,
		@HasMic,
		@HasCam,
		@CanAccessMic,
		@CanAccessCam,
		@CanWrite,
		@IsMarked,
		@AskForMic,
		@QueueOrder,
		@UserRate,
		@InRoom,
		@RoomMemberLevelID,
		@NotifyOnFriendsLogOn,
		@NotifyOnFriendsLogOff,
		@NotifyOnMicOn,
		@NotifyOnMicOff,
		@NotifyOnOpenCam,
		@NotifyOnCloseCam,
		@IsFavorite,
		@ShowMessageTime
	)

	SET @Err = @@Error


	RETURN @Err
END
GO


/****** Object:  StoredProcedure [proc_RoomMemberDelete]    Script Date: 3/6/2014 11:58:36 PM ******/
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
