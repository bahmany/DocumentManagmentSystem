using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_EducationPublicArea : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void lnk_azmoon_DataBinding(object sender, EventArgs e)
    {
        int TestGroupID = Convert.ToInt32((sender as LinkButton).ToolTip);
        int TestCount = (int) new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().IsTestExecutedOrNot(TestGroupID);
        if (TestCount == 0)
        {
            (sender as LinkButton).Visible = false;

        }
        else
        {
            
            (sender as LinkButton).Visible = true;

        }

    }
    protected void lnk_result_DataBinding(object sender, EventArgs e)
    {
        int TestGroupID = Convert.ToInt32((sender as LinkButton).ToolTip);
        int TestCount = (int)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().IsTestExecutedOrNot(TestGroupID);
        int isCount = (int)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().IsTimetoExecuteTheTest(TestGroupID);

        if (TestCount == 0 && isCount == 0)
        {
            (sender as LinkButton).Visible = true;

        }
        else
        {

            (sender as LinkButton).Visible = false;

        }
    }
    protected void lbl_waiting_for_showing_DataBinding(object sender, EventArgs e)
    {
        int TestGroupID = Convert.ToInt32((sender as Label).ToolTip);
        int TestCount = (int)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().IsTimetoExecuteTheTest(TestGroupID);
        
        if (TestCount == 0)
        {
            (sender as Label).Visible = false;

        }
        else
        {

            (sender as Label).Visible = true;

        }
    }
    protected void lnk_result_Click(object sender, EventArgs e)
    {

        string username = "guest";
        string pass = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";

        if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
        {
            username = Request.Cookies["username"].Value.ToString();
            pass = Request.Cookies["password"].Value.ToString();
        }


        Session["userID"] = new MainDataModuleTableAdapters.tbl_usersTableAdapter().GetUserIDfromUserName(username);
        Session["testID"] = (sender as LinkButton).ToolTip;

        Response.Redirect("links.aspx?page_id=64");
    }
    protected void lnk_azmoon_Click(object sender, EventArgs e)
    {
        Session["TestSessionGroupID"] = (sender as LinkButton).ToolTip;
        Response.Cookies.Add(new HttpCookie("TestSessionGroupID",(sender as LinkButton).ToolTip));
        Session.Timeout = 99999;
        Response.Redirect("links.aspx?page_id=61");
    }
}
