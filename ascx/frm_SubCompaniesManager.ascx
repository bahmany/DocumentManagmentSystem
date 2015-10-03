<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_SubCompaniesManager.ascx.cs" Inherits="ascx_frm_SubCompaniesManager" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<style type="text/css">
    .style1
    {
        width: 614px;
    }
    .style2
    {
        height: 229px;
    }
    .style3
    {
        width: 614px;
        height: 229px;
    }
</style>
<div  dir="rtl">

    <table>
        <tr>
            <td>
                زبان</td>
            <td class="style1">
                <asp:DropDownList ID="DropDownList4" runat="server" Width="112px">
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
                نام شرکت</td>
            <td class="style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                نام کشور</td>
            <td class="style1">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="sds_country" DataTextField="c_name" DataValueField="c_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sds_country" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:atiehfouladConnectionString %>" 
                    SelectCommand="SELECT * FROM [tbl_country]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                نام استان</td>
            <td class="style1">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="sds_city" DataTextField="cc_name" DataValueField="cc_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sds_city" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:atiehfouladConnectionString %>" 
                    SelectCommand="SELECT * FROM [tbl_country_city] where cc_link_to_country=@cc_link_to_country">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="cc_link_to_country" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                شهرستان</td>
            <td class="style1">
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="sds_city_city" DataTextField="ccc_name" 
                    DataValueField="ccc_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="sds_city_city" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:atiehfouladConnectionString %>" 
                    SelectCommand="SELECT ccc_id, ccc_name, ccc_link_to_country_city FROM tbl_country_city_city WHERE (ccc_link_to_country_city = @ccc_link_to_country_city)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="ccc_link_to_country_city" 
                            PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                معرفی</td>
            <td class="style1">
                <asp:TextBox ID="TextBox2" runat="server" Width="403px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                توضیحات مختصر</td>
            <td class="style1">
                <asp:TextBox ID="TextBox3" runat="server" Width="402px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                توضیحات تکمیلی</td>
            <td class="style3">
                <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="400px" 
                    Width="600px">
                </FCKeditorV2:FCKeditor>
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="ثبت" 
                    Width="77px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
<div>
</div>
<div></div>
<div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        DataKeyNames="sc_id" DataSourceID="ods_subcom" ForeColor="Black" 
        GridLines="Vertical" Width="100%" EnableModelValidation="True">
        <RowStyle BackColor="#F7F7DE" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="sc_id" HeaderText="کد" InsertVisible="False" 
                ReadOnly="True" SortExpression="sc_id" />
            <asp:BoundField DataField="sc_name" HeaderText="نام" SortExpression="sc_name" />
            <asp:BoundField DataField="sc_intro" HeaderText="معرفی" 
                SortExpression="sc_intro" />
            <asp:BoundField DataField="sc_express_intro" HeaderText="توضیحات کوتاه" 
                SortExpression="sc_express_intro" />
            <asp:BoundField DataField="sc_lang" HeaderText="زبان" 
                SortExpression="sc_lang" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        ToolTip='<%# Eval("sc_id", "{0}") %>'>ویرایش</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
    <asp:ObjectDataSource ID="ods_subcom" runat="server" DeleteMethod="Delete" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetDataBy4" 
        TypeName="MainDataModuleTableAdapters.tbl_subcompaniesTableAdapter">
        <DeleteParameters>
            <asp:Parameter Name="Original_sc_id" Type="Int32" />
        </DeleteParameters>
    </asp:ObjectDataSource>
</div>
</div>