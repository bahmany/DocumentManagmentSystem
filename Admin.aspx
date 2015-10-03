<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" EnableViewState="True" EnableViewStateMac="false" ValidateRequest="False" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="font-family: tahoma; font-size: 11px" dir="rtl">
    <form id="form1" runat="server">
    <div>
    <div id="menu">

     
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton1_Click">فراموشی رمز عبور</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton1_Click">مدیریت گروهها</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton1_Click">مدیریت دسترسی ها</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton1_Click">مدیریت کاربران</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton1_Click">مدیریت نرخ ها</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton11" runat="server" onclick="LinkButton1_Click">مدیریت خبرها</asp:LinkButton>|

        <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton1_Click">مرور پیام های مدیر عامل</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton1_Click">مرور پیام های مع هماهنگ کننده</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton9" runat="server" onclick="LinkButton1_Click">مرور پیام های روابط عمومی</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton1_Click">مدیریت شرکت های تابعه</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton12" runat="server" onclick="LinkButton1_Click">مدیریت سهام داران</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton15" runat="server" onclick="LinkButton1_Click">مدیریت گالری عکس</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">مدیریت پارامترها</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton13" runat="server" onclick="LinkButton1_Click">مدیریت آزمون</asp:LinkButton>|
        <asp:LinkButton ID="LinkButton14" runat="server" onclick="LinkButton1_Click">مدیریت مقالات آموزشی</asp:LinkButton>


    &nbsp;


    </div>
    <br />
    <div>
    
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
    
    </div>
    </div>
    </form>
</body>
</html>
