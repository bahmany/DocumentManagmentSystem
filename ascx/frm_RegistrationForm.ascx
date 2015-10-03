<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_RegistrationForm.ascx.cs" Inherits="frmRegistrationForm" %>
<%@ Register assembly="System.Web.Entity, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089" namespace="System.Web.UI.WebControls" tagprefix="asp" %>
<style type="text/css">

        .style6
        {   
            text-align: left;
            margin-left: 40px;
        }
        .style7
        {
            color: #CC0000;
            font-weight: bold;
            font-size: x-small;
        }
            
    

    
        .style8
        {
            width: 245px;
            text-align: left;
        }
    </style>
    


<p>
    <br />
</p>
<asp:Panel ID="pnl_registration_form" runat="server">
    <table>
        <tr>
            <td colspan="5" height="20">
                <asp:Label ID="Label17" runat="server" Font-Size="18px" 
                    Text="<%$ Resources:Resource, registration %>"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, __registration_form_alter_message %>" />

            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label1" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, name %>" />
                <span class="style7">*</span></td>
            <td class="style8">
                <asp:TextBox ID="TextBox6" runat="server" CssClass="_txtbox" Width="245px"></asp:TextBox>
            </td>
            
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, Family %>" />
                <span class="style7">*</span></td>
            <td class="style8">
                <asp:TextBox ID="TextBox15" runat="server" CssClass="_txtbox" Width="245px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label3" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, Company_Name %>" />
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox16" runat="server" CssClass="_txtbox" Width="245px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label4" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, tel %>" />
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox17" runat="server" CssClass="_txtbox" Width="245px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label5" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, lbl_email %>" />
                <span class="style7">*</span></td>
            <td class="style8">
                <asp:TextBox ID="TextBox18" runat="server" CssClass="_txtbox" Width="245px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label11" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, user_name %>" />
                <span class="style7">*</span></td>
            <td class="style8">
                <asp:TextBox ID="TextBox23" runat="server" CssClass="_txtbox" Width="245px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label6" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, lbl_password %>" />
                <span class="style7">*<asp:CompareValidator ID="CompareValidator1" 
                runat="server" ControlToCompare="TextBox19" ControlToValidate="TextBox24" 
                ErrorMessage="  Wrong Password !"></asp:CompareValidator>
                </span>
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox19" runat="server" CssClass="_txtbox" 
                TextMode="Password" Width="245px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label12" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, confirmpassword %>" />
                <span class="style7">*</span></td>
            <td class="style8">
                <asp:TextBox ID="TextBox24" runat="server" CssClass="_txtbox" 
                TextMode="Password" Width="245px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label7" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, occupation %>" />
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox20" runat="server" CssClass="_txtbox" Width="245px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label8" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, How_Find_This_Web %>" />
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox21" runat="server" CssClass="_txtbox" Height="99px" 
                Width="245px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label9" runat="server" class="_lbl" 
                Text="<%$ Resources:Resource, Other_Exp %>" />
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox22" runat="server" CssClass="_txtbox" Width="245px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" CssClass="_btn" 
                Text="<%$ Resources:Resource, _OK %>" Width="100px" 
                onclick="Button1_Click" />
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox6" CssClass="_lbl" 
                    ErrorMessage="<%$ Resources:Resource, _name_is_require %>"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox15" CssClass="_lbl" 
                    ErrorMessage="<%$ Resources:Resource, _family_is_require %>"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox18" CssClass="_lbl" 
                    ErrorMessage="<%$ Resources:Resource, _email_is_require %>"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox19" CssClass="_lbl" 
                    ErrorMessage="<%$ Resources:Resource, _password_is_require %>"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox18" CssClass="_lbl" 
                    ErrorMessage="<%$ Resources:Resource, _email_verify %>" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
<asp:Panel ID="pnl_registration_complete" runat="server" Visible="False">
    <asp:Label ID="Label15" runat="server" CssClass="_lbl" 
    ForeColor="#006600" Text="<%$ Resources:Resource, _registered_success %>"></asp:Label>
    <br />
    <asp:HyperLink ID="HyperLink1" runat="server" 
    NavigateUrl="~/homepage.aspx" Text="<%$ Resources:Resource, lbl_safhe_aval %>"></asp:HyperLink>

</asp:Panel>

<asp:Panel ID="pnl_registration_forget" runat="server" Visible="False">
    <asp:Label ID="Label16" runat="server" Font-Bold="True" 
    ForeColor="#990000" style="font-size: xx-large" 
    Text="<%$ Resources:Resource, _you_registered_before %>"></asp:Label>
    <br />
    <asp:Label ID="Label13" runat="server" CssClass="_lbl" 
    ForeColor="#990000" Text="<%$ Resources:Resource, _clear_form %>"></asp:Label>
    <br />
    <asp:Button ID="Button2" runat="server" CssClass="_btn" 
    onclick="Button2_Click" Text="<%$ Resources:Resource, _clear_form_btn %>" />
    <br />
    <asp:Label ID="Label14" runat="server" CssClass="_lbl" 
    ForeColor="#990000" Text="<%$ Resources:Resource, _forgot_password %>"></asp:Label>
    <br />
    <asp:Button ID="Button3" runat="server" CssClass="_btn" 
    Text="<%$ Resources:Resource, _forgot_password_btn %>" 
        onclick="Button3_Click" />

</asp:Panel>


