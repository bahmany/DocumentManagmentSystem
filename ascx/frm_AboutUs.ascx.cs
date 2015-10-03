using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MainDataModuleTableAdapters;

public partial class ascx_frm_AboutUs : System.Web.UI.UserControl
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
        if (Get_ltr_rtl() == "rtl")
        {
            Label1.Text = new main_class().Decode(new tbl_settingsTableAdapter().GetValue("aboutusfa"));
        }
        else
        {
            Label1.Text = new main_class().Decode(new tbl_settingsTableAdapter().GetValue("aboutusen"));
        }
    }
}
