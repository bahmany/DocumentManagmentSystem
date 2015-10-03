using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FarsiLibrary;
using FarsiLibrary.Utils;

public partial class ascx_frm_BroadcastedCosts : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PersianDate fr = new FarsiLibrary.Utils.PersianDate();
            string month = fr.Month.ToString();
            string day = (fr.Day - 1).ToString();
            if (month.Length == 1) month = "0" + month;
            if (day.Length == 1) day = "0" + day;

            TextBox3.Text = fr.Year.ToString() + "/" + month + "/" + day;
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        ods_goods.Insert();
        DropDownList3.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ods_costs.InsertParameters["تاریخ_ثبت"].DefaultValue = Convert.ToDateTime(
             (FarsiLibrary.Utils.PersianDateConverter.ToGregorianDate(
             new FarsiLibrary.Utils.PersianDate(TextBox3.Text)))).ToString();
       

     
        ods_costs.Insert();
        GridView1.DataBind();
    }
}
