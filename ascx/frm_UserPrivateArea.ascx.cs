using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_UserPrivateArea : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
         //if (IsPostBack)
         {
             string username = "guest";
             string password = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";
             if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
             {
                 username = Request.Cookies["username"].Value.ToString();
                 password = Request.Cookies["password"].Value.ToString();
             }

             if (Session["_modulename"] != null)
             {
                 string form_name = Session["_modulename"].ToString();
                 string path = new main_class().Load_Control(form_name, username, password);
                 ph_loader.Controls.Add(LoadControl(path));
                
             }
         }
    }
    protected void lnk_menu1_Click(object sender, EventArgs e)
    {
        string username = "guest";
        string password = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";
        string form_name = (sender as LinkButton).Text;

        if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
        {
            username = Request.Cookies["username"].Value.ToString();
            password = Request.Cookies["password"].Value.ToString();
        }
        string path = new main_class().Load_Control(form_name, username, password);
        ph_loader.Controls.Clear();         
        ph_loader.Controls.Add(LoadControl(path));
        
        
        Session["_modulename"] = form_name;
        Response.Redirect(Request.Url.PathAndQuery);

        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {

    }
}
