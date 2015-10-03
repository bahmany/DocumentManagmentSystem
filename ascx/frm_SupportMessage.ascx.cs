using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_SupportMessage : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["pox"] != null)
        {
            pnl_body.Visible = false;
            pnl_submitok.Visible = true;
            Session.Remove("pox");

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        new MainDataModuleTableAdapters.tbl_admin_messagesTableAdapter().Insert(txt_name.Text, txt_email.Text, txt_telno.Text, txt_content.Text, DateTime.Now, 0);
        Session["pox"] = "postok";
        pnl_body.Visible = false;
        pnl_submitok.Visible = true;
        Response.Redirect(Request.Url.PathAndQuery);

    }
}
