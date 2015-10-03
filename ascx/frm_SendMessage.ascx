<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_SendMessage.ascx.cs" Inherits="ascx_frm_SendMessage" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<style type="text/css">
    .style1
    {
        width: 345px;
    }
</style>
<asp:Panel ID="pnl_SendMessage" runat="server">
<div>
<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" 
                Text="<%$ Resources:Resource, user_name %>"></asp:Label>
        </td>
        <td class="style1">
            <asp:TextBox ID="txt_username" runat="server" AutoPostBack="True" 
                ontextchanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Label ID="lbl_msg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="<%$ Resources:Resource, Subject %>"></asp:Label>
        </td>
        <td class="style1">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label3" runat="server" Text="<%$ Resources:Resource, Content %>"></asp:Label>
        </td>
    </tr>
</table>
<FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="300px">
</FCKeditorV2:FCKeditor>
<p>
    <asp:LinkButton ID="lnk_send" runat="server" 
        Text="<%$ Resources:Resource, Send %>" onclick="LinkButton1_Click"></asp:LinkButton>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</div>
</asp:Panel>

<asp:Panel ID="pnl_Grid" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="کد" DataSourceID="ods_SendList" EnableModelValidation="True">
        <Columns>
            <asp:BoundField DataField="کاربر دریافت کننده" HeaderText="کاربر دریافت کننده" 
                ReadOnly="True" SortExpression="کاربر دریافت کننده" />
            <asp:BoundField DataField="موضوع" HeaderText="موضوع" SortExpression="موضوع" />
            <asp:BoundField DataField="تاریخ دریافت" HeaderText="تاریخ دریافت" 
                ReadOnly="True" SortExpression="تاریخ دریافت" />
            <asp:BoundField DataField="متن" HeaderText="متن" SortExpression="متن" />
            <asp:CheckBoxField DataField="دیده شده" HeaderText="دیده شده" 
                SortExpression="دیده شده" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ods_SendList" runat="server" DeleteMethod="Delete" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetSentMessages" 
        TypeName="MainDataModuleTableAdapters.tbl_messagesTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_کد" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:Parameter Name="ms_from_userID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="موضوع" Type="String" />
            <asp:Parameter Name="متن" Type="String" />
            <asp:Parameter Name="دیده_شده" Type="Boolean" />
            <asp:Parameter Name="پاک_شده_از_طرف_ارسال_کننده" Type="Boolean" />
            <asp:Parameter Name="پاک_شده_از_طرف_دریافت_کننده" Type="Boolean" />
            <asp:Parameter Name="Original_کد" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Panel>

