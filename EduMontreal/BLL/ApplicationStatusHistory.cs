
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using EDU.DAL;
namespace EDU.BLL
{
	public class ApplicationStatusHistory : _ApplicationStatusHistory
	{
		public ApplicationStatusHistory()
		{
		
		}

        public virtual bool GetApplicationStatusHistorybyApplicationDataID(int AppDataID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@AppDataID", SqlDbType.Int, 0), AppDataID);
            return LoadFromSql("GetApplicationStatusHistorybyApplicationDataID", parameters);
        }

	}
}