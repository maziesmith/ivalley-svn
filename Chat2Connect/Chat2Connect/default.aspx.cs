﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Chat2Connect.SRCustomHubs;
using Microsoft.AspNet.SignalR;

namespace Chat2Connect
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.IsAuthenticated)
                Response.Redirect("home.aspx");

            if (!IsPostBack)
            {
                SiteSettings settings = new SiteSettings();
                settings.LoadByPrimaryKey(1); //fb
                uiHyperLinkFB.NavigateUrl = settings.URL;

                settings.LoadByPrimaryKey(2); //twitter
                uiHyperLinkTwitter.NavigateUrl = settings.URL;

                settings.LoadByPrimaryKey(3); //youtube
                uiHyperLinkYoutube.NavigateUrl = settings.URL;

                settings.LoadByPrimaryKey(4); //google
                uiHyperLinkGp.NavigateUrl = settings.URL;
            }
        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            bool signout = false;

            MembershipUser user = Membership.GetUser(Login1.UserName);
            Member member = new Member();
            member.GetMemberByUserId(new Guid(user.ProviderUserKey.ToString()));
            if (member.RowStatusID != (int)Helper.Enums.RowStatus.Enabled)
            {
                signout = true;
            }
            else
            {
                member.IsOnLine = true;
                CheckBox cb = (CheckBox)Login1.FindControl("uiCheckBoxInvisible");
                if (cb.Checked)
                    member.Status = (int)Helper.Enums.MemberStatus.Offline;
                member.Save();
                Session[SessionManager.loggedInMemberID] = member.s_MemberID;
                Response.Redirect("home.aspx");
            }
            if (signout)
            {
                FormsAuthentication.SignOut();
                ClientScript.RegisterStartupScript(this.GetType(), "notEnabled", "$(document).ready(function (){ $('#NotEnabled').modal('show'); });", true);
            }
        }

        protected void uiButtonRegister_Click(object sender, EventArgs e)
        {

            MembershipUser[] users = Membership.GetAllUsers().Cast<MembershipUser>().Where(m => m.Email == Email.Text).ToArray();
            if (users.Length >= 3)
            {
                ErrorMessage.Text = GetLocalResourceObject("maxMailAccount").ToString();
                ErrorMessage.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "openpopoup", "$(document).ready(function (){ $('#registerModal').modal('show'); });", true);
                return;
            }

            MembershipCreateStatus objstatus;
            MembershipUser objUser = Membership.CreateUser(UserName.Text, Password.Text, Email.Text, Question.Text, Answer.Text.Trim(), true, out objstatus);
            bool success = true;
            switch (objstatus)
            {
                case MembershipCreateStatus.DuplicateUserName:
                    ErrorMessage.Text = GetLocalResourceObject("duplicateUsername").ToString();
                    ErrorMessage.Visible = true;
                    success = false;
                    break;
                case MembershipCreateStatus.InvalidPassword:
                    ErrorMessage.Text = GetLocalResourceObject("invalidPass").ToString();
                    ErrorMessage.Visible = true;
                    success = false;
                    break;
                case MembershipCreateStatus.ProviderError:
                case MembershipCreateStatus.UserRejected:
                    ErrorMessage.Text = GetLocalResourceObject("generalError").ToString();
                    ErrorMessage.Visible = true;
                    success = false;
                    break;
                default:
                    break;
            }
            if (success)
            {
                Member member = new Member();
                member.AddNew();
                member.Answer = Answer.Text.Trim();
                member.UserID = new Guid(objUser.ProviderUserKey.ToString());
                member.Name = objUser.UserName;
                member.IsOnLine = true;
                member.Status = 1;
                member.RowStatusID = 1;  // Enabled
                member.IsMailActivated = true;
                member.Save();
                FormsAuthentication.SetAuthCookie(objUser.UserName, false);
                //try
                //{
                //    MailMessage msg = new MailMessage();
                //    string body = GetLocalResourceObject("body").ToString();
                //    string mail = GetLocalResourceObject("mail").ToString();

                //    member.ActivationCode = Guid.NewGuid();
                //    member.Save();
                //    string mailto = objUser.Email;
                //    msg.To.Add(mailto);
                //    msg.From = new MailAddress(mail);
                //    msg.Subject = GetLocalResourceObject("subject").ToString();
                //    msg.IsBodyHtml = true;
                //    msg.BodyEncoding = System.Text.Encoding.Unicode;

                //    msg.Body = string.Format(body, objUser.UserName, member.ActivationCode.ToString());

                //    SmtpClient client = new SmtpClient(GetLocalResourceObject("mailserver").ToString(), 25);

                //    client.UseDefaultCredentials = false;

                //    client.Credentials = new System.Net.NetworkCredential(mail, GetLocalResourceObject("mailpass").ToString());
                //    client.Send(msg);
                //}
                //catch (Exception)
                //{

                //}

                Response.Redirect("home.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "openpopoup", "$(document).ready(function (){ $('#registerModal').modal('show'); });", true);
            }

        }

    }
}