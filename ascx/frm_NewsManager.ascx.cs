using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MainDataModuleTableAdapters;
using System.Data.Sql;
using System.Data;
using System.Drawing;

public partial class ascx_frm_AddNews : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
               


    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void clearlist()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";

      FCKeditor1.Value= "";

    }


    public string ResizeAndSaveImage(FileUpload fu,bool HighQuality)
    {

        string addr = "";
        string extension = "";
        string fileName = "";
        if (fu.HasFile)
        {
            addr = Guid.NewGuid().ToString();
            fileName = Server.HtmlEncode(FileUpload1.FileName);
            extension = System.IO.Path.GetExtension(fileName);

            if ((extension.ToUpper() == ".JPG") | (extension.ToUpper() == ".GIF"))
            {

                //**** Resize image section ****  
                System.Drawing.Image image_file = System.Drawing.Image.FromStream(fu.PostedFile.InputStream);
                int image_height = image_file.Height;
                int image_width = image_file.Width;
                int max_height = 0;
                int max_width = 0;


                if (HighQuality)
                {
                    max_height = 250;
                    max_width = 400;
                }
                else
                {
                    max_height = 50;
                    max_width = 80;
                }


                image_height = (image_height * max_width) / image_width;
                image_width = max_width;

                if (image_height > max_height)
                {
                    image_width = (image_width * max_height) / image_height;
                    image_height = max_height;
                }


                Bitmap bitmap_file = new Bitmap(image_file, max_width, max_height);
                System.IO.MemoryStream stream = new System.IO.MemoryStream();
                bitmap_file.Save(Server.MapPath("~/uploadedfiles") + "/" + addr + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);

            }
            return "uploadedfiles/" + addr + ".jpg";

        }
        else { return ""; }




    }


    protected void Button4_Click(object sender, EventArgs e)
    {
       

        tbl_newsTableAdapter md = new tbl_newsTableAdapter();
        bool HasFile = FileUpload1.HasFile & FileUpload2.HasFile;
        string thum1 = "";
        string thum2 = "";
        if (HasFile)
        {
            thum1 = ResizeAndSaveImage(FileUpload1, true);
            thum2 = ResizeAndSaveImage(FileUpload2, false);
        }







        if (Session["post"] == null)
        {
            md.Insert(TextBox1.Text, TextBox2.Text, FCKeditor1.Value.ToString(), Convert.ToInt16(DropDownList2.SelectedValue.ToString()), Convert.ToInt16(DropDownList1.SelectedValue.ToString()), thum1, thum2,false, chk_TopNews.Checked);
            GridView1.DataBind();
            clearlist();

        }
        else
        {
            if (HasFile)
            {
                md.UpdateQuery(TextBox1.Text,
                TextBox2.Text,
                FCKeditor1.Value.ToString(),
                Convert.ToInt16(DropDownList2.SelectedValue.ToString()),
                Convert.ToInt16(DropDownList1.SelectedValue.ToString()),
                thum1, thum2,
                DateTime.Now,chk_TopNews.Checked,
                Convert.ToInt16(Session["post"].ToString()
                ));

            }
            else
            {

             md.UpdateWithoutThumb(
                 TextBox1.Text,
                 TextBox2.Text,
                 FCKeditor1.Value.ToString(),
                 Convert.ToInt16(DropDownList2.SelectedValue.ToString()),
                 Convert.ToInt16(DropDownList1.SelectedValue.ToString()),
                 true,
                 chk_TopNews.Checked,
                 Convert.ToInt32(Session["post"].ToString())
                 );

            }
            GridView1.DataBind();
            Session.Remove("post");
            clearlist();


        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        tbl_newsTableAdapter md = new tbl_newsTableAdapter();
        md.UpdateQuerySetVisible((sender as CheckBox).Checked, Convert.ToInt16((sender as CheckBox).ToolTip.ToString()));
        GridView1.DataBind();

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        tbl_newsTableAdapter md = new tbl_newsTableAdapter();
        int id = Convert.ToInt16((sender as LinkButton).ToolTip.ToString());
        MainDataModule.tbl_newsDataTable dt = new MainDataModule.tbl_newsDataTable();
        md.FillBy(dt, id);

        DataRow dr = dt.Rows[0];

            TextBox1.Text = dr["تیتر"].ToString();
            TextBox2.Text = dr["خلاصه"].ToString();
            FCKeditor1.Value = dr["متن خبر"].ToString();
            //TextBox3.Text = dr["عکس کوچک"].ToString();
            //TextBox4.Text = dr["عکس بزرگ"].ToString();
            DropDownList2.SelectedValue = dr["نوع"].ToString();
            DropDownList1.SelectedValue = dr["زبان"].ToString();
            chk_TopNews.Checked = (bool) dr[9];
            Session["post"] = id.ToString();

 
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {



    }
    protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
    {
        tbl_news_commentsTableAdapter md = new tbl_news_commentsTableAdapter();
        md.UpdateQuery((sender as CheckBox).Checked, Convert.ToInt16((sender as CheckBox).ToolTip.ToString()));
        GridView2.DataBind();
    }
}
