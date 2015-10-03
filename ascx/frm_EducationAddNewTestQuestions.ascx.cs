using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_EducationAddNewTestQuestions : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["TestGroupID"] != null)
        {

            new MainDataModuleTableAdapters.tbl_education_tests_detailsTableAdapter().Insert
                (
                Convert.ToInt32(drp_type.SelectedValue.ToString()),
                txt_content.Text,
                txt_a.Text,
                txt_B.Text,
                txt_C.Text,
                txt_D.Text,
                Convert.ToDouble(txt_mark.Text),
    Convert.ToDouble(txt_minus_mark.Text),
    txt_answer.Text, Convert.ToInt32(Session["TestGroupID"].ToString()));
            GridView1.DataBind();
        }



    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
   
    }
}
