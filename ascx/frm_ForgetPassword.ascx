<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_ForgetPassword.ascx.cs" Inherits="ascx_frm_ForgetPassword" %>
<asp:Panel ID="Panel2" runat="server" CssClass="_pnl" Width="495px">
    <div class="style5">
        <asp:Label ID="Label2" runat="server" 
            Text="<%$ Resources:Resource, _Send_My_password %>"></asp:Label>
        <table class="style1">
            <tr>
                <td colspan="5" height="20">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label1" runat="server" class="_lbl" 
                        Text="<%$ Resources:Resource, lbl_email %>" />
                    :</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="_txtbox" Width="148px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" CssClass="_btn" 
                        onclick="Button2_Click" Text="<%$ Resources:Resource, Send %>" Width="82px" />
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" CssClass="_lbl" ForeColor="#CC0000" 
                        Text="<%$ Resources:Resource, _email_not_found %>" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <br />
</asp:Panel>
<asp:Panel ID="Panel3" runat="server" Visible="False">
    <asp:Label ID="Label4" runat="server" 
        Text="<%$ Resources:Resource, forgottenPasswordSent %>"></asp:Label>
</asp:Panel>

