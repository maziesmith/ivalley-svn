
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using DAL;
namespace BLL
{
	public class MemberMessage : _MemberMessage
	{
		public MemberMessage()
		{
		
		}

        public virtual bool GetMessagesBySenderID_Sent(int MemberID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@MemberID", SqlDbType.Int, 0), MemberID);
            return LoadFromSql("GetMessagesBySenderID_Sent", parameters);

        }

        public virtual bool GetMessagesByMemberID_Received(int MemberID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@MemberID", SqlDbType.Int, 0), MemberID);
            return LoadFromSql("GetMessagesByMemberID_Received", parameters);

        }

        public virtual bool GetMessagesByMemberID_Deleted(int MemberID)
        {
            ListDictionary parameters = new ListDictionary();
            parameters.Add(new SqlParameter("@MemberID", SqlDbType.Int, 0), MemberID);
            return LoadFromSql("GetMessagesByMemberID_Deleted", parameters);

        }
	}
}
