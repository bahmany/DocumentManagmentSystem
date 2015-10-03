using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using MainDataModuleTableAdapters;


public partial class MasterPage : System.Web.UI.MasterPage
{
    


    public void checkuser()
    {
        

        if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
        {
            pnl_not_reg.Visible = false;
            pnl_reg.Visible = true;
            lbl_name.Text = new tbl_usersTableAdapter().GetNameAndFamilyFromUsername(Request.Cookies["username"].Value.ToString());

        }
        else
        {
            pnl_not_reg.Visible = true;
            pnl_reg.Visible = false;
            lbl_name.Text = "";

        }

    }

    public void check_language_cookie()
    {
        // HttpCookie MyCookie = Request.Cookies["Language_ID"];

        if (Request.Cookies["Language_ID"] == null)
        {
            HttpCookie MyCookie = new HttpCookie("Language_ID");
            DateTime now = DateTime.Now;
            MyCookie.Value = "1";
            MyCookie.Expires = now.AddYears(2);
            Response.Cookies.Add(MyCookie);
            //  Response.Redirect("default.aspx");
        }
        
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
    public String get_language_value()
    {
        return Request.Cookies["Language_ID"].Value.ToString();
    }



    protected void Page_Load(object sender, EventArgs e)
    {
        check_language_cookie();
        checkuser();
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    
    
    
    
    
    

    
    
/*
 * امروز پانزده دوازده هشتاد و هشت وسط نوشتن کنترل های چک کردن یوزر کار رو رها کردم
 * می بایست جدول کاربران کد شده ایجاد گردد و در هر صفحه کنترل کاربران انجام شود
-------------------------------------------------------------------------------------
881217
 * کارها بشدت کند پیش می رود جدول جزییات کاربران در بانک ساخته شد
 * ----------------------------------------------------------------------
 * ورود اطلاعات ثبت نام کاربرها در شرف تکمیل است لطفا تکمیل شود و ایمیل مربوط به ثبت نام کاربرها
 * تکمیل شود

*/
    protected void lb_clientsignout_Click(object sender, EventArgs e)
    {
        Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
        Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("homepage.aspx");

    }
}








