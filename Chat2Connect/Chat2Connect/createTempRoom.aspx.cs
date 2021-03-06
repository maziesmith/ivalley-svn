﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Chat2Connect.SRCustomHubs;
using Microsoft.AspNet.SignalR;

namespace Chat2Connect
{
    public partial class createTempRoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Member member = new Member();
                member.GetMemberByUserId(new Guid(Membership.GetUser().ProviderUserKey.ToString()));
                MemberFriend friends = new MemberFriend();
                friends.GetAllMemberOnlineFriends(member.MemberID);
                if (friends.RowCount > 0)
                {
                    uiCheckBoxListFriends.DataSource = friends.DefaultView;
                    uiCheckBoxListFriends.DataTextField = "UserName";
                    uiCheckBoxListFriends.DataValueField = "FriendID";
                    uiCheckBoxListFriends.DataBind();
                }
                else
                {
                    uiPanelNoFriendsFound.Visible = true;
                    uiCheckBoxListFriends.Visible = false;
                }
            }
        }

        protected void uiLinkButtonCreateTempRoom_Click(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated)
            {
                if (uiCheckBoxListFriends.Items.Cast<ListItem>().Where(i => i.Selected).Count() > 0)
                {
                    IHubContext _Ncontext = GlobalHost.ConnectionManager.GetHubContext<NotificationHub>();
                    Member member = new Member();
                    member.GetMemberByUserId(new Guid(Membership.GetUser().ProviderUserKey.ToString()));
                    Room room = new Room();
                    room.AddNew();

                    room.EnableCam = true;
                    room.EnableMic = true;
                    room.RowStatusID = 1;
                    room.CreatedDate = DateTime.Now;                    
                    room.Save();

                    room.Name = "غرفة مؤقتة - " + room.RoomID.ToString();
                    room.Save();

                    Session["TempRoomCreate"] = room.RoomID;

                    // notify friends with new temp room 

                    for (int i = 0; i < uiCheckBoxListFriends.Items.Count; i++)
                    {
                        if (uiCheckBoxListFriends.Items[i].Selected)
                        {
                            Member temp = new Member();
                            temp.LoadByPrimaryKey(Convert.ToInt32(uiCheckBoxListFriends.Items[i].Value));
                            MembershipUser u = Membership.GetUser(temp.UserID);
                            _Ncontext.Clients.Group(u.UserName).inviteToTempRoom(room.RoomID, member.Name);
                        }
                    }

                    IHubContext _Rcontext = GlobalHost.ConnectionManager.GetHubContext<ChatRoomHub>();
                    _Rcontext.Clients.Group(member.UserName).openTempRoom(room.RoomID);
                    //ClientScript.RegisterStartupScript(this.GetType(), "initTempRoom", "self.parent.location='/home.aspx';", true);
                    //Response.Redirect("home.aspx");
                }
                else
                {
 
                }
            }
        }
    }
}