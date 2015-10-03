<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_BroadcastedCosts.ascx.cs" Inherits="ascx_frm_BroadcastedCosts" %>
<div dir="rtl">
<style type"text/css">
.divvvv
{
    border-top:solid 1 black;
    border-bottom:solid 1 black;
    
}
</style>
    <table>
        <tr>
            <td>
                زبان</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="btn_top" 
                    Font-Names="tahoma">
                    <asp:ListItem Value="1">فارسی</asp:ListItem>
                    <asp:ListItem Value="2">انگلیسی</asp:ListItem>
                    <asp:ListItem Value="3">عربی</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                نرخ</td>
            <td>
            <div style="background-color: #FFFFCC; border: 1px solid #008000">
                <table>
                    <tr>
                        <td>
                            نام گروه نرخی</td>
                        <td style="margin-right: 40px">
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="ods_groups" 
                                DataTextField="نام" DataValueField="کد" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:ObjectDataSource ID="ods_groups" runat="server" DeleteMethod="Delete" 
                                OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                                TypeName="MainDataModuleTableAdapters.tbl_costs_goods_groupTableAdapter">
                                <DeleteParameters>
                                    <asp:Parameter Name="Original_کد" Type="Int32" />
                                </DeleteParameters>
                            </asp:ObjectDataSource>
                        </td>
                        <td>
                            انتخاب نرخ :&nbsp;
                        </td>
                        <td>
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="ods_goods" 
                                DataTextField="نام" DataValueField="کد">
                            </asp:DropDownList>
                            <asp:ObjectDataSource ID="ods_goods" runat="server" DeleteMethod="Delete" 
                                InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
                                SelectMethod="GetDataBy" 
                                TypeName="MainDataModuleTableAdapters.tbl_costs_goodsTableAdapter" 
                                UpdateMethod="Update">
                                <DeleteParameters>
                                    <asp:Parameter Name="Original_کد" Type="Int32" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="نام" Type="String" />
                                    <asp:Parameter Name="توضیحات" Type="String" />
                                    <asp:Parameter Name="قابل_رویت" Type="Boolean" />
                                    <asp:Parameter Name="نوع" Type="Int32" />
                                    <asp:Parameter Name="کد_گروه" Type="Int32" />
                                    <asp:Parameter Name="Original_کد" Type="Int32" />
                                </UpdateParameters>
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList2" Name="cg_link_to_goods_group" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                                <InsertParameters>
                                    <asp:ControlParameter ControlID="TextBox1" Name="نام" PropertyName="Text" 
                                        Type="String" />
                                    <asp:Parameter DefaultValue="no" Name="توضیحات" Type="String" />
                                    <asp:Parameter DefaultValue="true" Name="قابل_رویت" Type="Boolean" />
                                    <asp:ControlParameter ControlID="DropDownList4" Name="نوع" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="کد_گروه" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </InsertParameters>
                            </asp:ObjectDataSource>
                        </td>
                        <td style="border-right-style: solid; border-width: 2px; border-color: #333300">
                            ایجاد نرخ جدید<br />
                            <table>
                                <tr>
                                    <td>
                                        نام نرخ
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        نوع نرخ</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList4" runat="server">
                                            <asp:ListItem Selected="True" Value="1">عمومی</asp:ListItem>
                                            <asp:ListItem Value="2">خصوصی</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">ثبت</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </table>
                 
                </div>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                فی</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                تاریخ ثبت</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" 
                    runat="server" ControlToValidate="TextBox3" 
                    ErrorMessage="لطفا تاریخ را اصلاح نمایید" 
                    ValidationExpression="(12|13|14)\d\d[/]([1-9]|0[1-9]|1[012])[/](0[1-9]|1[0-9]|2[0-9]|3[0-1]|[1-9])"></asp:RegularExpressionValidator>
            </td>
            <td class="class=&quot;divvvv&quot;">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                توضیحات</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="478px">.</asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="ثبت" Width="85px" 
                    onclick="Button1_Click" />
                <asp:ObjectDataSource ID="ods_costs" runat="server" DeleteMethod="Delete" 
                    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="GetData" 
                    TypeName="MainDataModuleTableAdapters.tbl_costsTableAdapter" 
                    UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_کد" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="تاریخ_ثبت" Type="DateTime" />
                        <asp:Parameter Name="قیمت" Type="Double" />
                        <asp:Parameter Name="کد_نرخ" Type="Int32" />
                        <asp:Parameter Name="زبان" Type="Int32" />
                        <asp:Parameter Name="توضیحات" Type="String" />
                        <asp:Parameter Name="Original_کد" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="تاریخ_ثبت" Type="DateTime" />
                        <asp:ControlParameter ControlID="TextBox2" Name="قیمت" PropertyName="Text" 
                            Type="Double" />
                        <asp:ControlParameter ControlID="DropDownList3" Name="کد_نرخ" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="زبان" 
                            PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="TextBox4" Name="توضیحات" PropertyName="Text" 
                            Type="String" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
<br />
<div></div>
<div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="کد" DataSourceID="ods_costs" ForeColor="Black" 
        GridLines="Vertical" Width="100%">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="کد" HeaderText="کد" InsertVisible="False" 
                ReadOnly="True" SortExpression="کد" />
            <asp:BoundField DataField="تاریخ ثبت" HeaderText="تاریخ ثبت" 
                SortExpression="تاریخ ثبت" />
            <asp:BoundField DataField="قیمت" HeaderText="قیمت" SortExpression="قیمت" />
            <asp:BoundField DataField="کد نرخ" HeaderText="کد نرخ" 
                SortExpression="کد نرخ" />
            <asp:BoundField DataField="زبان" HeaderText="زبان" SortExpression="زبان" />
            <asp:BoundField DataField="توضیحات" HeaderText="توضیحات" 
                SortExpression="توضیحات" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    </div>
</div>