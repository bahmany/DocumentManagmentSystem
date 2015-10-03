<%@ WebHandler Language="C#" Class="doc_Handler" %>

using System;
using System.Web;

public class doc_Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Write("Hello World");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}