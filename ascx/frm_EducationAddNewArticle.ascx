<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_EducationAddNewArticle.ascx.cs" Inherits="ascx_frm_EducationAddNewArticle" %>
<div dir="rtl" style="font-family: tahoma; font-size: 12px">

    <table>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                تیتر*</td>
            <td>
                <asp:TextBox ID="txt_title" runat="server" Width="239px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                خلاصه مطلب*</td>
            <td>
                <asp:TextBox ID="txt_summery" runat="server" Width="410px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                فایل*</td>
            <td>
                <asp:FileUpload ID="fu_docs" runat="server" Width="216px" />
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
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">انتقال</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="ea_id" DataSourceID="ods_Edu_Artic_List" 
        GridLines="Vertical">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ea_name" HeaderText="تیتر مقاله" 
                SortExpression="ea_name" />
            <asp:BoundField DataField="ea_summery" HeaderText="خلاصه مقاله" 
                SortExpression="ea_summery" />
            <asp:BoundField DataField="shPostDate" HeaderText="تاریخ ثبت" ReadOnly="True" 
                SortExpression="shPostDate" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#DCDCDC" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ods_Edu_Artic_List" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_education_articlesTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ea_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ea_name" Type="String" />
            <asp:Parameter Name="ea_summery" Type="String" />
            <asp:Parameter Name="ea_body" Type="String" />
            <asp:Parameter Name="ea_type" Type="Int32" />
            <asp:Parameter Name="ea_thumb" Type="String" />
            <asp:Parameter Name="ea_fileAddr" Type="String" />
            <asp:Parameter Name="ea_postDate" Type="DateTime" />
            <asp:Parameter Name="ea_ObsDate" Type="DateTime" />
            <asp:Parameter Name="Original_ea_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ea_name" Type="String" />
            <asp:Parameter Name="ea_summery" Type="String" />
            <asp:Parameter Name="ea_body" Type="String" />
            <asp:Parameter Name="ea_type" Type="Int32" />
            <asp:Parameter Name="ea_thumb" Type="String" />
            <asp:Parameter Name="ea_fileAddr" Type="String" />
            <asp:Parameter Name="ea_postDate" Type="DateTime" />
            <asp:Parameter Name="ea_ObsDate" Type="DateTime" />
        </InsertParameters>
    </asp:ObjectDataSource>
</div>