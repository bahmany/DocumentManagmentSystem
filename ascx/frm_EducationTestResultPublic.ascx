<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_EducationTestResultPublic.ascx.cs" Inherits="ascx_frm_EducationTestResultPublic" %>
<div>

    <br />
    <br />

    <asp:Panel ID="pnl_ResultDetails" runat="server">
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataSourceID="ods_TestPaper" GridLines="Vertical">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="rowID" HeaderText="ردیف" SortExpression="rowID" />
            <asp:BoundField DataField="QuestionBody" HeaderText="سوال" 
                SortExpression="QuestionBody" />
            <asp:BoundField DataField="Answer" HeaderText="جواب سوال" 
                SortExpression="Answer" />
            <asp:BoundField DataField="result" HeaderText="جواب" SortExpression="result" />
            <asp:BoundField DataField="Column1" HeaderText="نتیجه" ReadOnly="True" 
                SortExpression="Column1" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <EmptyDataTemplate>
            شما در این آزمون شرکت نکرده اید
        </EmptyDataTemplate>
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#DCDCDC" />
    </asp:GridView>
        <br />
        <br />
        <br />
    <asp:ObjectDataSource ID="ods_TestPaper" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_education_result_detailTableAdapter">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="testID" SessionField="testID" 
                Type="Int32" />
            <asp:SessionParameter DefaultValue="-1" Name="userID" SessionField="userID" 
                Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
        </asp:Panel>

</div>