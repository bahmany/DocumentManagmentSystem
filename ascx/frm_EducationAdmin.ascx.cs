using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_EducationTest : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["ModuleToLoad"] != null)
        {

            string username = "guest";
            string pass = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";

            if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
            {
                username = Request.Cookies["username"].Value.ToString();
                pass = Request.Cookies["password"].Value.ToString();
            }

            ph.Controls.Add(LoadControl(new main_class().Load_Control(Session["ModuleToLoad"].ToString(), username, pass)));
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session["ModuleToLoad"] = (sender as LinkButton).Text;



    }
}
