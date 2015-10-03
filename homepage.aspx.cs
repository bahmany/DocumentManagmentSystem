using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MainDataModuleTableAdapters;
using System.Data;

public partial class homepage : System.Web.UI.Page
{
    public struct user_pro
    {
        public string username;
        public string password;
    }

    public String get_language_value()
    {
        if (Request.Cookies["Language_ID"] != null)
        { return Request.Cookies["Language_ID"].Value.ToString(); }
        else
        { return "0"; }
        
    }

    public String Get_ltr_rtl()
    {

        if (Request.Cookies["Language_ID"].Value.ToString() == "1") { return "rtl"; }
        else { return "ltr"; }

    }
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



    public string image_language_caller(string imagename)
    {


        if (get_language_value() == "0")
        {
            imagename = imagename + "Fa.jpg";
        }
        if (get_language_value() == "1")
        {
            imagename = imagename + "Fa.jpg";
        }
        if (get_language_value() == "2")
        {
            imagename = imagename + "En.jpg";
        }


        return imagename;
    
    }


    private user_pro get_username()
    {
        user_pro up = new user_pro();
        if (Request.Cookies["user_name"] != null && Request.Cookies["password"] != null)
        {
            up.username = Request.Cookies["user_name"].Value.ToString();
            up.password = Request.Cookies["password"].Value.ToString();

        }
        else 
        {
            up.username = "guest";
            up.password = new main_class().Encode("eogijverig[iojewirjfji!@#$%^ioweijf");
        }
        return up;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        /*
         مواردی که مانده است :
         * 1- درست کردن زبان 
         * 2- اینکه با تعویض زبان Regex اقدام به جابجایی متن عکس ها نماید این بهترین راه است
         */



        // Loading necessary classes

        user_pro up = new user_pro();
        up = get_username();
        Control cntr = LoadControl(new main_class().Load_Control("چارت آخرین قیمت های ورودی", up.username, up.password));
     //   pl_freefees.Controls.Add(cntr);
        if (Get_Right_Left() == "right")
        {
      //      ods_publicNewsTop5.SelectParameters["NewsKind"].DefaultValue = "14";
        }
        if (Get_Right_Left() == "left")
        {
    //        ods_publicNewsTop5.SelectParameters["NewsKind"].DefaultValue = "30";
        }

        //(DataList1.DataSource as DataSet).EnforceConstraints = false;
        
     //   DataList1.DataBind();

        //-----------------------------------

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
//        Button1.Text = "C"+ListBox1.SelectedValue.ToString() + "C";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton lb = (sender as LinkButton);

        Session["NewsBody"] = new tbl_newsTableAdapter().GetNewsBody(Convert.ToInt32(lb.ToolTip.ToString()));
        Session.Add(new main_class().Encode("NewsID"), new main_class().Encode(lb.ToolTip.ToString()));
        Session.Add(new main_class().Encode("_NewsID"), new main_class().Encode(lb.ToolTip.ToString()));
        Response.Redirect("links.aspx?page_id=36");
    }
    protected void lnk_moreNews_Click(object sender, EventArgs e)
    {
        Response.Redirect("links.aspx?page_id=36");
    }
}
