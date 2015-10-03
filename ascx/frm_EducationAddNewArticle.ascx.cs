using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ascx_frm_EducationAddNewArticle : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string addr = "";
        string extension = "";
        string fileName = "";
        if (fu_docs.HasFile)
        {
            addr = Guid.NewGuid().ToString();
            fileName = Server.HtmlEncode(fu_docs.FileName);
            extension = System.IO.Path.GetExtension(fileName);
            string fln = Server.MapPath("~\\uploadedfiles") + "\\" + fu_docs.FileName;
            fu_docs.SaveAs(fln);
            fln = "..\\uploadedfiles" + "\\" + fu_docs.FileName;
             new MainDataModuleTableAdapters.tbl_education_articlesTableAdapter().Insert(
                txt_title.Text, txt_summery.Text, "", 0, "", fln, DateTime.Now, DateTime.Now);
            GridView1.DataBind();
                 }
    }
}
