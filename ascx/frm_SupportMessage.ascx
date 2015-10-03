<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_SupportMessage.ascx.cs" Inherits="ascx_frm_SupportMessage" %>
<div>

    <img alt="" src="../img/LaST%20(Announcement).jpg" 
        style="width: 128px; height: 128px" /><br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" 
        Text="<%$ Resources:Resource, SendMessageToAdmin %>"></asp:Label>
    <br />
    <asp:Panel ID="pnl_body" runat="server">

    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="<%$ Resources:Resource, _name %>"></asp:Label>
                *</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_name" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" 
                    Text="<%$ Resources:Resource, lbl_email %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="<%$ Resources:Resource, tel %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_telno" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="<%$ Resources:Resource, Content %>"></asp:Label>
                *</td>
            <td>
                <asp:TextBox ID="txt_content" runat="server" Height="283px" Width="357px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_content" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" 
                    Text="<%$ Resources:Resource, Send %>" onclick="LinkButton1_Click"></asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="pnl_submitok" runat="server" Visible="False">
        &nbsp;&nbsp;
        <asp:Label ID="Label6" runat="server" 
            Text="<%$ Resources:Resource, MsgSentSuccess %>" Font-Bold="True" 
            ForeColor="#006600"></asp:Label>
    </asp:Panel>
</div>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
