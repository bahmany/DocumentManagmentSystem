<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_EducationTestResult.ascx.cs" Inherits="ascx_frm_EducationTestResult" %>
<div style="font-family: tahoma; font-size: 12px"  dir="rtl">
    <asp:Panel ID="pnl_ResultList" runat="server">
  
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataKeyNames="etugd_id,etug_id" DataSourceID="ods_ResultList" 
        GridLines="Vertical">
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="تعداد سوالات" HeaderText="تعداد سوالات" 
                ReadOnly="True" SortExpression="تعداد سوالات" />
            <asp:BoundField DataField="اشتباه ها" HeaderText="اشتباه ها" ReadOnly="True" 
                SortExpression="اشتباه ها" />
            <asp:BoundField DataField="صحیح" HeaderText="صحیح" ReadOnly="True" 
                SortExpression="صحیح" />
            <asp:BoundField DataField="تشریحی" HeaderText="تشریحی" ReadOnly="True" 
                SortExpression="تشریحی" />
            <asp:BoundField DataField="u_username" HeaderText="نام کاربری" 
                SortExpression="u_username" />
            <asp:BoundField DataField="u_name" HeaderText="نام" SortExpression="u_name" />
            <asp:BoundField DataField="u_family" HeaderText="نام خانوادگی" 
                SortExpression="u_family" />
            <asp:BoundField DataField="u_email" HeaderText="ایمیل" 
                SortExpression="u_email" />
            <asp:BoundField DataField="u_zamineh" HeaderText="ضمینه" 
                SortExpression="u_zamineh" />
            <asp:BoundField DataField="u_company" HeaderText="شرکت" 
                SortExpression="u_company" />
            <asp:TemplateField HeaderText="ورود به برگه">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        ToolTip='<%# Eval("etugd_userID_link") %>'>ورود به برگه</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="Gainsboro" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ods_ResultList" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_education_result_listTableAdapter">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="-1" Name="testID" SessionField="testID" 
                Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    </asp:Panel>  <br />
    <asp:Panel ID="pnl_ResultDetails" runat="server" Visible="false">
        <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">برگشت</asp:LinkButton>
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
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#DCDCDC" />
    </asp:GridView>
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