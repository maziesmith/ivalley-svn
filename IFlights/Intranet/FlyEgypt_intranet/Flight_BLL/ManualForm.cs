
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using Flight_DAL;
namespace Flight_BLL
{
	public class ManualForm : _ManualForm
	{
		public ManualForm()
		{
		
		}

        public bool GetFormsByManualID(int p)
        {
            return LoadFromRawSql(@"select M.*, U.username UpdatedByName , C.username CreatedByName,
                                    (Select Top 1 path from FromVersion MV where MV.ManualFromID = M.ManualFormID Order by MV.LastUpdatedDate desc) VersionPath 
                                    from ManualForm M
                                    Left join aspnet_users U on M.UpdatedBy = U.UserID
                                    Left join aspnet_users C on M.CreatedBy = C.UserID
                                    where ManualID = {0} order by CreatedDate desc", p);            
        }


        public bool GetFormsByManualID(int ManualID, Guid UserID)
        {
            return LoadFromRawSql(@"select M.*, U.username UpdatedByName , C.username CreatedByName,
                                    (Select Top 1 path from FromVersion MV where MV.ManualFromID = M.ManualFormID Order by MV.LastUpdatedDate desc) VersionPath,                                    
                                    (select isnull(sum(case when UF.UserNotificationID is not null then 1 else 0 end),0)  from UsersNofications UF where M.ManualID = UF.ManualID and 
								                                     UF.FormID is not null and 
								                                     UF.ManualVersionID is null and 
								                                     UF.FromVersionID is null and 
								                                     (UF.IsRead is null OR UF.IsRead <> 1) and
								                                     UF.UserID = {1}) ManualFormUpdates, 
                                    (select isnull(sum(case when UFV.UserNotificationID is not null then 1 else 0 end),0)  from UsersNofications UFV where M.ManualID = UFV.ManualID and 
								                                     UFV.FormID is not null and 								 
								                                     UFV.FromVersionID is not null and 
								                                     UFV.ManualVersionID is null and
								                                     (UFV.IsRead is null OR UFV.IsRead <> 1) and
								                                     UFV.UserID = {1}) ManualFormVersionUpdates	 
                                    from ManualForm M
                                    Left join aspnet_users U on M.UpdatedBy = U.UserID
                                    Left join aspnet_users C on M.CreatedBy = C.UserID
                                    where ManualID = {0} order by CreatedDate desc", ManualID, UserID);
        }
    }
}
