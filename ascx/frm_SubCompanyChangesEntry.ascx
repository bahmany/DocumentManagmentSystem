<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_SubCompanyChangesEntry.ascx.cs" Inherits="ascx_frm_CompanyChangesEntry" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<style type="text/css">
    .style1
    {
        width: 596px;
    }
    .style2
    {
        height: 227px;
    }
    .style3
    {
        width: 596px;
        height: 227px;
    }
</style>
<div dir="rtl" style="font-family: tahoma; font-size: 11px">

    <br />
    <br />

    <asp:Panel ID="pnl_entry_panel" runat="server">
<div>
    <table>
        <tr>
            <td>
                موضوع گزارش</td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                متن گزارش</td>
            <td class="style3">
                <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="300px" 
                    Width="700px">
                </FCKeditorV2:FCKeditor>
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">ثبت</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:ObjectDataSource ID="ods_companyChanges" runat="server" 
                    DeleteMethod="Delete" InsertMethod="Insert" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="MainDataModuleTableAdapters.tbl_subcompanies_changesTableAdapter" 
                    UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_sc_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="sc_title" Type="String" />
                        <asp:Parameter DefaultValue="" Name="sc_text" Type="String" />
                        <asp:Parameter DefaultValue="GetDate()" Name="sc_postDate" Type="DateTime" />
                        <asp:Parameter Name="sc_userID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="sc_title" Type="String" />
                        <asp:Parameter Name="sc_text" Type="String" />
                        <asp:Parameter Name="sc_postDate" Type="DateTime" />
                        <asp:Parameter Name="sc_userID" Type="Int32" />
                        <asp:Parameter Name="Original_sc_id" Type="Int32" />
                    </UpdateParameters>
                </asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </div>

    </asp:Panel>
        <asp:Label ID="pnl_ok" runat="server" Text="اطلاعات وارد شده با موفقیت ثبت شد"></asp:Label>
</div>