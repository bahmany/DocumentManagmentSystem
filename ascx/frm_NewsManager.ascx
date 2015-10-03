<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_NewsManager.ascx.cs" Inherits="ascx_frm_AddNews" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<div dir="rtl">
    <table style="font-family: tahoma; font-size: 12px" width="100%">
        <tr>
            <td>
                زبان خبر</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn_top" 
                    Font-Names="tahoma">
                    <asp:ListItem Value="1">فارسی</asp:ListItem>
                    <asp:ListItem Value="2">انگلیسی</asp:ListItem>
                    <asp:ListItem Value="3">عربی</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                نوع خبر</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="btn_top" 
                    DataSourceID="sds_newstypelist" DataTextField="nt_name" DataValueField="nt_id" 
                    Font-Names="tahoma">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sds_newstypelist" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:atiehfouladConnectionString %>" 
                    SelectCommand="SELECT [nt_id], [nt_name] FROM [tbl_news_type]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                نمایش در اخبار ویژه</td>
            <td>
                <asp:CheckBox ID="chk_TopNews" runat="server" Checked="True" Text="نمایش" />
            </td>
        </tr>
        <tr>
            <td>
                عکس بزرگ</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                عکس کوچک</td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                تیتر خبر</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="btn_top" 
                    Font-Names="tahoma" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                خلاصه خبر
                <br />
                (کمتر از 20 کلمه)</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="btn_top" 
                    Font-Names="tahoma" Height="55px" TextMode="MultiLine" Width="100%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                متن کامل</td>
            <td>
                
                
                <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server">
                </FCKeditorV2:FCKeditor>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: left">
                <asp:Button ID="Button4" runat="server" CssClass="btn_top" Text="ثبت" 
                    Width="120px" onclick="Button4_Click" />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    
<div>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="کد" DataSourceID="ods_NewsGrid" ForeColor="Black" 
        GridLines="Vertical" Width="100%">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="خبر ویژه" HeaderText="خبر ویژه" 
                SortExpression="خبر ویژه" />
            <asp:BoundField DataField="تیتر" HeaderText="تیتر" SortExpression="تیتر" />
            <asp:BoundField DataField="خلاصه" HeaderText="خلاصه" SortExpression="خلاصه" />
            <asp:BoundField DataField="نوع" HeaderText="نوع" SortExpression="نوع" />
            <asp:BoundField DataField="زبان" HeaderText="زبان" SortExpression="زبان" />
            <asp:BoundField DataField="تاریخ ثبت" HeaderText="تاریخ ثبت" 
                SortExpression="تاریخ ثبت" />
            <asp:BoundField DataField="کد" HeaderText="کد" InsertVisible="False" 
                ReadOnly="True" SortExpression="کد" />
            <asp:BoundField DataField="یادداشت ها" HeaderText="یادداشت ها" 
                SortExpression="یادداشت ها" />
            <asp:TemplateField HeaderText="عملیات">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td>
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                                    ToolTip='<%# Eval("کد") %>'>ویرایش</asp:LinkButton>
                                &nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                                    Checked='<%# Bind("فعال") %>' oncheckedchanged="CheckBox1_CheckedChanged" 
                                    Text="نمایش داده شود" ToolTip='<%# Eval("کد") %>' />
                                &nbsp;&nbsp; |&nbsp;&nbsp;
                            </td>
                            <td>
                                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click" 
                                    ToolTip='<%# Eval("کد") %>'>مدیریت پیام ها</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ods_NewsGrid" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_newsTableAdapter">
        <DeleteParameters>
            <asp:Parameter Name="Original_کد" Type="Int32" />
        </DeleteParameters>
    </asp:ObjectDataSource>

    <hr />
    لیست پیام ها
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="کد" DataSourceID="ods_comments" ForeColor="Black" 
        GridLines="Vertical" AllowPaging="True" AllowSorting="True" Width="100%">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="کد" HeaderText="کد" InsertVisible="False" 
                ReadOnly="True" SortExpression="کد" />
            <asp:BoundField DataField="کد خبر" HeaderText="کد خبر" 
                SortExpression="کد خبر" />
            <asp:BoundField DataField="متن پیام" HeaderText="متن پیام" 
                SortExpression="متن پیام" />
            <asp:BoundField DataField="ایمیل" HeaderText="ایمیل" SortExpression="ایمیل" />
            <asp:CheckBoxField DataField="نمایش" HeaderText="نمایش" 
                SortExpression="نمایش" />
            <asp:BoundField DataField="کد کاربر" HeaderText="کد کاربر" 
                SortExpression="کد کاربر" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
                        Checked='<%# Bind("نمایش") %>' oncheckedchanged="CheckBox1_CheckedChanged1" 
                        Text="نمایش داده شود" ToolTip='<%# Eval("کد") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ods_comments" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_news_commentsTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:SessionParameter Name="Original_کد" SessionField="id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="کد_خبر" Type="Int32" />
            <asp:Parameter Name="متن_پیام" Type="String" />
            <asp:Parameter Name="ایمیل" Type="String" />
            <asp:Parameter Name="نمایش" Type="Boolean" />
            <asp:Parameter Name="کد_کاربر" Type="Int32" />
            <asp:Parameter Name="Original_کد" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="کد_خبر" Type="Int32" />
            <asp:Parameter Name="متن_پیام" Type="String" />
            <asp:Parameter Name="ایمیل" Type="String" />
            <asp:Parameter Name="نمایش" Type="Boolean" />
            <asp:Parameter Name="کد_کاربر" Type="Int32" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <br />

</div>    
</div>
<p>
    &nbsp;</p>
