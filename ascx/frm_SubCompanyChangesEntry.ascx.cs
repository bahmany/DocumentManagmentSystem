using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MainDataModuleTableAdapters;

public partial class ascx_frm_CompanyChangesEntry : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["postpos"] != null)
        {
            pnl_ok.Visible = true;
            pnl_entry_panel.Visible = false;
            Session.Remove("postpos");
        }
        else
        {
            pnl_ok.Visible = false;
            pnl_entry_panel.Visible = true;
        
        }
        


    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string username = "guest";
        string pass = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";

        if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
        {
            username = Request.Cookies["username"].Value.ToString();
            pass = Request.Cookies["password"].Value.ToString();
        }

        ods_companyChanges.InsertParameters["sc_title"].DefaultValue = TextBox1.Text;
        ods_companyChanges.InsertParameters["sc_text"].DefaultValue = TextBox1.Text;
        ods_companyChanges.InsertParameters["sc_userID"].DefaultValue = new tbl_usersTableAdapter().GetUserIDfromUserName(username).Value.ToString();
        ods_companyChanges.InsertParameters["sc_postDate"].DefaultValue = DateTime.Now.ToString();

        ods_companyChanges.Insert();
        
        TextBox1.Text = "";
        FCKeditor1.Value = "";

        Session["postpos"] = "okSend";

        pnl_entry_panel.Visible = false;
        pnl_ok.Visible = true;
        Response.Redirect(Request.Url.PathAndQuery);


    }
}