﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace Chat2Connect.Admin.UserControls.Room
{
    public partial class RoomInfo : System.Web.UI.UserControl
    {
        public int RoomID
        {
            get
            {
                return Convert.ToInt32(ViewState["SelectedRoomID"]);
            }
            set
            {
                ViewState["SelectedRoomID"] = value;
                BindRoomInfo();
            }
        }

        public DataTable AdminsTable
        {
            get
            {
                if (Session["AdminsTable_Admin"] != null)
                {
                    return (DataTable)Session["AdminsTable_Admin"];
                }
                else
                    return setupAdminTable();
            }
            set
            {
                Session["AdminsTable_Admin"] = value;
            }
        }
        private void BindRoomInfo()
        {
            clearFields();
            BLL.Room room = new BLL.Room();
            room.LoadByPrimaryKey(RoomID);
            if (!room.IsColumnNull("CreatedDate"))
                uiLabelCreatedDate.Text = Helper.Date.ToString(room.CreatedDate);
            BLL.Member creator = new BLL.Member ();
            if(!room.IsColumnNull("CreatedBy"))
            { 
                creator.LoadByPrimaryKey(room.CreatedBy);
                uiLabelCreator.Text = creator.UserName;
                uiLabelName.Text = room.Name;
                loadAdminTable();
                uiGridViewAdmins.DataSource = AdminsTable;
                uiGridViewAdmins.DataBind();
            }

        }

        private void clearFields()
        {
            uiLabelCreatedDate.Text = "";
            uiLabelCreator.Text = "";            
        }


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private DataTable setupAdminTable()
        {
            DataTable adminstable = new DataTable();
            adminstable.Columns.Add("MemberID", typeof(int));
            adminstable.Columns.Add("AdminName", typeof(string));
            adminstable.Columns.Add("AdminTypeID", typeof(int));
            adminstable.Columns.Add("AdminTypeName", typeof(string));
            adminstable.AcceptChanges();
            AdminsTable = adminstable;
            return adminstable;
        }

        private void loadAdminTable()
        {
            AdminsTable.Clear();
            RoomMember roomAdmins = new RoomMember();            
            roomAdmins.GetAllAdminMembersByRoomID(RoomID);
            Helper.Enums.RoomMemberLevel adminType;
            for (int i = 0; i < roomAdmins.RowCount; i++)
            {
                adminType=Helper.EnumUtil.ParseEnum<Helper.Enums.RoomMemberLevel>(roomAdmins.RoomMemberLevelID);
                AdminsTable.Rows.Add(roomAdmins.MemberID, roomAdmins.GetColumn("MemberName"), roomAdmins.RoomMemberLevelID, Helper.StringEnum.GetStringValue(adminType));
                roomAdmins.MoveNext();
            }
        }
    }
}