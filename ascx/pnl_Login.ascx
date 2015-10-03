<%@ Control Language="C#" AutoEventWireup="true" CodeFile="pnl_Login.ascx.cs" Inherits="ascx_pnl_Login" %>
<br />
<style type="text/css">
    .style1
    {
        width: 96px;
    }
    .style2
    {
        width: 222px;
    }
    .style3
    {
        width: 8px;
    }
</style>
<center>
<table style="width: 369px">
    <tr>
        <td class="style1">
            <asp:Label ID="Label1" runat="server" 
                Text="<%$ Resources:Resource, lbl_name_karbar %>"></asp:Label>
        </td>
        <td class="style2">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            <asp:Label ID="Label2" runat="server" 
                Text="<%$ Resources:Resource, lbl_password %>"></asp:Label>
        </td>
        <td class="style2">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            <asp:Label ID="Label3" runat="server" ForeColor="#CC0000" 
                Text="<%$ Resources:Resource, lbl_notlogin %>" Visible="False"></asp:Label>
        </td>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style1">
            &nbsp;</td>
        <td class="style2">
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                Text="<%$ Resources:Resource, login %>"></asp:LinkButton>
        </td>
        <td class="style3">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:HyperLink ID="HyperLink1" runat="server" 
                Text="<%$ Resources:Resource, if_forget %>" NavigateUrl="../links.aspx?page_id=3"></asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:HyperLink ID="HyperLink2" runat="server" 
                Text="<%$ Resources:Resource, if_not_reg %>" NavigateUrl="../links.aspx?page_id=1"></asp:HyperLink>
        </td>
    </tr>
</table>
</center>
<br />
<br />