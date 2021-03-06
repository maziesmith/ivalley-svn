﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using System.Data;

namespace Chat2Connect.usercontrols
{
    public partial class RoomTypes : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBalance();
            }
        }

        private void LoadBalance()
        {
            if (BLL.Member.CurrentMember.Credit_Point > 0)
                lblPoints.Text = BLL.Member.CurrentMember.Credit_Point.ToString() + " نقطة";
            else
                lblPoints.Text = "لا يوجد رصيد";
        }

        protected void uiLinkButtonConfirm_Click(object sender, EventArgs e)
        {
            MembershipUser user = Membership.GetUser();
            if (user.PasswordQuestion == uiDropDownListQuestion.SelectedValue && BLL.Member.CurrentMember.Answer == uiTextBoxAnswer.Text.Trim())
            {
                if (!String.IsNullOrEmpty(hdnRoom.Value))
                {
                    Room room = new Room();
                    room.LoadByPrimaryKey(Convert.ToInt32(hdnRoom.Value));

                    try
                    {
                        int durationID = Convert.ToInt32(hdnDuration.Value);
                        int specID = Convert.ToInt32(hdnSpec.Value);
                        BLL.RoomTypeSpecDuration bllRoomTypeSpecDuration = new RoomTypeSpecDuration();
                        bllRoomTypeSpecDuration.Where.TypeDurationID.Value = durationID;
                        bllRoomTypeSpecDuration.Where.RoomTypeSpecID.Value = specID;
                        bllRoomTypeSpecDuration.Query.Load();
                        int points = bllRoomTypeSpecDuration.Points;
                        if (BLL.Member.CurrentMember.Credit_Point < points)
                        {
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Error3", @"$(document).ready(function () { notify('error', 'حدث خطأ . رصيدك الحالى لا يسمح لإتمام العملية.'); });", true);
                            return;
                        }

                        BLL.Member.CurrentMember.Credit_Point -= points;
                        BLL.Member.CurrentMember.Save();

                        //delete old records
                        BLL.RoomType bllRoomType = new RoomType();
                        bllRoomType.DeleteOldType(room.RoomID);

                        room.RoomType.RoomTypeSpecDurationID = bllRoomTypeSpecDuration.ID;
                        room.RoomType.CreateBy = BLL.Member.CurrentMember.MemberID;
                        room.RoomType.StartDate = DateTime.Now;
                        room.RoomType.EndDate = DateTime.Now.AddMonths(bllRoomTypeSpecDuration.TypeDuration.MonthesNumber);
                        room.RoomType.Save();

                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Success1", @"$(document).ready(function () { notify('success', 'تم ترقية الغرفة بنجاح.'); });", true);

                        BLL.MemberLog log = new BLL.MemberLog();
                        log.AddNew(BLL.Member.CurrentMemberID, new BLL.Log.ChangeRoomType() { RoomName = room.Name, NewTypeName = room.RoomType.RoomTypeSpecDuration.RoomTypeSpec.Name, NewTypeExpiryDate = room.RoomType.EndDate, Points = points }, null, room.RoomID);

                        NotifyRoom(room, bllRoomTypeSpecDuration);
                    }
                    catch (Exception ex)
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Error11", @"$(document).ready(function () { notify('error', 'حدث خطأ . من فضلك أعد المحاولة.'); });", true);
                    }
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Error4", @"$(document).ready(function () { notify('error', 'حدث خطأ . من فضلك أعد المحاولة.'); });", true);
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Error5", @"$(document).ready(function () { notify('error', 'حدث خطأ . من فضلك تأكد من السؤال والإجابة السرى.'); });", true);
                return;
            }
        }

        public static void NotifyRoom(Room room, BLL.RoomTypeSpecDuration bllRoomTypeSpecDuration)
        {
            var settings = new
            {
                CamCount = bllRoomTypeSpecDuration.RoomTypeSpec.MicCount,
                MaxMic = bllRoomTypeSpecDuration.RoomTypeSpec.MicCount,
                TypeID = bllRoomTypeSpecDuration.RoomTypeSpec.ID,
                Color = bllRoomTypeSpecDuration.RoomTypeSpec.Color
            };
            Microsoft.AspNet.SignalR.IHubContext _Rcontext = Microsoft.AspNet.SignalR.GlobalHost.ConnectionManager.GetHubContext<Chat2Connect.SRCustomHubs.ChatRoomHub>();
            _Rcontext.Clients.Group(room.RoomID.ToString()).updateRoomType(room.RoomID.ToString(), settings);
        }

    }
}