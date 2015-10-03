using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MainDataModuleTableAdapters;

public partial class ascx_frm_StockHoldersPublic : System.Web.UI.UserControl
{

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

        if (Session["passok"] != null)
        {
            if (Session["passok"].ToString() == "1")
            {
                pnl_change_pass.Visible = false;
                pnl_change_pass_ok.Visible = true;
            }
            else
            {
                Label8.Text = "رمز عبور شما بعلت اشتباه در ورود رمز قبلی تغییر نکرد";

            }
            Session.Remove("passok");

        }
        

        if (!IsPostBack)
        {
            if (Request.Cookies["stock_username"] != null && Request.Cookies["stock_pass"] != null)
            {

                string username = Request.Cookies["stock_username"].Value;
                string password = Request.Cookies["stock_pass"].Value;
                int rec_count = (int) new tbl_stockholdersTableAdapter().CheckIfUserAndPassValid(username, password);
                if (rec_count == 1)
                {
                    pnl_login.Visible = false;
                    pnl_StockManagerBody.Visible = true;

                    foreach (DataRow dr in new tbl_stockholdersTableAdapter().GetDataByUserName(username).Rows)
                    {
                        txt_AccountNo.Text = dr["s_hesabno"].ToString();
                        txt_AccountNoe.Text = dr["s_bankaccounttype"].ToString();
                        txt_BankName.Text = dr["s_bankname"].ToString();
                        txt_CodeSaham.Text = dr["s_stockid"].ToString();
                        txt_MizanSaham.Text = dr["s_stockcount"].ToString();
                        txt_name.Text = dr["s_name"].ToString() + " " + dr["s_family"].ToString();
                    }


                    if (Session["NoticeID"] != null)
                    {
                        foreach (DataRow dr in new tbl_stockholders_noticeTableAdapter().GetDataBy(Convert.ToInt32(Session["NoticeID"].ToString())).Rows)
                        {
                            lbl_newsTitle.Text = dr["sn_titr"].ToString();
                            lbl_newsDate.Text = dr["sn_tarikhshmasi"].ToString();
                            lbl_newsbody.Text = dr["sn_matn"].ToString();
                            Session.Remove("NoticeID");
                        }

                    }
                }
                else
                {
                    txt_name.Text = "نام کاربری را اصلاح کنید";
                    txt_password.Text = "";
                    pnl_login.Visible = true;
                    pnl_StockManagerBody.Visible = false;
                }
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


    }
    protected void lb_signin_Click(object sender, EventArgs e)
    {
        string username = txt_login.Text;
        string password = txt_password.Text;

        password = new main_class().Encode(password);
        int rec_count = (int)new tbl_stockholdersTableAdapter().CheckIfUserAndPassValid(username, password);

        if (rec_count == 1)
        {
            pnl_login.Visible = false;
            pnl_StockManagerBody.Visible = true;

            foreach (DataRow dr in new tbl_stockholdersTableAdapter().GetDataByUserName(username).Rows)
            {
                txt_AccountNo.Text = dr["s_hesabno"].ToString();
                txt_AccountNoe.Text = dr["s_bankaccounttype"].ToString();
                txt_BankName.Text = dr["s_bankname"].ToString();
                txt_CodeSaham.Text = dr["s_stockid"].ToString();
                txt_MizanSaham.Text = dr["s_stockcount"].ToString();
                txt_name.Text = dr["s_name"].ToString() + " " + dr["s_family"].ToString();
             }
            Response.Cookies.Add(new HttpCookie("stock_username",username));
            Response.Cookies.Add(new HttpCookie("stock_pass",password));



        }
        else
        {
            txt_name.Text = "نام کاربری را اصلاح کنید";
            txt_password.Text = "";
            pnl_login.Visible = true;
            pnl_StockManagerBody.Visible = false;
        }
        Response.Redirect(Request.Url.PathAndQuery);
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Cookies.Add(new HttpCookie("stock_username", " "));
        Response.Cookies.Add(new HttpCookie("stock_pass", " " ));
        Response.Redirect(Request.Url.PathAndQuery);
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {


            Session["NoticeID"] = (sender as LinkButton).ToolTip;
            Response.Redirect(Request.Url.PathAndQuery);
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        string username = Request.Cookies["stock_username"].Value;
        string str = string.Format("IF (SELECT count(*) FROM tbl_stockholders WHERE s_username = '{0}' AND s_password = '{1}') = 1 BEGIN     UPDATE    tbl_stockholders     SET              s_password = '{2}'     WHERE     s_username = '{0}' END",username,new main_class().Encode(txt_OldPass.Text),new main_class().Encode(txt_NewPass.Text));

        try  
        {
        int i = new main_class().execute_command(str);
        pnl_change_pass.Visible = false;
        pnl_change_pass_ok.Visible = true;
        Session["passok"] = "1";
        if (i == -1) {  Session["passok"] = "2"; } 
        Response.Redirect(Request.Url.PathAndQuery);
        } catch (Exception _e)
        {

        }



    }
}
