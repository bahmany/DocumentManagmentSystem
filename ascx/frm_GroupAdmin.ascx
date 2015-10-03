<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_GroupAdmin.ascx.cs" Inherits="ascx_frm_GroupManager" %>
<div dir="rtl">

    <table>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="ایجاد گروه جدید" 
                    onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:Panel ID="pnl_add_new_group" runat="server" Visible="False">
        <table>
            <tr>
                <td>
                    نام گروه :
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp; توضیحات :
                </td>
                <td>
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="تایید" 
                        Width="75px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="pnl_gridview" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="کد" 
            DataSourceID="ods_group_list">
            <RowStyle BackColor="White" ForeColor="#330099" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="کد" HeaderText="کد" InsertVisible="False" 
                    ReadOnly="True" SortExpression="کد" />
                <asp:BoundField DataField="نام" HeaderText="نام" SortExpression="نام" />
                <asp:BoundField DataField="توضیحات" HeaderText="توضیحات" 
                    SortExpression="توضیحات" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ods_group_list" runat="server" DeleteMethod="Delete" 
            InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetData" 
            TypeName="MainDataModuleTableAdapters.tbl_groupsTableAdapter" 
            UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_کد" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="نام" Type="String" />
                <asp:Parameter Name="توضیحات" Type="String" />
                <asp:Parameter Name="Original_کد" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="نام" Type="String" />
                <asp:Parameter Name="توضیحات" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
    </asp:Panel>
</div>