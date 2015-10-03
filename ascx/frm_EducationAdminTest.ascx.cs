using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_EducationAdminTest : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    public void PanelAndSessionManager(int num)
    {
        switch (num)
        {
            case 1:
                pnl_TestGroupPanel.Visible = false;
                pnl_testMaker.Visible = true;
                break;
        }
    }


    protected void ods_TestsList_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["TestGroupID"] = (sender as LinkButton).ToolTip;
        pnl_TestGroupPanel.Visible = false;
        pnl_Detail.Visible = true;
        pnl_Group.Visible = false;
        pnl_results.Visible = false;
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        pnl_TestGroupPanel.Visible = false;
        pnl_Detail.Visible = false;
        pnl_Group.Visible = true;
        pnl_results.Visible = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {


    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        pnl_TestGroupPanel.Visible = true;
        pnl_UserGroup.Visible = false;
        pnl_Detail.Visible = false;
        pnl_Group.Visible = false;
        pnl_results.Visible = false;
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
      
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
    }
    protected void lbl_count_DataBinding(object sender, EventArgs e)
    {
        Label lbl = sender as Label;
        int KeyID = Convert.ToInt32(lbl.ToolTip);

        (sender as Label).Text = new MainDataModuleTableAdapters.tbl_education_tests_resultTableAdapter().GetAnsweredUsersCount(KeyID).Value.ToString();

    }
    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        Session["testID"] = (sender as LinkButton).ToolTip;
        pnl_TestGroupPanel.Visible = false;
        pnl_Detail.Visible = false;
        pnl_Group.Visible = false;
        pnl_results.Visible = true;

    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        pnl_TestGroupPanel.Visible = true;
        pnl_UserGroup.Visible = false;
        pnl_Detail.Visible = false;
        pnl_Group.Visible = false;
        pnl_results.Visible = false;
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        pnl_TestGroupPanel.Visible = false;
        pnl_UserGroup.Visible = true;
        pnl_Detail.Visible = false;
        pnl_Group.Visible = false;
        pnl_results.Visible = false;
    }
}
