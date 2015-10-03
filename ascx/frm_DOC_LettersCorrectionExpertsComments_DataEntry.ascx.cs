using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MainDataModuleTableAdapters;

public partial class ascx_frm_DOC_LettersCorrectionExpertsComments_DataEntry : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        
        int LetterID = 0;
        int UserID = 5;
        if (Request.QueryString["CrID"] != null)
        {
            LetterID = Convert.ToInt32(Request.QueryString["CrID"].ToString());
        }
        if (Request.Cookies["username"] != null)
        {
            UserID = Convert.ToInt32(new tbl_usersTableAdapter().GetUserIDfromUserName(Request.Cookies["username"].Value.ToString()));
        }

        
        tbl_doc_letters_correctionsTableAdapter tbl = new tbl_doc_letters_correctionsTableAdapter();
        tbl.InsertQuery(LetterID, UserID, DateTime.Now, TextBox1.Text);

    }
}
