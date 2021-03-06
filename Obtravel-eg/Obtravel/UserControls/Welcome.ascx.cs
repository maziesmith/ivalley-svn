﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Obtravel
{
    public partial class Welcome : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DBLayer db = new DBLayer();
                DataSet ds = new DataSet();
                ds = db.GetBlockContent(1);
                uiLabelTitle.Text = ds.Tables[0].Rows[0]["Title"].ToString();
                uiLabelContent.Text = Server.HtmlDecode(ds.Tables[0].Rows[0]["Brief"].ToString());
                uiImageBlock.ImageUrl = ds.Tables[0].Rows[0]["ImagePath"].ToString();
            }
        }
    }
}