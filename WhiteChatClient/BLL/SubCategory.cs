
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using WhiteChat.DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;
namespace WhiteChat.BLL
{
	public class SubCategory : _SubCategory
	{
		public SubCategory()
		{
		
		}

        public virtual bool GetSubCategoryByCategoryID(int CategoryID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@CategoryID", SqlDbType.Int, 0), CategoryID);

            return LoadFromSql("GetSubCategoryByCategoryID", parameters);

        }
	}
}