
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using Combo.DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;
namespace Combo.BLL
{
	public class ComboUser : _ComboUser
	{
        
		public ComboUser()
		{
		
		}

        public virtual bool GetUserByUserNameAndPassword(string UserName, string Password)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@UserName", SqlDbType.NVarChar, 200), UserName);
            parameters.Add(new SqlParameter("@Password", SqlDbType.NVarChar, 200), Password);
            return LoadFromSql("GetUserByUserNameAndPassword", parameters);

        }

        public virtual bool GetUserByUserName(string UserName)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@UserName", SqlDbType.NVarChar, 200), UserName);            
            return LoadFromSql("GetUserByUserName", parameters);

        }

        public virtual bool GetUserStatisticsByUserId(int UserId)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@UserId", SqlDbType.Int, 0), UserId);
            return LoadFromSql("GetUserStatisticsByUserId", parameters);

        }

        public virtual bool GetUserByUserId(int id, int requester)
        {
            return LoadFromRawSql(@"Select CU.*, A.Path ProfilePic, A2.Path CoverPic, Co.IconPath CountryFlagPath,
                                    case F.ComboUserID when {0} then 'true' 
                                                       when {1} then 'true' 
                                                       else 'false' end IsFriend, 
                                                       case  when (PF.ComboFollowerID = {1} and (PF.IsRequestApproved = 1 Or PF.IsRequestApproved is null))  then 'true' else 'false' end IsFollowing, 
                                                       case when (PF2.ComboFollowerID = {0} and (PF2.IsRequestApproved = 1 Or PF2.IsRequestApproved is null)) then 'true' else 'false' end IsFollower,
                                                       case when (PF.ComboFollowerID = {1} and PF.IsRequestApproved <> 1 ) then 'true' else 'false' end IsFollowingRequestSent,
                                                       case when (PF2.ComboFollowerID = {0} and PF2.IsRequestApproved <> 1 ) then 'true' else 'false' end IsFollowerRequestSent,
                                                       case F2.ComboUserID when {0} then 2 
                                                                           when {1} then 1 
                                                       else 0 end IsFriendRequestSent ,
                                                       case BU.ComboUserID when {1} then 'true' else 'false' end IsBlocked
                                from ComboUser CU                                                              
                                Left join Attachment A on CU.ProfileImgID = A.AttachmentID
                                Left join Attachment A2 on CU.CoverImgID = A2.AttachmentID
                                Left Join Country Co on CU.CountryID = Co.CountryID
                                Left Join ComboUserFriend F on (CU.ComboUserID = F.ComboUserID and F.ComboFriendID = {1} and F.ComboUserID = {0} and F.RequestApproved = 1)
                                                             Or (CU.ComboUserID = F.ComboFriendID and F.ComboFriendID = {0} and F.ComboUserID = {1} and F.RequestApproved = 1)
                                left join ProfileFollower PF on PF.ComboUserID = {0} and PF.ComboFollowerID = {1}  																		
                                left join ProfileFollower PF2 on PF2.ComboUserID = {1} and PF2.ComboFollowerID = {0}  									
                                Left Join ComboUserFriend F2 on (CU.ComboUserID = F2.ComboUserID and F2.ComboFriendID = {1} and F2.ComboUserID = {0} )
                                                             Or (CU.ComboUserID = F2.ComboFriendID and F2.ComboFriendID = {0} and F2.ComboUserID = {1} )                                  																		
                                left join BlockedUser BU on BU.ComboUserID = {1} and BU.BlockedUserID = {0}
                                where CU.combouserid = {0}", id, requester);

        }

        public virtual bool GetUserByUserId(int id)
        {
            return LoadFromRawSql(@"Select CU.*, A.Path ProfilePic  , Co.IconPath CountryFlagPath                                  
                                    from ComboUser CU                                                              
                                    Left join Attachment A on CU.ProfileImgID = A.AttachmentID 
                                    Left Join Country Co on CU.CountryID = Co.CountryID                                   
                                    where CU.combouserid = {0}", id);

        }


        public virtual bool GetUserByPasscode(string passcode)
        {
            return LoadFromRawSql(@"Select CU.*, A.Path ProfilePic                                    
                                    from ComboUser CU                                                              
                                    Left join Attachment A on CU.ProfileImgID = A.AttachmentID                                    
                                    where CU.PassResetCode = {0}", passcode);

        }
        
	}
}
