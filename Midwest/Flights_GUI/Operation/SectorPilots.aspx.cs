﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Flight_BLL;
using System.Data;

namespace Flights_GUI.Operation
{
    public partial class SectorPilots : System.Web.UI.Page
    {
        #region Properties
         public Sector CurrentSector
        {
            get
            {
                if (Session["CurrentSector"] != null)
                    return (Sector)Session["CurrentSector"];
                else
                    return null;
            }
            set
            {
                Session["CurrentSector"] = value;
            }
        }
        #endregion

        #region Events
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {               
                LoadDDLs();
                BindPilots();
            }
        }

        protected void uiLinkButtonAddFlying_Click(object sender, EventArgs e)
        {
            SectorPilot Member = new SectorPilot();
            if (!PilotExists(Convert.ToInt32(uiDropDownListPilot.SelectedValue)))
            {
                Member.AddNew();
                Member.SectorID = CurrentSector.SectorID;
                Member.PositionID = Convert.ToInt32(uiDropDownListPilotPos.SelectedValue);
                Member.PilotID = Convert.ToInt32(uiDropDownListPilot.SelectedValue);
                Member.Save();
            }
            BindPilots();
        }

        protected void uiLinkButtonAddCo_Click(object sender, EventArgs e)
        {
            SectorPilot Member = new SectorPilot();
            if (!PilotExists(Convert.ToInt32(uiDropDownListCoPilot.SelectedValue)))
            {
                Member.AddNew();
                Member.SectorID = CurrentSector.SectorID;
                Member.PositionID = Convert.ToInt32(uiDropDownListCOPos.SelectedValue);
                Member.PilotID = Convert.ToInt32(uiDropDownListCoPilot.SelectedValue);
                Member.Save();
            }
            BindPilots();
        }

        protected void uiGridViewPiolts_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeletePiolt")
            {
                SectorPilot objData = new SectorPilot();
                objData.LoadByPrimaryKey(Convert.ToInt32(e.CommandArgument.ToString()));
                objData.MarkAsDeleted();
                objData.Save();
                BindPilots();
            }
        }

        protected void uiGridViewPiolts_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView objData = (DataRowView)e.Row.DataItem;
                Pilot current = new Pilot();
                current.LoadByPrimaryKey(Convert.ToInt32(objData["PilotID"].ToString()));
                Label temp = (Label)e.Row.FindControl("uiLabelName");
                temp.Text = current.FirstName + " " + current.SecondName;
                Label temp2 = (Label)e.Row.FindControl("uiLabelStaffNo");
                if (!current.IsColumnNull("StaffNo"))
                {
                    temp2.Text = current.StaffNo.ToString();
                }

                CheckBox IsPilot = (CheckBox)e.Row.FindControl("uiCheckBoxIsPilot");
                if (!current.IsColumnNull("IsPilot"))
                    IsPilot.Checked = current.IsPilot;
                else
                    IsPilot.Checked = false;

                if (objData["PositionID"] != null)
                {
                    Label pos = (Label)e.Row.FindControl("uiLabelPosition");
                    Position Currentpos = new Position();
                    Currentpos.LoadByPrimaryKey(Convert.ToInt32(objData["PositionID"].ToString()));
                    pos.Text = Currentpos.Title;
                }
            }
        }

        protected void uiLinkButtonBack_Click(object sender, EventArgs e)
        {
            CurrentSector = null;
            Response.Redirect("~/Operation/SectorsList.aspx?" + Request.QueryString.ToString());
        }
        #endregion

        #region Methods
        private void BindPilots()
        {
            SectorPilot pilots = new SectorPilot();
            pilots.GetPilotBySectorID(CurrentSector.SectorID);
            uiGridViewPiolts.DataSource = pilots.DefaultView;
            uiGridViewPiolts.DataBind();
        }
        
        private bool PilotExists(int pilotID)
        {
            bool exist = false;
            SectorPilot Member = new SectorPilot();
            Member.GetPilotBySectorID(CurrentSector.SectorID);
            foreach (DataRowView item in Member.DefaultView)
            {
                if (pilotID.ToString() == item["PilotID"].ToString())
                {
                    exist = true;
                    break;
                }
            }
            return exist;
        }

        private void LoadDDLs()
        {
            Pilot Allpilots = new Pilot();
            Allpilots.GetAllPilots();            
            uiDropDownListPilot.DataSource = Allpilots.DefaultView;
            uiDropDownListPilot.DataTextField = "DisplayName";
            uiDropDownListPilot.DataValueField = "PilotID";
            uiDropDownListPilot.DataBind();
            uiDropDownListPilot.Items.Insert(0, new ListItem("Select Pilot", ""));

            Pilot AllCopilots = new Pilot();
            AllCopilots.GetAllCoPilots();
            uiDropDownListCoPilot.DataSource = AllCopilots.DefaultView;
            uiDropDownListCoPilot.DataTextField = "DisplayName";
            uiDropDownListCoPilot.DataValueField = "PilotID";
            uiDropDownListCoPilot.DataBind();
            uiDropDownListCoPilot.Items.Insert(0, new ListItem("Select Co-Pilot", ""));

            Position AllPositions = new Position();
            AllPositions.LoadAll();
            uiDropDownListPilotPos.DataSource = AllPositions.DefaultView;
            uiDropDownListPilotPos.DataTextField= "Title";
            uiDropDownListPilotPos.DataValueField = "PositionID";
            uiDropDownListPilotPos.DataBind();
            uiDropDownListPilotPos.Items.Insert(0, new ListItem("Select Position", ""));

            uiDropDownListCOPos.DataSource = AllPositions.DefaultView;
            uiDropDownListCOPos.DataTextField = "Title";
            uiDropDownListCOPos.DataValueField = "PositionID";
            uiDropDownListCOPos.DataBind();
            uiDropDownListCOPos.Items.Insert(0, new ListItem("Select Position", ""));

        }

        #endregion

    }
}