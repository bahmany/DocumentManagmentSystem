using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MainDataModuleTableAdapters;

public partial class ascx_pnl_TopLatestNews30 : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public String Get_ltr_rtl()
    {

        if (Request.Cookies["Language_ID"].Value.ToString() == "1") { return "rtl"; }
        else { return "ltr"; }

    }
    public String Get_Right_Left()
    {

        if (Request.Cookies["Language_ID"].Value.ToString() == "1") { return "right"; }
        else { return "left"; }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton lb = (sender as LinkButton);

        Session["NewsBody"] = new tbl_newsTableAdapter().GetNewsBody(Convert.ToInt32(lb.ToolTip.ToString()));
        Session.Add(new main_class().Encode("NewsID"), new main_class().Encode(lb.ToolTip.ToString()));
        Session.Add(new main_class().Encode("_NewsID"), new main_class().Encode(lb.ToolTip.ToString()));
        Response.Redirect("links.aspx?page_id=36");
    }
}
