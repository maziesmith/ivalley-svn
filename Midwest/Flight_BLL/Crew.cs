
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using Flight_DAL;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
// We should use the namespace of Data access layer generated form business entity

namespace Flight_BLL
{
	public class Crew : _Crew
	{
		public Crew()
		{
		
		}

        public virtual bool GetCrewByUserName(string UserName)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@UserName", SqlDbType.NVarChar, 50), UserName);

            return LoadFromSql("GetCrewByUserName", parameters);

        }


        public virtual bool GetCrewSchedule(int CrewID, DateTime? StartDate, DateTime? EndDate)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@CrewID", SqlDbType.Int, 0), CrewID);
            parameters.Add(new SqlParameter("@StartDate", SqlDbType.DateTime, 0), StartDate);
            parameters.Add(new SqlParameter("@EndDate", SqlDbType.DateTime, 0), EndDate);

            return LoadFromSql("GetCrewSchedule", parameters);

        }

        public virtual bool SearchCrew(string filterText)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@filterText", SqlDbType.NVarChar, 200), filterText);

            return LoadFromSql("SearchCrew", parameters);

        }

        
	}
}
