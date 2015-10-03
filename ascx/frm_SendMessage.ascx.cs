using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_SendMessage : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        /*
        string username = "guest";
        string pass = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";

        if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
        {
            username = Request.Cookies["username"].Value.ToString();
            pass = Request.Cookies["password"].Value.ToString();
        }
        ods_SendList.SelectParameters["ms_from_userID"].DefaultValue = 
            new MainDataModuleTableAdapters.tbl_usersTableAdapter().GetUserIDfromUserName(username).Value.ToString();
        */


    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {


    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        if (new MainDataModuleTableAdapters.tbl_usersTableAdapter().CheckIfUserExistsOrNotWithoutPassword(txt_username.Text) == 1)
        {
            lbl_msg.Text = "نام کاربری فوق یافت شد";
            lnk_send.Enabled = true;
        }
        else
        {
            lbl_msg.Text = "نام کاربری فوق یافت نشد";
            lnk_send.Enabled = false;
        }
    }
}