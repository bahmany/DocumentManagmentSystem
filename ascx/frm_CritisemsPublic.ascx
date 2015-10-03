<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_CritisemsPublic.ascx.cs" Inherits="ascx_frm_CritisemsPublic" %>
<div>
    <asp:Panel ID="pnl_body" runat="server">

    <table>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="drp_who" runat="server">
                    <asp:ListItem Selected="True" Value="1">ارسال به روابط عمومی</asp:ListItem>
                    <asp:ListItem Value="2">ارسال به مدیریت مراکز خدماتی</asp:ListItem>
                    <asp:ListItem Value="3">ارسال به مدیرعامل</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_name" runat="server" Text="<%$ Resources:Resource, _name %>"></asp:Label>
                *</td>
            <td>
                <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_name" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_phoneno" runat="server" 
                    Text="<%$ Resources:Resource, tel %>"></asp:Label>
                *</td>
            <td>
                <asp:TextBox ID="txt_telno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_telno" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_email" runat="server" 
                    Text="<%$ Resources:Resource, lbl_email %>"></asp:Label>
                *</td>
            <td>
                <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_email" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_content" runat="server" 
                    Text="<%$ Resources:Resource, matne_payam %>"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txt_content" runat="server" Height="286px" 
                    TextMode="MultiLine" Width="425px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lnk_send" runat="server" onclick="lnk_send_Click" 
                    Text="<%$ Resources:Resource, Send %>"></asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </asp:Panel>
    <asp:Panel ID="pnl_submitok" runat="server" Visible="False">
        <asp:Label ID="Label1" runat="server" 
            Text="<%$ Resources:Resource, MsgSentSuccess %>" Font-Bold="True" 
            ForeColor="#339933"></asp:Label>
    </asp:Panel>
</div>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
