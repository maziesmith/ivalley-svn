
If Exists (select Name 
		   from sysobjects 
		   where name = 'GetAllMembersByRoomID' and
		        xtype = 'P')
Drop Procedure GetAllMembersByRoomID
Go
Create Procedure GetAllMembersByRoomID @RoomID int
as

select RM.* , M.*
from RoomMember RM
Inner Join Member M on RM.MemberId = M.MemberID
where RM.RoomID = @RoomID 
Go



If Exists (select Name 
		   from sysobjects 
		   where name = 'GetAllMembersByRoomIDNoQueue' and
		        xtype = 'P')
Drop Procedure GetAllMembersByRoomIDNoQueue
Go
Create Procedure GetAllMembersByRoomIDNoQueue @RoomID int
as

select RM.* , M.*
from RoomMember RM
Inner Join Member M on RM.MemberId = M.MemberID
where RM.RoomID = @RoomID And 
	  RM.QueueOrder is null and 
	  M.IsOnline = 1
Go

If Exists (select Name 
		   from sysobjects 
		   where name = 'GetAllMembersByRoomIDQueue' and
		        xtype = 'P')
Drop Procedure GetAllMembersByRoomIDQueue
Go
Create Procedure GetAllMembersByRoomIDQueue @RoomID int
as

select RM.* , M.*
from RoomMember RM
Inner Join Member M on RM.MemberId = M.MemberID
where RM.RoomID = @RoomID And 
	  RM.QueueOrder is not null and 
	  M.IsOnline = 1
order by RM.QueueOrder	  
Go


If Exists (select Name 
		   from sysobjects 
		   where name = 'GetChatRoomsByCategoryID' and
		        xtype = 'P')
Drop Procedure GetChatRoomsByCategoryID
Go
Create Procedure GetChatRoomsByCategoryID @CategoryID int
as

select R.* , count(RM.MemberID) MemberCount
from Room R
Inner JOIN Category C ON R.CategoryID = C.CategoryID
Left Join RoomMember RM on RM.RoomID = R.RoomID
Left join Member M on M.MemberID = RM.MemberID
where R.CategoryID = @CategoryID /*and 
	  M.IsOnline = 1*/
Group By  R.RoomID,  R.CategoryID,  R.SubCategoryID,  R.Name,  R.IconPath,  R.RoomTypeID,  R.CreatedDate,  R.WelcomeText,  R.RoomPassword,  R.RoomPasswordenabled,  R.EnableCam,  R.EnableMic,  R.EnableMicForAdminsOnly,  R.MarkOnLoginWithWrite,  R.MarkOnLoginWithoutWrite,  R.CreatedBy,  R.EnableOneMic,  R.EnableTwoMic,  R.EnableThreeMic,  R.RoomAdminPassword, R.RowStatusID
order by R.RoomTypeID Desc , R.Name Asc
Go



If Exists (select Name 
		   from sysobjects 
		   where name = 'GetChatRoomsBySubCategoryID' and
		        xtype = 'P')
Drop Procedure GetChatRoomsBySubCategoryID
Go
Create Procedure GetChatRoomsBySubCategoryID @SubCategoryID int
as

select R.* , count(RM.MemberID) MemberCount
from Room R
Inner JOIN Category C ON R.CategoryID = C.CategoryID
Inner Join SubCategory SC on C.CategoryID = SC.CategoryID
Left Join RoomMember RM on RM.RoomID = R.RoomID
Left join Member M on M.MemberID = RM.MemberID
where R.SubCategoryID = @SubCategoryID /*and 
	  M.IsOnline = 1*/
Group By  R.RoomID,  R.CategoryID,  R.SubCategoryID,  R.Name,  R.IconPath,  R.RoomTypeID,  R.CreatedDate,  R.WelcomeText,  R.RoomPassword,  R.RoomPasswordenabled,  R.EnableCam,  R.EnableMic,  R.EnableMicForAdminsOnly,  R.MarkOnLoginWithWrite,  R.MarkOnLoginWithoutWrite,  R.CreatedBy,  R.EnableOneMic,  R.EnableTwoMic,  R.EnableThreeMic,  R.RoomAdminPassword, R.RowStatusID
order by R.RoomTypeID Desc , R.Name Asc
Go

Alter table RoomMember
Add UserRate smallint

Alter table Room
Add OpenCams smallint


If Exists (select Name 
		   from sysobjects 
		   where name = 'GetRoomRateByRoomID' and
		        xtype = 'P')
Drop Procedure GetRoomRateByRoomID
Go
Create Procedure GetRoomRateByRoomID @RoomID int
as

select floor(sum(isnull(UserRate,0)) / count(MemberID)) Rate
from RoomMember 
where RoomID = @RoomID
Go


If Exists (select Name 
		   from sysobjects 
		   where name = 'GetMemberFriendsByStatus' and
		        xtype = 'P')
Drop Procedure GetMemberFriendsByStatus
Go
Create Procedure GetMemberFriendsByStatus @MemberID int ,
										  @Status bit
as
If (@Status = 1)
begin
select F.*, asp.UserName
from MemberFriend MF
Inner Join Member M on MF.MemberID = M.MemberID 
Inner Join Member F on MF.FriendID = F.MemberID 
Inner Join aspnet_users asp on asp.UserID = F.UserID
where M.MemberID = @MemberID and 
	  F.IsOnline = @Status
End
else 
begin 
select F.*, asp.UserName
from MemberFriend MF
Inner Join Member M on MF.MemberID = M.MemberID 
Inner Join Member F on MF.FriendID = F.MemberID 
Inner Join aspnet_users asp on asp.UserID = F.UserID
where M.MemberID = @MemberID and 
	  (F.IsOnline = @Status or F.Isonline is null or F.Isonline = 0 )
end 
Go