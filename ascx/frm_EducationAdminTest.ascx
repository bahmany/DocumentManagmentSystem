<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_EducationAdminTest.ascx.cs" Inherits="ascx_frm_EducationAdminTest" %>
<%@ Register src="frm_EducationAddNewTestQuestions.ascx" tagname="frm_EducationAddNewTestQuestions" tagprefix="uc1" %>
<%@ Register src="frm_EducationAddNewTestGroup.ascx" tagname="frm_EducationAddNewTestGroup" tagprefix="uc2" %>
<%@ Register src="frm_EducationTestersManager.ascx" tagname="frm_EducationTestersManager" tagprefix="uc3" %>
<%@ Register src="frm_EducationTestResult.ascx" tagname="frm_EducationTestResult" tagprefix="uc4" %>
<div dir="rtl" style="font-family: tahoma; font-size: 12px">
 
    <asp:Panel ID="pnl_TestGroupPanel" runat="server">
        <br />
        &nbsp;&nbsp;&nbsp;
       <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">ایجاد آزمون جدید</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton7" runat="server" onclick="LinkButton7_Click">مدیریت گروه های آزمون دهنده</asp:LinkButton>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataKeyNames="etm_id" DataSourceID="ods_TestsList" GridLines="Vertical" 
            onrowcreated="GridView1_RowCreated" onrowupdated="GridView1_RowUpdated">
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="etm_title" HeaderText="تیتر آزمون" 
                    SortExpression="etm_title" />
                <asp:BoundField DataField="etm_type" HeaderText="نوع" 
                    SortExpression="etm_type" />
                <asp:BoundField DataField="etm_tashrihi_count" HeaderText="تعداد سوالات تشریحی" 
                    SortExpression="etm_tashrihi_count" />
                <asp:BoundField DataField="etm_tashrihi_total" HeaderText="جمع نمرات تشریحی" 
                    SortExpression="etm_tashrihi_total" />
                <asp:BoundField DataField="emt_testi_count" HeaderText="تعداد سوالات تستی" 
                    SortExpression="emt_testi_count" />
                <asp:BoundField DataField="emt_testi_total" HeaderText="جمع نمرات تستی" 
                    SortExpression="emt_testi_total" />
                <asp:BoundField DataField="emt_obs_time_start" HeaderText="تاریخ شروع" 
                    ReadOnly="True" SortExpression="emt_obs_time_start" />
                <asp:BoundField DataField="emt_obs_time_end" HeaderText="تاریخ پایان" 
                    ReadOnly="True" SortExpression="emt_obs_time_end" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                            ToolTip='<%# Eval("etm_id") %>'>ورود به سوالات</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="پاسخ دهنده ها">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click1" 
                            ToolTip='<%# Eval("etm_id") %>'>ورود به نتایج</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lbl_count" runat="server" ondatabinding="lbl_count_DataBinding" 
                            Text="Label" ToolTip='<%# Eval("etm_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#DCDCDC" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ods_TestsList" runat="server" DeleteMethod="Delete" 
            OldValuesParameterFormatString="original_{0}" 
            onselecting="ods_TestsList_Selecting" SelectMethod="GetData" 
            TypeName="MainDataModuleTableAdapters.tbl_education_tests_groupsTableAdapter">
            <DeleteParameters>
                <asp:Parameter Name="Original_etm_id" Type="Int32" />
            </DeleteParameters>
        </asp:ObjectDataSource>
</asp:Panel>

    <asp:Panel ID="pnl_testMaker" runat="server">
    
    <asp:Panel ID="pnl_Detail" runat="server" Visible="False">
                <asp:LinkButton ID="LinkButton6" runat="server" 
                onclick="LinkButton4_Click">برگشت به لیست آزمون ها</asp:LinkButton>
        <uc1:frm_EducationAddNewTestQuestions ID="frm_EducationAddNewTestQuestions1" 
    runat="server" />
    </asp:Panel>
    
        <asp:Panel ID="pnl_Group" runat="server" Visible="False">
            <asp:LinkButton ID="lb_returnToFirstPage0" runat="server" 
                onclick="LinkButton4_Click">برگشت به لیست آزمون ها</asp:LinkButton>
     <br />
            <uc2:frm_EducationAddNewTestGroup ID="frm_EducationAddNewTestGroup1" 
                runat="server" />
        
        </asp:Panel>
    
    </asp:Panel>

        
    <asp:Panel ID="pnl_UserGroup" runat="server" Visible="False">
    <asp:LinkButton ID="lb_returnToFirstPage" runat="server" onclick="LinkButton4_Click">برگشت به لیست آزمون ها</asp:LinkButton>
        <uc3:frm_EducationTestersManager ID="frm_EducationTestersManager1" 
    runat="server" />
    
    </asp:Panel>
    <asp:Panel ID="pnl_results" runat="server" Visible="False">

        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">برگشت</asp:LinkButton>
      <uc4:frm_EducationTestResult ID="frm_EducationTestResult1" runat="server" />
    </asp:Panel>
    <asp:Panel ID="pnl_add_new_UserGroup" runat="server" Visible="False">
      
        
    </asp:Panel>
    
</div>