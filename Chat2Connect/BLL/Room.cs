
// Generated by MyGeneration Version # (1.3.0.3)

using System;
using System.Collections.Specialized;
using System.Data;
using System.Data.SqlClient;
using DAL;
namespace BLL
{
    public class Room : _Room
    {
        public Room()
        {

        }

        public virtual bool GetRoomsByCreatorID(int CreatedBy)
        {
            return LoadFromRawSql(@"select R.RoomID,R.Name,[OpenCams] = (select COUNT(MemberID) From RoomMember Where RoomMember.RoomID = R.RoomID And RoomMember.HasCam = 1) , C.Name CategoryName , SC.Name SubCategoryName
	                                    ,[ExistingMembersCount]= (SELECT COUNT(MemberID) FROM RoomMember WHERE RoomMember.RoomID=R.RoomID AND RoomMember.InRoom=1)
	                                    ,[RoomRate]=isnull((select floor(sum(isnull(UserRate,0)) / count(MemberID)) from RoomMember where RoomID = R.RoomID),0)
                                        ,[RoomTypeSpecID]=ISNULL(RoomTypeSpec.ID,{2})
                                        ,RoomTypeSpec.Color
                                    from Room R
                                    LEFT JOIN RoomType on RoomType.RoomID=R.RoomID
                                    LEFT Join RoomTypeSpecDuration ON RoomTypeSpecDuration.ID=RoomType.RoomTypeSpecDurationID
                                    LEFT JOIN RoomTypeSpec ON RoomTypeSpec.ID=RoomTypeSpecDuration.RoomTypeSpecID
                                    Left JOIN Category C ON R.CategoryID = C.CategoryID
                                    Left JOIN SubCategory SC ON R.SubCategoryID = SC.SubCategoryID
                                    where R.CreatedBy = {0} AND ISNULL(R.RowStatusID,{1})={1} 
                                    order by ISNULL(RoomTypeSpec.OrderInRoomList,10000) ASC , R.Name Asc", CreatedBy, (int)Helper.Enums.RowStatus.Enabled,(int)Helper.Enums.TypeSpec.Free);

        }

        public virtual bool GetPremiumRooms()
        {
            return this.LoadFromRawSql(@"Select  R.RoomID,R.Name,[OpenCams] = (select COUNT(MemberID) From RoomMember Where RoomMember.RoomID = R.RoomID And RoomMember.HasCam = 1)
                                        ,[ExistingMembersCount]= (SELECT COUNT(MemberID) FROM RoomMember WHERE RoomMember.RoomID=R.RoomID AND RoomMember.InRoom=1)
                                        ,[RoomRate]=(select floor(sum(isnull(UserRate,0)) / count(MemberID)) from RoomMember where RoomID = R.RoomID)
                                        ,RoomTypeSpec.Color,RoomTypeSpecDuration.RoomTypeSpecID
                                        from Room R
                                        INNER JOIN RoomType ON RoomType.RoomID=R.RoomID
                                        INNER JOIN RoomTypeSpecDuration ON RoomType.RoomTypeSpecDurationID=RoomTypeSpecDuration.ID
                                        INNER JOIN RoomTypeSpec ON RoomTypeSpec.ID=RoomTypeSpecDuration.RoomTypeSpecID
                                        WHERE RoomTypeSpec.ID={0} AND ISNULL(R.RowStatusID,{1})={1}
                                        ORDER BY R.Name ASC", (int)Helper.Enums.TypeSpec.VIP, (int)Helper.Enums.RowStatus.Enabled);
        }

        public virtual bool GetRoomsByCategoryID(int CategoryID)
        {
            return LoadFromRawSql(@"select  R.RoomID,R.Name,[OpenCams] = (select COUNT(MemberID) From RoomMember Where RoomMember.RoomID = R.RoomID And RoomMember.HasCam = 1)
	                                ,[ExistingMembersCount]= (SELECT COUNT(MemberID) FROM RoomMember WHERE RoomMember.RoomID=R.RoomID AND RoomMember.InRoom=1)
	                                ,[RoomRate]=(select floor(sum(isnull(UserRate,0)) / count(MemberID)) from RoomMember where RoomID = R.RoomID)
                                    ,RoomTypeSpec.Color,[RoomTypeSpecID]=ISNULL(RoomTypeSpec.ID,{2})
                                    from Room R
                                    LEFT JOIN RoomType on RoomType.RoomID=R.RoomID
                                    LEFT Join RoomTypeSpecDuration ON RoomTypeSpecDuration.ID=RoomType.RoomTypeSpecDurationID
                                    LEFT JOIN RoomTypeSpec ON RoomTypeSpec.ID=RoomTypeSpecDuration.RoomTypeSpecID
                                    Left JOIN Category C ON R.CategoryID = C.CategoryID
                                    where R.CategoryID = {0} AND ISNULL(R.RowStatusID,{1})={1}
                                    GROUP BY R.RoomID,R.Name,R.OpenCams,RoomTypeSpec.OrderInRoomList,RoomTypeSpec.Color,RoomTypeSpec.ID
                                    order by ISNULL(RoomTypeSpec.OrderInRoomList,10000) ASC , R.Name Asc", CategoryID, (int)Helper.Enums.RowStatus.Enabled,(int)Helper.Enums.TypeSpec.Free);

        }

        public virtual bool GetRoomsBySubCategoryID(int SubCategoryID)
        {
            return LoadFromRawSql(@"select R.RoomID,R.Name,[OpenCams] = (select COUNT(MemberID) From RoomMember Where RoomMember.RoomID = R.RoomID And RoomMember.HasCam = 1)
                                    ,[ExistingMembersCount]= (SELECT COUNT(MemberID) FROM RoomMember WHERE RoomMember.RoomID=R.RoomID AND RoomMember.InRoom=1)
                                    ,[RoomRate]=(select floor(sum(isnull(UserRate,0)) / count(MemberID)) from RoomMember where RoomID = R.RoomID)
                                    ,RoomTypeSpec.Color,[RoomTypeSpecID]=ISNULL(RoomTypeSpec.ID,{2})
                                    from Room R
                                    Inner JOIN Category C ON R.CategoryID = C.CategoryID
                                    Inner Join SubCategory SC on C.CategoryID = SC.CategoryID
                                    LEFT JOIN RoomType RT on RT.RoomID=R.RoomID
                                    LEFT JOIN RoomTypeSpecDuration  ON RT.RoomTypeSpecDurationID=RoomTypeSpecDuration.ID
                                    LEFT JOIN RoomTypeSpec ON RoomTypeSpec.ID=RoomTypeSpecDuration.RoomTypeSpecID
                                    where R.SubCategoryID = {0}  AND ISNULL(R.RowStatusID,{1})={1}
                                    GROUP BY R.RoomID,R.Name,R.OpenCams,RoomTypeSpec.OrderInRoomList,RoomTypeSpec.Color,RoomTypeSpec.ID
                                    order by ISNULL(RoomTypeSpec.OrderInRoomList,10000) ASC , R.Name Asc", SubCategoryID, (int)Helper.Enums.RowStatus.Enabled,(int)Helper.Enums.TypeSpec.Free);

        }

        public virtual bool GetFavoriteByMemberID(int memberID)
        {
            return LoadFromRawSql(@"select R.RoomID,R.Name,[OpenCams] = (select COUNT(MemberID) From RoomMember Where RoomMember.RoomID = R.RoomID And RoomMember.HasCam = 1)
                                    ,[ExistingMembersCount]= (SELECT COUNT(MemberID) FROM RoomMember WHERE RoomMember.RoomID=R.RoomID AND RoomMember.InRoom=1)
                                    ,[RoomRate]=(select floor(sum(isnull(UserRate,0)) / count(MemberID)) from RoomMember where RoomID = R.RoomID)
                                    ,RoomTypeSpec.Color,[RoomTypeSpecID]=ISNULL(RoomTypeSpecDuration.RoomTypeSpecID,{2})
                                    from Room R
                                    LEFT JOIN RoomType on RoomType.RoomID=R.RoomID
                                    LEFT Join RoomTypeSpecDuration ON RoomTypeSpecDuration.ID=RoomType.RoomTypeSpecDurationID
                                    LEFT JOIN RoomTypeSpec ON RoomTypeSpec.ID=RoomTypeSpecDuration.RoomTypeSpecID
                                    INNER JOIN RoomMember RM ON RM.RoomID=R.RoomID
                                    where RM.IsFavorite=1 AND RM.MemberID = {0} AND ISNULL(R.RowStatusID,{1})={1}
                                    order by ISNULL(RoomTypeSpec.OrderInRoomList,10000) ASC , R.Name Asc", memberID, (int)Helper.Enums.RowStatus.Enabled,(int)Helper.Enums.TypeSpec.Free);

        }

        public virtual bool SearchRooms(string filterText)
        {
            return LoadFromRawSql(@"select R.RoomID,R.Name,[OpenCams] = (select COUNT(MemberID) From RoomMember Where RoomMember.RoomID = R.RoomID And RoomMember.HasCam = 1)
                                    ,[ExistingMembersCount]= (SELECT COUNT(MemberID) FROM RoomMember WHERE RoomMember.RoomID=R.RoomID AND RoomMember.InRoom=1)
                                    ,[RoomRate]=(select floor(sum(isnull(UserRate,0)) / count(MemberID)) from RoomMember where RoomID = R.RoomID)
                                    ,RoomTypeSpec.Color,[RoomTypeSpecID]=ISNULL(RoomTypeSpecDuration.RoomTypeSpecID,{2})
                                    from Room R
                                    LEFT JOIN RoomType on RoomType.RoomID=R.RoomID
                                    LEFT Join RoomTypeSpecDuration ON RoomTypeSpecDuration.ID=RoomType.RoomTypeSpecDurationID
                                    LEFT JOIN RoomTypeSpec ON RoomTypeSpec.ID=RoomTypeSpecDuration.RoomTypeSpecID                                    
                                    where ISNULL(R.RowStatusID,{0})={0} And R.Name like N'%' + {1} + N'%' And R.CreatedBy is not null
                                    order by ISNULL(RoomTypeSpec.OrderInRoomList,10000) ASC , R.Name Asc", (int)Helper.Enums.RowStatus.Enabled, filterText,(int)Helper.Enums.TypeSpec.Free);

        }
        public bool SearchRooms(string filterText,int? createdByID)
        {
            string sql = @"SELECT Room.* FROM Room WHERE RowStatusID={0} AND Name LIKE N'%' + {1} + N'%'";
            if (createdByID.HasValue)
                sql += " AND CreatedBy=" + createdByID.Value.ToString();
            return LoadFromRawSql(sql,
                (int)Helper.Enums.RowStatus.Enabled,filterText);
        }

        #region override properties reading
        public override bool EnableCam
        {
            get
            {
                if (this.IsColumnNull(Room.ColumnNames.EnableCam))
                    return false;
                return base.EnableCam;
            }
            set
            {
                base.EnableCam = value;
            }
        }
        public override bool EnableMic
        {
            get
            {
                if (this.IsColumnNull(Room.ColumnNames.EnableMic))
                    return false;
                return base.EnableMic;
            }
            set
            {
                base.EnableMic = value;
            }
        }
        public override bool EnableMicForAdminsOnly
        {
            get
            {
                if (IsColumnNull(ColumnNames.EnableMicForAdminsOnly))
                    return false;
                return base.EnableMicForAdminsOnly;
            }
            set
            {
                base.EnableMicForAdminsOnly = value;
            }
        }
        public override bool MarkOnLoginWithoutWrite
        {
            get
            {
                if (IsColumnNull(ColumnNames.MarkOnLoginWithoutWrite))
                    return false;
                return base.MarkOnLoginWithoutWrite;
            }
            set
            {
                base.MarkOnLoginWithoutWrite = value;
            }
        }
        public override bool MarkOnLoginWithWrite
        {
            get
            {
                if (IsColumnNull(ColumnNames.MarkOnLoginWithWrite))
                    return false;
                return base.MarkOnLoginWithWrite;
            }
            set
            {
                base.MarkOnLoginWithWrite = value;
            }
        }

        public override short OpenCams
        {
            get
            {
                if (IsColumnNull(ColumnNames.OpenCams))
                    return 0;
                return base.OpenCams;
            }
            set
            {
                base.OpenCams = value;
            }
        }

        #endregion
        private Member _createdByMember;
        public Member CreatedByMember
        {
            get
            {
                if (_createdByMember == null)
                {
                    _createdByMember = new Member();
                    _createdByMember.LoadByPrimaryKey(this.CreatedBy);
                }
                return _createdByMember;
            }
        }

        private RoomType _RoomType;
        public RoomType RoomType
        {
            get
            {
                if (_RoomType == null)
                {
                    _RoomType = new RoomType();
                    _RoomType.LoadByRoomID(this.RoomID);
                }
                if (_RoomType.RoomID != this.RoomID)
                {
                    _RoomType.LoadByRoomID(this.RoomID);
                }
                return _RoomType;
            }
        }


        public bool Search(DateTime? dateFrom, DateTime? dateTo, int? status)
        {
            ListDictionary parameters = new ListDictionary();
            if (dateFrom.HasValue)
                parameters.Add(new SqlParameter("@CreatedDateFrom", SqlDbType.DateTime), dateFrom);
            if (dateTo.HasValue)
                parameters.Add(new SqlParameter("@CreatedDateTo", SqlDbType.DateTime), dateTo);
            if (status.HasValue)
                parameters.Add(new SqlParameter("@RoomStatus", SqlDbType.TinyInt), status);

            return base.LoadFromSql("[" + this.SchemaStoredProcedure + "proc_RoomSearch]", parameters);
        }

        public bool LoadByName(string roomName)
        {
            Where.Name.Value = roomName;
            return Query.Load();
        }
    }
}
