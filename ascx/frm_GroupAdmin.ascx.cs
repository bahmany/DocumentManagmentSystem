using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_GroupManager : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // adding
        new MainDataModuleTableAdapters.tbl_groupsTableAdapter().InsertQuery(TextBox1.Text, TextBox2.Text);
        GridView1.DataBind();
        pnl_add_new_group.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        pnl_add_new_group.Visible = true;
    }
}
