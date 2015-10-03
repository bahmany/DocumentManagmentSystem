using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MainDataModuleTableAdapters;
using System.Data;

public partial class ascx_frm_StockHoldersAdmin : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string wherestr = "";
        /*                                <asp:ListItem>نام خانوادگی</asp:ListItem>
                                <asp:ListItem>کد سهام</asp:ListItem>
                                <asp:ListItem>میزان سهام</asp:ListItem>
                                <asp:ListItem>کد پستی</asp:ListItem>
                                <asp:ListItem>شماره حساب</asp:ListItem>*/
        switch (DropDownList1.SelectedValue)
        {
            case "نام خانوادگی":
                wherestr = "s_family";
                break;
            case "کد سهام":
                wherestr = "s_stockid";
                break;
            case "میزان سهام":
                wherestr = "s_stockcount";
                break;
            case "کد پستی":
                wherestr = "s_postalcode";
                break;
            case "شماره حساب":
                wherestr = "s_hesabno";
                break;
        }

        if (wherestr != "" && TextBox1.Text!="")
        {
            if (wherestr == "s_stockid")
            {
                wherestr = wherestr + " =" + TextBox1.Text;
            }
            else
            {
                wherestr = wherestr + " like '%" + TextBox1.Text + "%'";
            }
            wherestr = " where " + wherestr;
        }




        sds_StockHoldersList.SelectCommand = sds_StockHoldersList.SelectCommand + " " + wherestr;
        GridView1.DataBind();


    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        new tbl_stockholdersTableAdapter().Insert(Convert.ToInt32(txt_stockid.Text), txt_name.Text, txt_family.Text, "", "", "", "", "", "", "", "", "", Convert.ToInt32(txt_stockcount.Text), "", "", "", "", "", "", txt_username.Text, "");
        GridView1.DataBind();
        txt_username.Text = "";
        txt_family.Text = "";
        txt_name.Text = "";
        txt_stockcount.Text = "";
        txt_stockid.Text = "";

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["useridid"] = (sender as LinkButton).ToolTip;
        pnl_change_pass.Visible = true;
        pnl_add_new.Visible = false;
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        new MainDataModuleTableAdapters.tbl_stockholdersTableAdapter().ChangePassword(new main_class().Encode(TextBox2.Text), Convert.ToInt32(Session["useridid"].ToString()));
        TextBox2.Text = "";
        pnl_change_pass.Visible = false;
        pnl_add_new.Visible = true;
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        pnl_Agahi.Visible = false;
        pnl_StockholdersList.Visible = true;
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        pnl_Agahi.Visible = true;
        pnl_StockholdersList.Visible = false;
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        int id = 0;

        if (Session["pos"] != null)
        {
            if (Session["pos"].ToString() != "")
            {
                id = Convert.ToInt32(Session["pos"].ToString());
            }
            Session.Remove("pos");
        }

//----------------------------------------------
        if (id != 0)
        {
            new MainDataModuleTableAdapters.tbl_stockholders_noticeTableAdapter().Update(
                Convert.ToInt32(drp_NoeAgahi.SelectedValue),
                txt_titr.Text, txt_tarikh.Text, fck_matn.Value,
                CheckBox1.Checked, Convert.ToInt32(DropDownList2.SelectedValue),
                id
                );
        }
        else
        {
            new MainDataModuleTableAdapters.tbl_stockholders_noticeTableAdapter().Insert(
                Convert.ToInt32(drp_NoeAgahi.SelectedValue),
                txt_titr.Text, txt_tarikh.Text, fck_matn.Value, 
                CheckBox1.Checked, Convert.ToInt32(DropDownList2.SelectedValue)
                );

        }






        GridView2.DataBind();
        txt_tarikh.Text = "";
        txt_titr.Text = "";
        fck_matn.Value = "";
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        foreach (DataRow dr in new MainDataModuleTableAdapters.tbl_stockholders_noticeTableAdapter().GetDataBy(Convert.ToInt32((sender as LinkButton).ToolTip)).Rows)
        {
            drp_NoeAgahi.SelectedValue = dr["sn_type"].ToString();
            txt_titr.Text = dr["sn_titr"].ToString();
            txt_tarikh.Text = dr["sn_tarikhshmasi"].ToString();
            fck_matn.Value = dr["sn_matn"].ToString();
            CheckBox1.Checked = Convert.ToBoolean(dr["sn_visible"].ToString());
            DropDownList2.SelectedValue = dr["sn_lang"].ToString();
            Session["pos"] = dr["sn_id"].ToString();

        }
    }
}
