using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_EducationAddNewTest : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            txt_startTime.Text = new main_class().Convert_to_Shamsi(DateTime.Now);
            txt_endTime.Text = new main_class().Convert_to_Shamsi(DateTime.Now);
        }
        //txt_startTimeTime.Text = new main_class().Convert_to_standard_time(TimeSpan.Parse(DateTime.Now.ToShortTimeString()));
        //txt_endTimeTime.Text = new main_class().Convert_to_standard_time(TimeSpan.Parse(DateTime.Now.ToShortTimeString()));

    }
    protected void lb_post_Click(object sender, EventArgs e)
    {
        new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().InsertQuery(
            txt_TestTitle.Text,
            Convert.ToInt32(drp_TestType.SelectedValue.ToString()),
            Convert.ToInt32(txt_TestTshrihiNomreh.Text),
            Convert.ToInt32(txt_TestTshrihiTedad.Text),
            Convert.ToInt32(txt_TestTestiTedad.Text),
            Convert.ToInt32(txt_TestTestiNomreh.Text),
            Convert.ToInt32(drp_SelectDrp.SelectedValue.ToString()),
            Convert.ToDateTime(new main_class().Convert_to_Midaly(txt_startTime.Text, txt_startTimeTime.Text)),
            Convert.ToDateTime(new main_class().Convert_to_Midaly(txt_endTime.Text, txt_endTimeTime.Text)));
        Response.Redirect(Request.Url.PathAndQuery);


    }
}
