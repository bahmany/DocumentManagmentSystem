﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ModuleName = "";
        if (Request.QueryString["moduleid"] != null)
        {
            ModuleName = Request.QueryString["moduleid"].ToString();
            string username = "guest";
            string pass = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";

            if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
            {
                username = Request.Cookies["username"].Value.ToString();
                pass = Request.Cookies["password"].Value.ToString();
            }


            if (ModuleName != "")
            {
                Control cnt = LoadControl(new main_class().Load_Control(ModuleName, username, pass));
                PlaceHolder1.Controls.Add(cnt);

            }

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx?moduleid="+(sender as LinkButton).Text);

    }
}