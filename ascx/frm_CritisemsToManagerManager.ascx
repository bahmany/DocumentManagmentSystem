<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_CritisemsToManagerManager.ascx.cs" Inherits="ascx_frm_critisems" %>
<div dir="rtl">
<div>

    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">پیشنهادهای دیده نشده</asp:LinkButton>
&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">آرشیو پیشنهادها</asp:LinkButton>

    <br />

</div>
<div>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="کد" DataSourceID="ods_cr" ForeColor="Black" GridLines="Vertical">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="کد" HeaderText="کد" ReadOnly="True" 
                SortExpression="کد" InsertVisible="False" />
            <asp:BoundField DataField="تاریخ" HeaderText="تاریخ" SortExpression="تاریخ" />
            <asp:BoundField DataField="نام" HeaderText="نام" SortExpression="نام" />
            <asp:BoundField DataField="متن" HeaderText="متن" SortExpression="متن" />
            <asp:BoundField DataField="ایمیل" HeaderText="ایمیل" SortExpression="ایمیل" />
            <asp:BoundField DataField="کد کاربری" HeaderText="کد کاربری" 
                SortExpression="کد کاربری" />
            <asp:BoundField DataField="تلفن" HeaderText="تلفن" SortExpression="تلفن" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                        Checked='<%# Bind("[مشاهده شده]") %>' 
                        oncheckedchanged="CheckBox1_CheckedChanged" Text="مشاهده شده" 
                        ToolTip='<%# Eval("کد") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ods_cr" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_criticisms_to_managerTableAdapter" 
        UpdateMethod="UpdateQuery">
        <DeleteParameters>
            <asp:Parameter Name="Original_کد" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="مشاهده_شده" Type="Boolean" />
            <asp:Parameter Name="Original_کد" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:Parameter Name="cr_seen" Type="Boolean" />
        </SelectParameters>
    </asp:ObjectDataSource>

</div>


</div>