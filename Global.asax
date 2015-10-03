<%@ Application Language="C#" %>

<script runat="server">

    
    public String get_language_value()
    {
        return Request.Cookies["Language_ID"].Value.ToString();
    }


    protected void Page_PreInit()
    {
       
    }
    
    public void initial_culture(String language_id)
    {
        if (language_id == "1")
        {
            System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.GetCultureInfo("fa-IR");
            System.Threading.Thread.CurrentThread.CurrentUICulture = System.Globalization.CultureInfo.GetCultureInfo("fa-IR");
        }
        else
        {
            System.Threading.Thread.CurrentThread.CurrentCulture = System.Globalization.CultureInfo.GetCultureInfo("en-US");
            System.Threading.Thread.CurrentThread.CurrentUICulture = System.Globalization.CultureInfo.GetCultureInfo("en-US");
        }
    }

    public void check_language_cookie()
    {
        // HttpCookie MyCookie = Request.Cookies["Language_ID"];

        if (Request.Cookies["Language_ID"] == null)
        {
            HttpCookie MyCookie = new HttpCookie("Language_ID");
            DateTime now = DateTime.Now;
            MyCookie.Value = "1";
            MyCookie.Expires = now.AddYears(2);
            Response.Cookies.Add(MyCookie);
            //Response.Redirect("default.aspx");

        }
    }

   
    
    
 void Application_PreRequestHandlerExecute(object sender, EventArgs e)
{
     
    check_language_cookie();
    initial_culture(get_language_value());

    Page p = this.Context.Handler as Page;
    if (p != null)
    {
        p.PreInit += new EventHandler(page_PreInit);
        p.Title = "Atiehfoulad.com";
    }     
    
}


 void page_PreInit(object sender, EventArgs e)
 {

     /*
     
     
     Page  p = this.Context.Handler as Page;
     
     string str_ck = "";
     if (Request.Cookies["Theme"] != null)
     {
         str_ck = Request.Cookies["Theme"].Value.ToString();     
     }
     
     
     if (p != null)
     {
         if (str_ck != "")
         {
             p.Theme = str_ck;
         }
         else{
             Response.Cookies.Add(new HttpCookie("Theme","Blue"));
         p.Theme = "Blue";}
         
     }
*/
 }

    
    
    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
