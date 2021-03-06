
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using Flight_DAL;// We should use the namespace of Data access layer generated form business entity
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;

namespace Flight_BLL
{
	public class Sector : _Sector
	{
		public Sector()
		{
		
		}

        public virtual bool SearchSectors(string filterText,
              DateTime FromDate,
              DateTime ToDate)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@filterText", SqlDbType.NVarChar, 30), filterText);
            parameters.Add(new SqlParameter("@FromDate", SqlDbType.DateTime, 0), FromDate);
            parameters.Add(new SqlParameter("@ToDate", SqlDbType.DateTime, 0), ToDate);

            return LoadFromSql("SearchSectors", parameters);

        }


        public virtual bool SearchPAXSectors(string filterText,
              DateTime FromDate,
              DateTime ToDate)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@filterText", SqlDbType.NVarChar, 30), filterText);
            parameters.Add(new SqlParameter("@FromDate", SqlDbType.DateTime, 0), FromDate);
            parameters.Add(new SqlParameter("@ToDate", SqlDbType.DateTime, 0), ToDate);

            return LoadFromSql("SearchPAXSectors", parameters);

        }

        public virtual bool GetSectorsByFlightID(int FlightID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@ReportID", SqlDbType.Int, 0), FlightID);

            return LoadFromSql("GetSectorsByReportID", parameters);

        }

        public virtual bool GetPAXSectors()
        {
            ListDictionary parameters = new ListDictionary();
            return LoadFromSql("GetPAXSectors", parameters);

        }
	}
}
