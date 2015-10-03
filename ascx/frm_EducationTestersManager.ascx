<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_EducationTestersManager.ascx.cs" Inherits="ascx_frm_EducationTestersManager" %>
<div dir="rtl" style="font-family: tahoma; font-size: 12px">
    <asp:Panel ID="pnl_TesterGroupGrid" runat="server">
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">ایجاد گروه جدید</asp:LinkButton>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
            BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="etug_id" 
            DataSourceID="ods_UserGroup" GridLines="Vertical">
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <Columns>
                <asp:CommandField CancelText="انصراف" EditText="ویرایش" ShowEditButton="True" 
                    UpdateText="تائید" />
                <asp:BoundField DataField="etug_id" HeaderText="کد گروه" InsertVisible="False" 
                    ReadOnly="True" SortExpression="etug_id" />
                <asp:BoundField DataField="etug_GroupName" HeaderText="نام گروه" 
                    SortExpression="etug_GroupName" />
                <asp:TemplateField HeaderText="مدیریت آزمون دهندگان">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" 
                            ToolTip='<%# Eval("etug_id") %>' onclick="LinkButton2_Click">مدیریت کاربران</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#DCDCDC" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ods_UserGroup" runat="server" DeleteMethod="Delete" 
            InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetData" 
            TypeName="MainDataModuleTableAdapters.tbl_education_tests_user_groupTableAdapter" 
            UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_etug_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="etug_GroupName" Type="String" />
                <asp:Parameter Name="Original_etug_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="etug_GroupName" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>
    </asp:Panel>
    <asp:Panel ID="pnl_TesterAddNew" runat="server" Visible="False">
        <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">برگشت</asp:LinkButton>
        <table>
            <tr>
                <td>
                    نام گروه</td>
                <td>
                    <asp:TextBox ID="txt_GroupName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">تائید</asp:LinkButton>
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="pnl_BindUsersToGroup" runat="server" Visible="False">
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton4_Click">برگشت</asp:LinkButton>
        <table>
            <tr>
                <td>
                    لیست کاربران موجود در این گروه آزمون<asp:ObjectDataSource ID="ods_usersList" 
                        runat="server" DeleteMethod="Delete" InsertMethod="Insert" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataBy" 
                        TypeName="MainDataModuleTableAdapters.tbl_education_tests_user_group_detailsTableAdapter" 
                        UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_etugd_id" Type="Int32" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="etugd_userID_link" Type="Int32" />
                            <asp:Parameter Name="etugd_group_link" Type="Int32" />
                            <asp:Parameter Name="Original_etugd_id" Type="Int32" />
                        </UpdateParameters>
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="1" Name="etugd_group_link" 
                                SessionField="TestGroupIDUser" Type="Int32" />
                        </SelectParameters>
                        <InsertParameters>
                            <asp:Parameter Name="etugd_userID_link" Type="Int32" />
                            <asp:Parameter Name="etugd_group_link" Type="Int32" />
                        </InsertParameters>
                    </asp:ObjectDataSource>
                    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                        BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="etugd_id" 
                        DataSourceID="ods_usersList" GridLines="Vertical">
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <Columns>
                            <asp:CommandField DeleteText="حذف" ShowDeleteButton="True" />
                            <asp:BoundField DataField="etugd_userID_link" HeaderText="کد کاربر" 
                                SortExpression="etugd_userID_link" />
                            <asp:TemplateField HeaderText="مشخصات کاربر">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" ondatabinding="Label1_DataBinding" 
                                        Text="Label" ToolTip='<%# Eval("etugd_userID_link") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rb_group" runat="server" Text="لیست گروههای کاربری" 
                        Checked="True" AutoPostBack="True" GroupName="WOO" 
                        oncheckedchanged="RadioButton1_CheckedChanged" />
                    <br />
                    <asp:RadioButton ID="rb_user" runat="server" Text="لیست کاربرها" 
                        AutoPostBack="True" GroupName="WOO" 
                        oncheckedchanged="RadioButton2_CheckedChanged" />
                    <br />
                    گروه انتخابی
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Panel ID="pnl_userGrid" runat="server" Visible="False">
                  
                    <asp:GridView ID="gv_usersList" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" DataKeyNames="کد" DataSourceID="ods_users_list" 
                        GridLines="Vertical" onselectedindexchanged="gv_userList_SelectedIndexChanged">
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <Columns>
                            <asp:TemplateField HeaderText="انتخاب">
                                <ItemTemplate>
                                    <asp:CheckBox ID="chk_select" runat="server" Text="انتخاب" 
                                        ToolTip='<%# Eval("کد") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="نام کاربری" HeaderText="نام کاربری" 
                                SortExpression="نام کاربری" />
                            <asp:BoundField DataField="ایمیل" HeaderText="ایمیل" SortExpression="ایمیل" />
                            <asp:BoundField DataField="کد" HeaderText="کد" InsertVisible="False" 
                                ReadOnly="True" SortExpression="کد" />
                            <asp:BoundField DataField="نام" HeaderText="نام" SortExpression="نام" />
                            <asp:BoundField DataField="نام خانوادگی" HeaderText="نام خانوادگی" 
                                SortExpression="نام خانوادگی" />
                            <asp:BoundField DataField="شرکت" HeaderText="شرکت" SortExpression="شرکت" />
                            <asp:BoundField DataField="تماس" HeaderText="تماس" SortExpression="تماس" />
                            <asp:BoundField DataField="ضمینه" HeaderText="ضمینه" SortExpression="ضمینه" />
                            <asp:CheckBoxField DataField="وضعیت" HeaderText="وضعیت" 
                                SortExpression="وضعیت" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                    </asp:GridView>
                    <asp:ObjectDataSource ID="ods_users_list" runat="server" 
                        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                        TypeName="MainDataModuleTableAdapters.tbl_usersListTableAdapter">
                    </asp:ObjectDataSource>
                    
                  </asp:Panel>
                  <br />
                    <asp:Panel ID="pnl_groupsGrid" runat="server">
                        <asp:GridView ID="gv_GroupsList" runat="server" AutoGenerateColumns="False" 
                            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                            CellPadding="3" DataKeyNames="کد" DataSourceID="ods_usergroups" 
                            GridLines="Vertical">
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <Columns>
                                <asp:TemplateField HeaderText="انتخاب">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chk_select" runat="server" Text="انتخاب" 
                                            ToolTip='<%# Eval("کد") %>' />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="کد" HeaderText="کد" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="کد" />
                                <asp:BoundField DataField="نام" HeaderText="نام" SortExpression="نام" />
                                <asp:BoundField DataField="توضیحات" HeaderText="توضیحات" 
                                    SortExpression="توضیحات" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <AlternatingRowStyle BackColor="Gainsboro" />
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ods_usergroups" runat="server" DeleteMethod="Delete" 
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
                    
                    <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">تائید و ثبت</asp:LinkButton>
                </td>
            </tr>
        </table>
    </asp:Panel>
</div>