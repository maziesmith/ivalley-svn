
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using ErmiaWS_DAL;
using System.Data.SqlClient;
using System.Collections.Specialized;
using System.Data;

namespace Ermia_BLL
{
	public class GeneralVideos : _GeneralVideos
	{
		public GeneralVideos()
		{
		
		}

        public virtual bool GetGeneralVideosBySubCategoryID(int SubCategoryID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@SubCategoryID", SqlDbType.Int, 0), SubCategoryID);

            return LoadFromSql("GetGeneralVideosBySubCategoryID", parameters);

        }
	}
}
