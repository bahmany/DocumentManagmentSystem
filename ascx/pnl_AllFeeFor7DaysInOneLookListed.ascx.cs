using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;

public partial class ascx_panels_pnl_AllFeeFor7DaysInOneLook : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ddl_selectCsot_SelectedIndexChanged(object sender, EventArgs e)
    {
      //  RadChart1.DataBind();
    }
    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
       
        
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
           if (e.Row.RowType == DataControlRowType.DataRow)
           {
               DataRowView drv = (DataRowView)e.Row.DataItem;
               int code = 0;
               if (drv["balance"] != null)
               {
                   code = Convert.ToInt32(drv["balance"]);
               } else 
               {
                   code = 0;
               }

               switch (code)
               {
                   case 0:
                       e.Row.ForeColor = System.Drawing.Color.FromName("#1F16D1");
                       break;
                   case 1:
                       e.Row.ForeColor = System.Drawing.Color.FromName("#DC0404");
                       break;
                   case 2:
                       e.Row.ForeColor = System.Drawing.Color.FromName("#004E0D");
                       break;

               }
        

           }
        



    }
}
