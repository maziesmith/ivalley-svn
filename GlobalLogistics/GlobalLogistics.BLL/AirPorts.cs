
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using GlobalLogistics.DAL;
using System.Collections.Specialized;
using System.Data.SqlClient;
using System.Data;

namespace GlobalLogistics.BLL
{
	public class AirPorts : _AirPorts
	{
		public AirPorts()
		{
		
		}

        public virtual bool SearchAirPorts(string filterText)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@filterText", SqlDbType.NVarChar, 200), filterText);

            return LoadFromSql("SearchAirPorts", parameters);

        }


        public virtual bool GetAirPortByName(string Name)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar, 200), Name);

            return LoadFromSql("GetAirPortByName", parameters);

        }


        public virtual bool GetAirPortByCode(string Name)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@Name", SqlDbType.NVarChar, 200), Name);

            return LoadFromSql("GetAirPortByCode", parameters);

        }
	}
}
