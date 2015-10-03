using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MainDataModuleTableAdapters;
using System.Data;

public partial class ascx_frm_SubCompaniesManager : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        tbl_subcompaniesTableAdapter scta = new tbl_subcompaniesTableAdapter();
            
        if (Session["post"] == null)
        {

            scta.Insert(Convert.ToInt16(DropDownList4.SelectedValue.ToString()), TextBox1.Text, Convert.ToInt16(DropDownList3.SelectedValue), TextBox2.Text, TextBox3.Text, FCKeditor1.Value,0,0);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            FCKeditor1.Value = "";
            GridView1.DataBind();

        }
        else
        {
            scta.UpdateQuery(
            Convert.ToInt32(DropDownList4.SelectedValue.ToString()),
            TextBox1.Text,
            Convert.ToInt32(DropDownList3.SelectedValue.ToString()),
            TextBox2.Text,
            TextBox3.Text,
            FCKeditor1.Value,
            Convert.ToInt32(Session["post"].ToString()));
            Session.Remove("post");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            FCKeditor1.Value = "";
            GridView1.DataBind();

        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        tbl_subcompaniesTableAdapter md = new tbl_subcompaniesTableAdapter();
        int id = Convert.ToInt16((sender as LinkButton).ToolTip.ToString());
        MainDataModule.tbl_subcompaniesDataTable dt = new MainDataModule.tbl_subcompaniesDataTable();
        md.FillBy(dt, id);
        DataRow dr = dt.Rows[0];
        DropDownList4.SelectedValue= dr["sc_lang"].ToString();
        TextBox1.Text = dr["sc_name"].ToString();
        DropDownList1.SelectedIndex = 0;
        DropDownList2.SelectedIndex = 0;
        DropDownList3.SelectedIndex = 0;
        TextBox2.Text = dr["sc_intro"].ToString();
        TextBox3.Text = dr["sc_express_intro"].ToString();
        FCKeditor1.Value = dr["sc_exp"].ToString();
        Session["post"] = id.ToString();
        Page.RegisterClientScriptBlock("ddd", "<script type=\"text/javascript\">alert(\"لطفا نام کشور، استان و شهرستان را مجددا مشخص نمایید\");</script>");
       
    }            

}
