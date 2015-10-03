using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MainDataModuleTableAdapters;

public partial class links : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["page_id"] != null)
        {
            string page_id = Request.QueryString["page_id"].ToString();
 

            if (page_id == "0")
            {
                HttpCookie hk = Request.Cookies["Language_ID"];
                if (hk.Value.ToString() == "1") { Response.Cookies.Add(new HttpCookie("Language_ID", "2")); }
                if (hk.Value.ToString() == "2") { Response.Cookies.Add(new HttpCookie("Language_ID", "1")); }
                Response.Redirect("homepage.aspx");
            }
            else
            {
                string form_name = new tbl_modulesTableAdapter().GetFormNameFromID(Convert.ToInt16(page_id));
                string form_to_transfer = "loader.aspx?moduleid=" + form_name;
                Server.Transfer(form_to_transfer);

            }







        }
    }
}
