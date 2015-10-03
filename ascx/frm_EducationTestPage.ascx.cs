using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

public partial class ascx_frm_EducationTestPage : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["OKTestSend"] != null)
        {
            pnl_TestBody.Visible = false;
            pnl_TestMessage.Visible = true;
            pnl_alarm.Visible = false;
            pnl_alarmOK.Visible = true;
            Session.Remove("OKTestSend");
        }
        else
        {





            //int TestSessionGroupID = Convert.ToInt32(Session["TestSessionGroupID"].ToString());

            int TestSessionGroupID = Convert.ToInt32(Request.Cookies["TestSessionGroupID"].Value.ToString());// Convert.ToInt32(Session["TestSessionGroupID"].ToString());
            
            string username = "guest";

            if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
            {
                username = Request.Cookies["username"].Value.ToString();
            }


            int userID = (int)new MainDataModuleTableAdapters.tbl_usersTableAdapter().GetUserIDfromUserName(username);
            int TestersGroupID = (int)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().GetTestersGroupIDFromTestID(TestSessionGroupID);

            int is_available = (int)new MainDataModuleTableAdapters.tbl_education_tests_user_group_detailsTableAdapter().IsUserAndGroupAvailable(userID, TestersGroupID);

            int secondStartExam = (int)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().GetSecondDiffByStartTimeToNow(TestSessionGroupID);
            int secondEndExam = (int)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().GetSecondDiffByEndDateToNow(TestSessionGroupID);



            if (
                secondStartExam > 0 &&
                secondEndExam > 0 &&
                new MainDataModuleTableAdapters.tbl_education_tests_resultTableAdapter().IsUserFilledTheTestBefore(userID, TestSessionGroupID) == 0 &&
                is_available != 0

                )
            {
                pnl_TestBody.Visible = true;
                pnl_TestMessage.Visible = false;
                DateTime dt1 = (DateTime)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().GetTestStartDateFromID(TestSessionGroupID);
                DateTime dt2 = (DateTime)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().GetTestEndDateFromID(TestSessionGroupID);
                lbl_startTime.Text = new main_class().Convert_to_Shamsi(dt1) + " " + new main_class().Convert_to_standard_time(dt1.TimeOfDay);
                lbl_endTime.Text = new main_class().Convert_to_Shamsi(dt2) + " " + new main_class().Convert_to_standard_time(dt2.TimeOfDay);
                secondEndExam = Convert.ToInt32(getRemainSeconds());
                //Session.Timeout = secondEndExam / 60;
                string script = "<script type=\"text/javascript\">  var timeout = " + (secondEndExam * 1000).ToString() + ";     " +
                    " var t=setTimeout(\"alert('زمان آزمون به پایان رسیده است!');__doPostBack('ctl00$ContentPlaceHolder1$ctl00$lb_submit','')\",timeout); ";


                script = script + " var tt=setTimeout(\"alert('تنها دو دقیقه از زمان آزمون باقی مانده !')\"," + ((secondEndExam * 1000) - 120000).ToString() + ");    </script>";

                Page.RegisterStartupScript("AzmoonTimeOut", script);



            }
            else
            {
                pnl_TestBody.Visible = false;
                pnl_TestMessage.Visible = true;
                pnl_alarm.Visible = true;
                pnl_alarmOK.Visible = false;


            }
        }

    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        DataRowView drv = (System.Data.DataRowView)(e.Item.DataItem);
        int tp = int.Parse(drv.Row["etq_type"].ToString());
       
        //int tp = int.Parse(((HiddenField)e.Item.FindControl("hf_key")).Value.ToString());
        if (tp == 1)  // tashrihi .
        {
            ((Panel)e.Item.FindControl("pnl_tashrihi")).Visible = true;
            ((Panel)e.Item.FindControl("pnl_testi")).Visible = false;
        }
        if (tp == 2)  // testi .
        {
            ((Panel)e.Item.FindControl("pnl_tashrihi")).Visible = false;
            ((Panel)e.Item.FindControl("pnl_testi")).Visible = true;
        }
 
    }
    protected void lb_submit_Click(object sender, EventArgs e)
    {
        
            int TestSessionGroupID = Convert.ToInt32(Request.Cookies["TestSessionGroupID"].Value.ToString());// Convert.ToInt32(Session["TestSessionGroupID"].ToString());
            string username = "guest";
            if (Request.Cookies["username"] != null && Request.Cookies["password"] != null)
            {
                username = Request.Cookies["username"].Value.ToString();
            }
            int userID = (int)new MainDataModuleTableAdapters.tbl_usersTableAdapter().GetUserIDfromUserName(username);
            int TestersGroupID = (int)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().GetTestersGroupIDFromTestID(TestSessionGroupID);
            int is_available = (int)new MainDataModuleTableAdapters.tbl_education_tests_user_group_detailsTableAdapter().IsUserAndGroupAvailable(userID, TestersGroupID);
            int secondStartExam = (int)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().GetSecondDiffByStartTimeToNow(TestSessionGroupID);
            int secondEndExam = (int)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().GetSecondDiffByEndDateToNow(TestSessionGroupID);

            if (
                secondStartExam > 0 &&
                secondEndExam > 0 &&
                new MainDataModuleTableAdapters.tbl_education_tests_resultTableAdapter().IsUserFilledTheTestBefore(userID, TestSessionGroupID) == 0 &&
                is_available != 0

)
            {


                for (int i = 0; i < DataList1.Items.Count; i++)
                {

                    int QuestionID = 0;
                    string Answer = "";

                    QuestionID = int.Parse(((HiddenField)DataList1.Items[i].FindControl("hf_key")).Value);
                    RadioButton rbA = (RadioButton)DataList1.Items[i].FindControl("rb_a");
                    RadioButton rbB = (RadioButton)DataList1.Items[i].FindControl("rb_b");
                    RadioButton rbC = (RadioButton)DataList1.Items[i].FindControl("rb_c");
                    RadioButton rbD = (RadioButton)DataList1.Items[i].FindControl("rb_d");
                    userID = Convert.ToInt32(new MainDataModuleTableAdapters.tbl_usersTableAdapter().GetUserIDfromUserName(username));
                    Answer = ((TextBox)DataList1.Items[i].FindControl("txt_JavabeTashrihi")).Text;
                    if (rbA.Checked) { Answer = "A"; }
                    if (rbB.Checked) { Answer = "B"; }
                    if (rbC.Checked) { Answer = "C"; }
                    if (rbD.Checked) { Answer = "D"; }
                    int TestGroupID = (int)
                        new MainDataModuleTableAdapters.tbl_education_tests_detailsTableAdapter().GetTestGroupIDFromQuestionID(QuestionID);

                    new MainDataModuleTableAdapters.tbl_education_tests_resultTableAdapter().Insert(userID, QuestionID, Answer, TestGroupID);

                    pnl_TestBody.Visible = false;
                    pnl_TestMessage.Visible = true;
                    pnl_alarm.Visible = false;
                    pnl_alarmOK.Visible = true;

                    Session["OKTestSend"] = "OK";


                }
                Response.Redirect(Request.Url.PathAndQuery);
            }
    }

    public string getRemainSeconds()
    {
        int secondEndExam = (int)new MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter().GetSecondDiffByEndDateToNow(
            Convert.ToInt32(Convert.ToInt32(Request.Cookies["TestSessionGroupID"].Value.ToString())));
        secondEndExam = secondEndExam -20;
        return secondEndExam.ToString();

    }
}
