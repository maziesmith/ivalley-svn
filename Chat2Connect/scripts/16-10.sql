

If Exists (select Name 
		   from sysobjects 
		   where name = 'Proc_AddFriends_SearchMembers' and
		        xtype = 'P')
Drop Procedure Proc_AddFriends_SearchMembers 
Go
Create Procedure Proc_AddFriends_SearchMembers @Email nvarchar(256),  
              @UserName nvarchar(256),  
              @MemberID int  
              
as  
  
select M.MemberID, U.UserName , Mem.Email, isnull(M.ProfilePic,'/images/defaultavatar.png') ProfilePic , count(MF.FriendID) FriendsCount  
from Member M   
Inner join dbo.aspnet_Users U on M.UserID = U.UserID  
Inner join dbo.aspnet_Membership Mem on U.UserID = Mem.UserID  
Left join MemberSetting MS on M.MemberID = MS.MemberID   
left Join MemberFriend MF on M.MemberID = MF.MemberID  
where M.MemberID not in (select FriendID from MemberFriend where MemberId = @MemberID) and   
   (U.UserName like @UserName + N'%'  OR   
   Mem.Email like @Email + N'%' ) and   
   (Ms.SearchMeByMail = 1 OR Ms.SearchMeByMail is null) and   
   M.MemberId <> @MemberID  
Group by M.MemberId, U.UserName , Mem.Email, M.ProfilePic     
Order by U.UserName  

Go



If Exists (select Name 
		   from sysobjects 
		   where name = 'GetAllMemberFriends' and
		        xtype = 'P')
Drop Procedure GetAllMemberFriends 
Go

 CREATE PROCEDURE GetAllMemberFriends @MemberID int     
as    
select MF.*, I.Name MemberName  , U.UserName  
from MemberFriend MF    
Inner Join Member M on MF.MemberID = M.MemberID    
Inner Join Member I on MF.FriendID = I.MemberID   
Inner join dbo.aspnet_Users U on I.UserID = U.UserID     
where M.MemberID = @MemberID 

GO



If Exists (select Name 
		   from sysobjects 
		   where name = 'GetAllMemberOnlineFriends' and
		        xtype = 'P')
Drop Procedure GetAllMemberOnlineFriends 
Go

 CREATE PROCEDURE GetAllMemberOnlineFriends @MemberID int     
as    
select MF.*, I.Name MemberName  , U.UserName  
from MemberFriend MF    
Inner Join Member M on MF.MemberID = M.MemberID    
Inner Join Member I on MF.FriendID = I.MemberID   
Inner join dbo.aspnet_Users U on I.UserID = U.UserID     
where M.MemberID = @MemberID and
      I.IsOnLine = 1