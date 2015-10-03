using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MainDataModuleTableAdapters;

public partial class ascx_pnl_Login : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        tbl_usersTableAdapter tb = new tbl_usersTableAdapter();
        if (tb.CheckIfUserNameExistsOrNot(TextBox1.Text, new main_class().Encode(TextBox2.Text)) == 1)
        {
            HttpCookie hc = new HttpCookie("username", TextBox1.Text);
            HttpCookie hp = new HttpCookie("password", new main_class().Encode(TextBox2.Text));
            hc.Expires.AddDays(15);
            hp.Expires.AddDays(15);
            Response.Cookies.Add(hc);
            Response.Cookies.Add(hp);
            Response.Redirect("homepage.aspx");
        }
        else { Label3.Visible = true; }


    }
}
