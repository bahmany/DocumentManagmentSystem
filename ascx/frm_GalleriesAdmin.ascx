<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_GalleriesAdmin.ascx.cs" Inherits="ascx_frm_GalleriesAdmin" %>
<div dir="rtl">
<table>
    <tr>
        <td>
            نام گالری عکس</td>
        <td>
            <asp:TextBox ID="g_name" runat="server"></asp:TextBox>
                </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            توضیحات</td>
        <td>
            <asp:TextBox ID="g_desc" runat="server" Height="122px" Width="311px" 
                TextMode="MultiLine"></asp:TextBox>
                </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            آدرس گالری</td>
        <td>
            <asp:TextBox ID="g_link_page" runat="server"></asp:TextBox>
                </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="ثبت" Width="73px" 
                onclick="Button1_Click" />
                </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
<div>
    <asp:ObjectDataSource ID="ods_galleris" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_galleriesTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_g_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="g_name" Type="String" />
            <asp:Parameter Name="g_desc" Type="String" />
            <asp:Parameter Name="g_date_of_post" Type="DateTime" />
            <asp:Parameter Name="g_date_shmasi" Type="String" />
            <asp:Parameter Name="g_link_page" Type="String" />
            <asp:Parameter Name="Original_g_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="g_name" Name="g_name" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="g_desc" Name="g_desc" PropertyName="Text" 
                Type="String" />
            <asp:ControlParameter ControlID="g_link_page" DefaultValue="" 
                Name="g_link_page" PropertyName="Text" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="g_id" DataSourceID="ods_galleris" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowSelectButton="True" />
            <asp:BoundField DataField="g_id" HeaderText="g_id" InsertVisible="False" 
                ReadOnly="True" SortExpression="g_id" />
            <asp:BoundField DataField="g_name" HeaderText="g_name" 
                SortExpression="g_name" />
            <asp:BoundField DataField="g_desc" HeaderText="g_desc" 
                SortExpression="g_desc" />
            <asp:BoundField DataField="g_date_of_post" HeaderText="g_date_of_post" 
                SortExpression="g_date_of_post" />
            <asp:BoundField DataField="g_date_shmasi" HeaderText="g_date_shmasi" 
                SortExpression="g_date_shmasi" />
            <asp:BoundField DataField="g_link_page" HeaderText="g_link_page" 
                SortExpression="g_link_page" />
        </Columns>
    </asp:GridView>
</div>
</div>