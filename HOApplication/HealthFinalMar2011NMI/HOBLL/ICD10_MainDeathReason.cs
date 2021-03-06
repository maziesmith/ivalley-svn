
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using MHO.DAL;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Specialized;
namespace MHO.BLL
{
	public class ICD10_MainDeathReason : _ICD10_MainDeathReason
	{
		public ICD10_MainDeathReason()
		{
		
		}

        public DataTable FilterICDcodes(string initText, int gender)
        {
            try
            {
                //string connection = ConfigurationSettings.AppSettings["dbConnection"];
                //SqlConnection con = new SqlConnection(connection);

                //string selectString = "select * from ICDCODE9000" + initText[0].ToString() + " where DescrENG like '" + initText + "%'";
                //SqlCommand cmd = new SqlCommand(selectString, con);
                //cmd.CommandType = CommandType.Text;
                //SqlDataAdapter adb = new SqlDataAdapter();
                //adb.SelectCommand = cmd;
                //DataTable tbl = new DataTable();
                //adb.Fill(tbl);
                //return tbl; 
                SqlDataReader searchResult = null;
                ListDictionary parm = new ListDictionary();
                parm.Add("@initText", initText);
                parm.Add("@gender", gender);
                searchResult = LoadFromSqlReader("Mho_Gui_GetICDSubcode", parm) as SqlDataReader;
                DataTable ResultTable = new DataTable();
                newAdapter da = new newAdapter();
                if (searchResult != null && searchResult.HasRows)
                {
                    da.FillFromReader(ResultTable, searchResult);
                }
                return ResultTable;
            }
            catch
            {
                return new DataTable();
            }
        }

        public string getICD9000Description(string code)
        {
            Where.WhereClauseReset();
            Query.FlushWhereParameters();
            Where.Code.Value = code.Trim();
            Query.Load();
            return Causename;
        }
	}
}
