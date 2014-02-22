
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using DAL;
namespace BLL
{
	public class RoomMember : _RoomMember
	{
		public RoomMember()
		{
		
		}

        public virtual bool GetAllAdminMembersByRoomID(int RoomID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@RoomID", SqlDbType.Int, 0), RoomID);

            return LoadFromSql("GetAllAdminMembersByRoomID", parameters);

        }

        public virtual bool GetAllMembersByRoomID(int RoomID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@RoomID", SqlDbType.Int, 0), RoomID);

            return LoadFromSql("GetAllMembersByRoomID", parameters);

        }

        public virtual bool GetMaxQueueOrderByRoomID(int RoomID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@RoomID", SqlDbType.Int, 0), RoomID);

            return LoadFromSql("GetMaxQueueOrderByRoomID", parameters);

        }
        

        public virtual bool GetAllRoomsByMemberID(int MemberID)
        {
            ListDictionary parameters = new ListDictionary();

            parameters.Add(new SqlParameter("@MemberID", SqlDbType.Int, 0), MemberID);

            return LoadFromSql("GetAllRoomsByMemberID", parameters);

        }
	}
}
