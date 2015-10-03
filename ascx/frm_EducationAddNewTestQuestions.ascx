<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_EducationAddNewTestQuestions.ascx.cs" Inherits="ascx_frm_EducationAddNewTestQuestions" %>
<style type="text/css">
    .style1
    {
        color: #339933;
    }
</style>
<div dir="rtl" style="font-family: tahoma; font-size: 12px">
    <table>
        <tr>
            <td>
                نوع سوال</td>
            <td>
                <asp:DropDownList ID="drp_type" runat="server" 
                    onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                    <asp:ListItem Selected="True" Value="2">تستی</asp:ListItem>
                    <asp:ListItem Value="1">تشریحی</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                متن سوال</td>
            <td>
                <asp:TextBox ID="txt_content" runat="server" Width="244px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                تست A</td>
            <td>
                <asp:TextBox ID="txt_a" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                تست B</td>
            <td>
                <asp:TextBox ID="txt_B" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                تست C</td>
            <td>
                <asp:TextBox ID="txt_C" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                تست D</td>
            <td>
                <asp:TextBox ID="txt_D" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                بارم</td>
            <td>
                <asp:TextBox ID="txt_mark" runat="server">2</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                نمره منفی</td>
            <td>
                <asp:TextBox ID="txt_minus_mark" runat="server">0</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                جواب</td>
            <td>
                <asp:TextBox ID="txt_answer" runat="server"></asp:TextBox>
            </td>
            <td>
                <b><span class="style1">بعنوان مثل A</span><br class="style1" />
                <span class="style1">AB دو گزینه ای</span><br class="style1" />
                <span class="style1">ABCD تمام گزینه ها</span></b></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">تائید</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<div>

    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="etq_id" 
        DataSourceID="ods_testsList" GridLines="Vertical">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <Columns>
            <asp:CommandField CancelText="انصراف" DeleteText="حذف" EditText="ویرایش" 
                ShowDeleteButton="True" ShowEditButton="True" UpdateText="تائید" />
            <asp:BoundField DataField="etq_id" HeaderText="کد سوال" InsertVisible="False" 
                ReadOnly="True" SortExpression="etq_id" />
            <asp:BoundField DataField="etq_type" HeaderText="نوع سوال" 
                SortExpression="etq_type" />
            <asp:BoundField DataField="etq_content" HeaderText="متن سوال" 
                SortExpression="etq_content" />
            <asp:BoundField DataField="etq_A" HeaderText="گزینه ی A" 
                SortExpression="etq_A" />
            <asp:BoundField DataField="etq_B" HeaderText="گزینه ی B" 
                SortExpression="etq_B" />
            <asp:BoundField DataField="etq_C" HeaderText="گزینه ی C" 
                SortExpression="etq_C" />
            <asp:BoundField DataField="etq_D" HeaderText="گزینه ی D" 
                SortExpression="etq_D" />
            <asp:BoundField DataField="etq_mark" HeaderText="بارم" 
                SortExpression="etq_mark" />
            <asp:BoundField DataField="etq_minus_mark" HeaderText="بارم منفی" 
                SortExpression="etq_minus_mark" />
            <asp:BoundField DataField="etq_answer" HeaderText="جواب" 
                SortExpression="etq_answer" />
            <asp:BoundField DataField="etq_group_link" HeaderText="کد آزمون" 
                SortExpression="etq_group_link" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="Gainsboro" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ods_testsList" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataBy" 
        TypeName="MainDataModuleTableAdapters.tbl_education_tests_detailsTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_etq_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="etq_type" Type="Int32" />
            <asp:Parameter Name="etq_content" Type="String" />
            <asp:Parameter Name="etq_A" Type="String" />
            <asp:Parameter Name="etq_B" Type="String" />
            <asp:Parameter Name="etq_C" Type="String" />
            <asp:Parameter Name="etq_D" Type="String" />
            <asp:Parameter Name="etq_mark" Type="Double" />
            <asp:Parameter Name="etq_minus_mark" Type="Double" />
            <asp:Parameter Name="etq_answer" Type="String" />
            <asp:Parameter Name="etq_group_link" Type="Int32" />
            <asp:Parameter Name="Original_etq_id" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:SessionParameter DefaultValue="0" Name="etq_group_link" 
                SessionField="TestGroupID" Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="etq_type" Type="Int32" />
            <asp:Parameter Name="etq_content" Type="String" />
            <asp:Parameter Name="etq_A" Type="String" />
            <asp:Parameter Name="etq_B" Type="String" />
            <asp:Parameter Name="etq_C" Type="String" />
            <asp:Parameter Name="etq_D" Type="String" />
            <asp:Parameter Name="etq_mark" Type="Double" />
            <asp:Parameter Name="etq_minus_mark" Type="Double" />
            <asp:Parameter Name="etq_answer" Type="String" />
            <asp:Parameter Name="etq_group_link" Type="Int32" />
        </InsertParameters>
    </asp:ObjectDataSource>

</div>
</div>