<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_UserPrivateArea.ascx.cs" Inherits="ascx_frm_UserPrivateArea" %>

<div dir="rtl" style="padding: 10px">

<div id="divMenu" style="font-family: tahoma; font-size: 12px">
    
    <asp:LinkButton ID="lnk_menu1" runat="server" onclick="lnk_menu1_Click">ثبت وقایع شرکت</asp:LinkButton>&nbsp;&nbsp;|&nbsp;&nbsp;

    <asp:LinkButton ID="LinkButton1" runat="server" onclick="lnk_menu1_Click">ارسال پیام</asp:LinkButton>
&nbsp; |&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server">پیام های دریافتی</asp:LinkButton>
&nbsp; |&nbsp;
    <asp:LinkButton ID="LinkButton4" runat="server">گزارش ها</asp:LinkButton>
&nbsp; |&nbsp;
    <asp:LinkButton ID="LinkButton5" runat="server">تنظیمات</asp:LinkButton>

</div>
    <asp:Panel ID="ph_loader" runat="server">
    </asp:Panel>
</div>
