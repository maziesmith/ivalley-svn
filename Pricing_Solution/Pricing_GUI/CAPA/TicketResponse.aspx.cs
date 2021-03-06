﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Pricing.BLL;

namespace Pricing_GUI.CAPA
{
    public partial class TicketResponse : System.Web.UI.Page
    {
        #region properties
        public int TicketID
        {
            get
            {
                if (Request.QueryString["t"] != null)
                {
                    try
                    {
                        return Convert.ToInt32(Request.QueryString["t"].ToString());
                    }
                    catch (Exception ex)
                    {
                        return 0;
                    }
                }
                return 0;
            }
        }
        #endregion

        #region Events
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.ChildPageTitle = "Tickets Managament";

            if (!IsPostBack)
            {
                LoadDDl();
                if (TicketID == 0)
                {
                    Response.Redirect("~/capa/managetickets.aspx");
                }
                else
                {
                    Pricing.BLL.Tickets ticket = new Pricing.BLL.Tickets();
                    ticket.LoadByPrimaryKey(TicketID);

                    if (ticket.RowCount == 0)
                        Response.Redirect("~/capa/managetickets.aspx");

                    uiLabelRequestText.Text = ticket.TextRequest;
                    if (!string.IsNullOrEmpty(ticket.TradeName))
                        uiLabelDrugName.Text = ticket.TradeName;
                    else
                    {
                        Pricing.BLL.TradePricing drug = new Pricing.BLL.TradePricing();
                        drug.LoadByPrimaryKey(ticket.TradePricingID);
                        uiLabelDrugName.Text = drug.TradeName;
                    }

                    if (!ticket.IsColumnNull("FileAttachement"))
                    {
                        if (!string.IsNullOrEmpty("FileAttachement"))
                        {
                            uiLiteralAttach.Text = "<a href='" + ticket.FileAttachement + "' class='btn btn-primary'>Check attachment</a>";
                            uiLiteralAttach.Visible = true;
                        }
                        else
                            uiLiteralAttach.Visible = false;
                    }
                    else
                    {
                        uiLiteralAttach.Visible = false;
                    }

                    if (ticket.TicketStatusID == 4)
                    {
                        uiPanelResponse.Visible = false;
                    }
                    else
                    {
                        uiPanelResponse.Visible = true;
                    }
                    BindHistory();
                }
            }
            lblCloseTicketValidation.Text = "";
        }


        protected void uiGridViewHistory_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            uiGridViewHistory.PageIndex = e.NewPageIndex;
            BindHistory();
        }

        protected void uiLinkButtonReply_Click(object sender, EventArgs e)
        {
            if (uiDropDownListStatus.SelectedItem.Text == "Closed" && uiTextBoxResponse.Text=="")
            {
                lblCloseTicketValidation.Text = "You must write a comment before close the ticket !";
                return;
            }

            // Admin only can change the status if it was closed 
            Pricing.BLL.Tickets objTicket = new Pricing.BLL.Tickets();
            objTicket.LoadByPrimaryKey(TicketID);
            if (CodeGlobal.LogedInUser.s_Privaledge != "admin" && objTicket.TicketStatusID == 2)
            {
                lblCloseTicketValidation.Text = "System Admin only who can change the status now !";
                return;
            }

            TicketHistory history = new TicketHistory();
            history.AddNew();
            history.TicketID = TicketID;
            history.ResponseDate = DateTime.Now;
            history.ResponseText = uiTextBoxResponse.Text;
            history.TicketStatusID = Convert.ToInt32(uiDropDownListStatus.SelectedValue);
            string filepath = "";
            if (uiFileUploadAttach.HasFile)
            {

                filepath = "/Attachments/TicketHistory/" + DateTime.Now.ToString("ddMMyyyyhhmmss_") + uiFileUploadAttach.FileName;
                uiFileUploadAttach.SaveAs(Server.MapPath("~" + filepath));
                history.FileAttachement = filepath;
            }
            history.Save();

            Pricing.BLL.Tickets ticket = new Pricing.BLL.Tickets();
            ticket.LoadByPrimaryKey(TicketID);
            ticket.TicketStatusID = Convert.ToInt32(uiDropDownListStatus.SelectedValue);
            ticket.Save();

            if (ticket.TicketStatusID == 4)
            {
                uiPanelResponse.Visible = false;
            }
            else
            {
                uiPanelResponse.Visible = true;
            }

            uiTextBoxResponse.Text = "";
            uiDropDownListStatus.SelectedIndex = 0;

            BindHistory();
            LoadDDl();
        }
        #endregion

        #region Methods

        private void BindHistory()
        {
            TicketHistory history = new TicketHistory();
            history.GetAllHistoryTicketsByTicketID(TicketID);
            uiGridViewHistory.DataSource = history.DefaultView;
            uiGridViewHistory.DataBind();
        }


        private void LoadDDl()
        {
            Pricing.BLL.TicketStatus status = new Pricing.BLL.TicketStatus();
            status.LoadAll();
            uiDropDownListStatus.DataSource = status.DefaultView;
            uiDropDownListStatus.DataTextField = Pricing.BLL.TicketStatus.ColumnNames.Name;
            uiDropDownListStatus.DataValueField = Pricing.BLL.TicketStatus.ColumnNames.TicketStatusID;
            uiDropDownListStatus.DataBind();

            // Remove from the status list - the last status for the current ticket - to prevent status duplication .
            Pricing.BLL.Tickets obj = new Pricing.BLL.Tickets();
            obj.LoadByPrimaryKey(TicketID);

            ListItem item = uiDropDownListStatus.Items.FindByValue(obj.TicketStatusID.ToString());
            uiDropDownListStatus.Items.Remove(item);
        }
        #endregion

    }
}