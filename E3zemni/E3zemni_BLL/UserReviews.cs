
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using E3zmni.DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;

namespace E3zmni.BLL
{
	public class UserReviews : _UserReviews
	{
		public UserReviews()
		{
		
		}

        public virtual bool GetUserReviewsByCardID(int CardID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@CardID", SqlDbType.Int, 0), CardID);
            return LoadFromSql("GetUserReviewsByCardID", parameters);

        }
	}
}
