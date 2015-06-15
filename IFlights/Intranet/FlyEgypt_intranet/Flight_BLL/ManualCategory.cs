
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using Flight_DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;
namespace Flight_BLL
{
	public class ManualCategory : _ManualCategory
	{
		public ManualCategory()
		{
		
		}


        public virtual bool GetSubCatByCatID(int CatID)
        {
            if (CatID != 0)
            {
                this.Where.ParentCategoryID.Value = CatID;
                this.Where.ParentCategoryID.Operator = MyGeneration.dOOdads.WhereParameter.Operand.Equal;
            }
            else
                this.Where.ParentCategoryID.Operator = MyGeneration.dOOdads.WhereParameter.Operand.IsNull;

            return this.Query.Load();
        }


        public bool GetTopMostParent(int categoryID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@ManualCategoryID", SqlDbType.Int, 0), categoryID);
            return LoadFromSql("GetTopMostParent", parameters);
        }


        public bool GetAllCatsWithNotifications(Guid userID)
        {
            return LoadFromRawSql(@"Select A.*, A.Title + ' ' + case A.NotifCount when 0 then '' else '(' + CAST( A.NotifCount as nvarchar(50)) + ')' end DisplayName, A.NotifCount from(
                                    select MC.* ,COUNT(UserNotificationID) NotifCount 
                                    from ManualCategory MC
                                    left join UsersNofications U on MC.ManualCategoryID = U.CategoryID and 
								                                    UserID = {0} AND 
								                                    (IsRead <> 1 or IsRead is null)
                                    Group by ManualCategoryID, Title, ParentCategoryID
                                    ) A", userID);
        }
	}
}
