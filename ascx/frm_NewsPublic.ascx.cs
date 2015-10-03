using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MainDataModuleTableAdapters;

public partial class ascx_frm_NewsPublic : System.Web.UI.UserControl
{
    public String Get_Right_Left()
    {

        if (Request.Cookies["Language_ID"].Value.ToString() == "1") { return "right"; }
        else { return "left"; }

    }
    public String Get_Right_Left_Vise()
    {

        if (Request.Cookies["Language_ID"].Value.ToString() == "1") { return "left"; }
        else { return "right"; }

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Literal1.Text = Get_Right_Left();
        if (!IsPostBack)
        {



                string title = "";
                if (Session["NewsType"] != null)
                {
                    title = Session["NewsType"].ToString();
                }
                else
                {
                    if (Get_Right_Left() == "1") { Label1.Text = "اخبار و اطلاعیه های مرتبط با شرکت"; }
                    else { Label1.Text = "Atiehfould News"; }
                }

                Label1.Text = title;
                string NewsIDGroup = "14";
                if (Session["NewsIDGroup"] != null)
                {
                    NewsIDGroup = Session["NewsIDGroup"].ToString();
                }


                string newshown = "";

                if (Session["NewsShownType"] != null)
                {
                    newshown = "1";
                }


                if (Session[new main_class().Encode("NewsID")] == null)
                {


                string form_name = new tbl_modulesTableAdapter().GetFormNameFromID(Convert.ToInt16(NewsIDGroup));

                string username = "guest";
                string password = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";

                if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
                {
                    username = Request.Cookies["username"].Value.ToString();
                    password = Request.Cookies["password"].Value.ToString();
                }
                string ModelID = new main_class().Load_Control(form_name, username, password);
                int i = ModelID.IndexOf("frm_AccessDenied");
                if (i == -1)
                {
                    ods_NewsList.SelectParameters[0].DefaultValue = NewsIDGroup;
                    GridView1.DataBind();
                }
                else
                {
                    ods_NewsList.SelectParameters[0].DefaultValue = "-1";
                    GridView1.DataBind();
                }
            }
            else
            {
                Label2.Text = Session["NewsBody"].ToString();

                Panel1.Visible = true;//body
                Panel2.Visible = false;//news list;
                Session.Remove(new main_class().Encode("NewsID"));
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Session["NewsShownType"] = "";
        
        LinkButton lb = (sender as LinkButton);
        Label1.Text = lb.Text;
        Session["NewsType"] = lb.Text;
        Session["NewsIDGroup"] = lb.ToolTip;


        string form_name = new tbl_modulesTableAdapter().GetFormNameFromID(Convert.ToInt16(lb.ToolTip.ToString()));
        
        string username = "guest";
        string password = "pRS+UaJqCcwAcBEcdkJ6UmEQwvtkSm4GGero4+PfWIUrC7XpxXsgxi9xr0ha6paZ";
        
        if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
        {
            username = Request.Cookies["username"].Value.ToString();
            password = Request.Cookies["password"].Value.ToString();
        }
        string ModelID = new main_class().Load_Control(form_name, username, password);
        int i = ModelID.IndexOf("frm_AccessDenied");
        if (i == -1)
        {
            ods_NewsList.SelectParameters[0].DefaultValue = lb.ToolTip.ToString();
            GridView1.DataBind();
        }
        else
        {
            ods_NewsList.SelectParameters[0].DefaultValue = "-1";
            GridView1.DataBind();
        }

        Response.Redirect(Request.Url.PathAndQuery);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

        


        LinkButton lb = (sender as LinkButton);
        Session["NewsBody"] = new tbl_newsTableAdapter().GetNewsBody(Convert.ToInt32(lb.ToolTip.ToString()));
        Session.Add(new main_class().Encode("NewsID"), new main_class().Encode(lb.ToolTip.ToString()));
        Session.Add(new main_class().Encode("_NewsID"), new main_class().Encode(lb.ToolTip.ToString()));
     
        Response.Redirect(Request.Url.PathAndQuery);

    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        //Panel1.Visible = false;//body
        //Panel2.Visible = true;//news list;
        //Session.Remove(new main_class().Encode("NewsID"));
        Response.Redirect(Request.Url.PathAndQuery);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i=
            Convert.ToInt32(new main_class().Decode(Session[new main_class().Encode("_NewsID")].ToString()));
        new tbl_news_commentsTableAdapter().Insert(i,
            TextBox1.Text, "", false, 24);
        Panel3.Visible = false;
        Label5.Visible = true;
        Session["NewsShownType"] = "ShowDetails";
        Page.RegisterClientScriptBlock("dsas", "alert('نظر شما ثبت شد متشکریم')");
        Response.Redirect(Request.Url.PathAndQuery);
    }
    protected void RadAjaxPanel1_Load(object sender, EventArgs e)
    {
        //Label5.Visible = false;
        //Panel3.Visible = true;

       

    }
}
