
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using ErmiaWS_DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;

namespace Ermia_BLL
{
	public class Readings : _Readings
	{
		public Readings()
		{
		
		}

        public virtual bool GetReadingsByTypeID(int TypeID)
        {
            ListDictionary parameters = new ListDictionary();
            
            parameters.Add(new SqlParameter("@TypeID", SqlDbType.Int, 0), TypeID);

            return LoadFromSql("GetReadingsByTypeID", parameters);

        }
	}
}
