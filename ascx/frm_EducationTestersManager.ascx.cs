using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ascx_frm_EducationTestersManager : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TestGroupIDUser"] != null)
        {
            Label2.Text = Session["TestGroupIDUser"].ToString();
        }
        
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        new MainDataModuleTableAdapters.tbl_education_tests_user_groupTableAdapter().Insert(txt_GroupName.Text);

        pnl_TesterGroupGrid.Visible = true;
        pnl_BindUsersToGroup.Visible = false;
        pnl_TesterAddNew.Visible = false;
        GridView1.DataBind();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        pnl_TesterGroupGrid.Visible = false;
        pnl_BindUsersToGroup.Visible = false;
        pnl_TesterAddNew.Visible = true;

    }
    protected void Label1_DataBinding(object sender, EventArgs e)
    {

        (sender as Label).Text = new MainDataModuleTableAdapters.tbl_usersTableAdapter().GetNameFamilyCompanyByID(
            Convert.ToInt32((sender as Label).ToolTip));
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        pnl_TesterGroupGrid.Visible = true;
        pnl_BindUsersToGroup.Visible = false;
        pnl_TesterAddNew.Visible = false;
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        pnl_userGrid.Visible = false;
        pnl_groupsGrid.Visible = true;
        gv_GroupsList.DataBind();
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        pnl_userGrid.Visible = true;
        pnl_groupsGrid.Visible = false;


    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        main_class mc = new main_class();
        // vvvvv for editing group permission
        if (rb_user.Checked)
        {
            int GroupTesterID = Convert.ToInt32(Session["TestGroupIDUser"].ToString());
            for (int i = 0; i < gv_usersList.Rows.Count; i++)
            {
                CheckBox cb = (CheckBox)gv_usersList.Rows[i].FindControl("chk_select");
                if (cb.Checked)
                {

                    mc.execute_command(string.Format("delete from tbl_education_tests_user_group_details where etugd_userID_link={0} and etugd_group_link={1}", cb.ToolTip, GroupTesterID.ToString()));
                    mc.execute_command(string.Format("insert into tbl_education_tests_user_group_details (     etugd_userID_link,            etugd_group_link) values ({0},{1})", cb.ToolTip, GroupTesterID.ToString()));


                }
            }
        }

        if (rb_group.Checked)
        {
            int GroupTesterID = Convert.ToInt32(Session["TestGroupIDUser"].ToString());
            for (int i = 1; i < gv_GroupsList.Rows.Count+1; i++)
            {
                CheckBox cb = (CheckBox)gv_GroupsList.Rows[i-1].FindControl("chk_select");
                if (cb.Checked)
                {
                    foreach (DataRow dr in
                        new MainDataModuleTableAdapters.tbl_usersTableAdapter().GetDataByGroupID(
                        Convert.ToInt32(cb.ToolTip)).Rows)
                    {
                        mc.execute_command(string.Format("delete from tbl_education_tests_user_group_details where etugd_userID_link={0} and etugd_group_link={1}", dr["u_id"].ToString(), GroupTesterID.ToString()));
                        mc.execute_command(string.Format("insert into tbl_education_tests_user_group_details (etugd_userID_link,etugd_group_link) values ({0},{1})", dr["u_id"].ToString(), GroupTesterID.ToString()));
                    }
                }
            }
            GridView2.DataBind();
        }
    }
    protected void gv_userList_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["TestGroupIDUser"] = (sender as LinkButton).ToolTip;

        pnl_TesterGroupGrid.Visible = false;
        pnl_BindUsersToGroup.Visible = true;
        pnl_TesterAddNew.Visible = false;
    }
}
