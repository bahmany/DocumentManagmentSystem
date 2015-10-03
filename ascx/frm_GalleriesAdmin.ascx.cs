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

public partial class ascx_frm_GalleriesAdmin : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void clearform()
    {
        g_link_page.Text = "";
        g_desc.Text = "";
        g_name.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
