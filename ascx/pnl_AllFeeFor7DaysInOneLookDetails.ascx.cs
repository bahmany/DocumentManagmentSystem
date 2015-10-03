using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MainDataModuleTableAdapters;


public partial class ascx_panels_pnl_AllFeeFor7DaysInOneLook : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        double highPrice=35000;
        double lowPrice = 0;

        if (Session["CostID"] == null)
        {
            Session["CostID"] = "1";
        }


        //int costID = Convert.ToInt32(ddl_selectCsot.SelectedValue.ToString());



        if (Session["CostID"] != null)
        {
            highPrice = 0;
            lowPrice = 2000000;
            foreach (DataRow dr in
                new tbl_GetTop40PublicCostsForChart1TableAdapter().GetData(Convert.ToInt32(Session["CostID"].ToString()), 1, true, 1)
                )
                    {
                        if (highPrice < Convert.ToDouble(dr["قیمت"].ToString()))
                        {
                            highPrice = Convert.ToDouble(dr["قیمت"].ToString());
                        }
                        if (lowPrice > Convert.ToDouble(dr["قیمت"].ToString()))
                        {
                            lowPrice = Convert.ToDouble(dr["قیمت"].ToString());
                        }
                
             
                    
                        }
            double stp = (highPrice - lowPrice) / 10;
            if (stp == 0)
                { stp = 10; }
            RadChart1.PlotArea.YAxis.Step = stp;
            RadChart1.PlotArea.YAxis.MaxValue = highPrice + (stp * 2);
                RadChart1.PlotArea.YAxis.MinValue = lowPrice - (stp*2);
                

                    

            ods_GetTopPublicCostsChart.SelectParameters["c_link_to_cost_goods"].DefaultValue = Session["CostID"].ToString();
            ddl_selectCsot.SelectedValue = Session["CostID"].ToString();
            Session.Remove("CostID");
            RadChart1.DataBind();
        }
          
    }
    protected void ddl_selectCsot_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["CostID"] = ddl_selectCsot.SelectedValue;
        Response.Redirect(Request.Url.PathAndQuery);
        //RadChart1.DataBind();

    }
}
