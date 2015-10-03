using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_EducationTestResult : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        pnl_ResultList.Visible = true;
        pnl_ResultDetails.Visible = false;

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        pnl_ResultList.Visible = false;
        pnl_ResultDetails.Visible = true;
        Session["userID"] = (sender as LinkButton).ToolTip;
        GridView2.DataBind();
    }
}
