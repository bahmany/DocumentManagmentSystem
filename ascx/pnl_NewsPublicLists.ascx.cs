using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_pnl_NewsPublicLists : System.Web.UI.UserControl
{
    

    protected void Page_Load(object sender, EventArgs e)
    {

     
       // int moduleid = 0;
        //if (Session["NewsName"] != null) { Label1.Text = Session["NewsName"].ToString(); }
        //if (Session[new main_class().Encode("NewsID")] != null)
        {
         
        //    ods_NewsList.SelectParameters[0].DefaultValue = new main_class().Decode(Session[new main_class().Encode("NewsID")].ToString());
            //GridView1.DataBind();

        }

        

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        LinkButton lb = (sender as LinkButton);
        string username = "guest";
        string password = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";
        if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
        {
            username = Request.Cookies["username"].ToString();
            password = Request.Cookies["password"].ToString();
        }
        Response.Cookies.Add(new HttpCookie("NewsID", new main_class().Encode(lb.ToolTip)));
        Control ct = LoadControl(new main_class().Load_Control("شرح خبر",username,password));
        (FindControl("PlaceHolder1") as PlaceHolder).Controls.Clear();
        (FindControl("PlaceHolder1") as PlaceHolder).Controls.Add(ct);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       // LinkButton lb = (sender as LinkButton);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //Button btn = (sender as Button);
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Button btn = (sender as Button);

    }
}
