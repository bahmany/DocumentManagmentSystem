using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_CritisemsPublic : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["send"] != null)
        {
            if (Session["send"].ToString() == "OK")
            {

                pnl_body.Visible = false;
                pnl_submitok.Visible = true;
                Session.Remove("send");
            }
            else
            {
                pnl_body.Visible = true;
                pnl_submitok.Visible = false;
            }
        }
        else
        {
            pnl_body.Visible = true;
            pnl_submitok.Visible = false;
        }
    }
    protected void lnk_send_Click(object sender, EventArgs e)
    {
        string tbl_name = "tbl_criticisms";

        string username = "guest";
        string pass = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";

        if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
        {
            username = Request.Cookies["username"].Value.ToString();
            pass = Request.Cookies["password"].Value.ToString();
        }
        string userid = new MainDataModuleTableAdapters.tbl_usersTableAdapter().GetUserIDfromUserName(username).Value.ToString();

        switch (drp_who.SelectedValue)
        {
            case "1":
                tbl_name = "tbl_criticisms";
                break;
            case "2":
                tbl_name = "tbl_criticisms_to_network";
                break;
            case "3":
                tbl_name = "tbl_criticisms_to_manager";
                break;

        }
        string sql =string.Format( "insert into {0} values (GetDate(),'{1}','{2}','{3}',{4},'{5}','0')",tbl_name,txt_name.Text,txt_content.Text,txt_email.Text,userid,txt_telno.Text);

        new main_class().execute_command(sql);

        Session["send"] = "OK";

        pnl_body.Visible = false;
        pnl_submitok.Visible = true;
        Response.Redirect(Request.Url.PathAndQuery);
    }
}
