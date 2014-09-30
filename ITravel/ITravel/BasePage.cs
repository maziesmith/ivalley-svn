﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;

namespace ITravel
{
    public class BasePage : System.Web.UI.Page
    {
        public BasePage()
        {
           // this.PreInit += BasePage_PreInit;
        }

        void BasePage_PreInit(object sender, EventArgs e)
        {
            if (Session["CurrentCulture"] != null)
            {
                Thread.CurrentThread.CurrentCulture = new CultureInfo(Session["CurrentCulture"].ToString());
                Page.Theme = Session["CurrentCulture"].ToString();
            }
            else
            {
                Thread.CurrentThread.CurrentCulture = new CultureInfo("ar-EG");
                Page.Theme = "ar-EG";
                Session["CurrentCulture"] = "ar-EG";
            }
        }

        protected override void InitializeCulture()
        {
            if (Session["CurrentCulture"] != null)
            {
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(Session["CurrentCulture"].ToString());
                Thread.CurrentThread.CurrentUICulture = new CultureInfo(Session["CurrentCulture"].ToString());                
                Page.Theme = Session["CurrentCulture"].ToString();
            }
            else
            {
                Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture("ar-EG");
                Thread.CurrentThread.CurrentUICulture= new CultureInfo("ar-EG");
                Page.Theme = "ar-EG";
                Session["CurrentCulture"] = "ar-EG";
            }
            base.InitializeCulture();
        }
       
    }
}