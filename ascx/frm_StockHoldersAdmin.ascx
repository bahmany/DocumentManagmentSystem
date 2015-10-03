<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_StockHoldersAdmin.ascx.cs" Inherits="ascx_frm_StockHoldersAdmin"  %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<div dir="rtl" style="font-family: tahoma; font-size: 12px">
    <div>
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">مدیریت سهام داران</asp:LinkButton>&nbsp; |
        <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">درج آگهی</asp:LinkButton>
        &nbsp;
    
    </div>
    
  <asp:Panel ID="pnl_StockholdersList" runat="server" Visible="False">
      <table>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            جستجو بر اساس</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>نام خانوادگی</asp:ListItem>
                                <asp:ListItem>کد سهام</asp:ListItem>
                                <asp:ListItem>میزان سهام</asp:ListItem>
                                <asp:ListItem>کد پستی</asp:ListItem>
                                <asp:ListItem>شماره حساب</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">جستجو</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <asp:Panel ID="pnl_change_pass" runat="server" Visible="False">
                  <table>
                    <tr>
                        <td>
                            رمز جدید</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">ثبت</asp:LinkButton>
                        </td>
                    </tr>
                </table>   
                </asp:Panel>
        
                
                <br />
                <asp:Panel ID="pnl_add_new" runat="server">
                  <table>
                    <tr>
                        <td>
                            کد سهام</td>
                        <td>
                            <asp:TextBox ID="txt_stockid" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            نام
                        </td>
                        <td style="margin-right: 80px">
                            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            نام خانوادگی</td>
                        <td style="margin-right: 40px">
                            <asp:TextBox ID="txt_family" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            میزان سهام</td>
                        <td>
                            <asp:TextBox ID="txt_stockcount" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            نام کاربری</td>
                        <td>
                            <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">ثبت اطلاعات جدید</asp:LinkButton>
                        </td>
                        <td>
                            <br />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                      <tr>
                          <td>
                              &nbsp;</td>
                          <td>
                              &nbsp;</td>
                          <td>
                              &nbsp;</td>
                          <td>
                              &nbsp;</td>
                          <td>
                              &nbsp;</td>
                          <td>
                              &nbsp;</td>
                          <td>
                              &nbsp;</td>
                          <td>
                              &nbsp;</td>
                          <td>
                              &nbsp;</td>
                          <td>
                              &nbsp;</td>
                      </tr>
                </table>
                </asp:Panel>   
             
                
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" DataKeyNames="s_id" DataSourceID="sds_StockHoldersList" 
                    GridLines="Vertical">
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="s_stockid" HeaderText="کد سهام" 
                            SortExpression="s_stockid" />
                        <asp:BoundField DataField="s_name" HeaderText="نام" 
                            SortExpression="s_name" />
                        <asp:BoundField DataField="s_family" HeaderText="نام خانوادگی" 
                            SortExpression="s_family" />
                        <asp:BoundField DataField="s_stockcount" HeaderText="میزان سهام" 
                            SortExpression="s_stockcount" />
                        <asp:BoundField DataField="s_bankname" HeaderText="نام بانک" 
                            SortExpression="s_bankname" />
                        <asp:BoundField DataField="s_bankaccounttype" HeaderText="نوع حساب" 
                            SortExpression="s_bankaccounttype" />
                        <asp:BoundField DataField="s_hesabno" HeaderText="شماره حساب" 
                            SortExpression="s_hesabno" />
                        <asp:BoundField DataField="s_username" HeaderText="نام کاربری" 
                            SortExpression="s_username" />
                        <asp:BoundField DataField="s_milicode" HeaderText="کد ملی" 
                            SortExpression="s_milicode" />
                        <asp:BoundField DataField="s_shenasnameh" HeaderText="ش ش" 
                            SortExpression="s_shenasnameh" />
                        <asp:BoundField DataField="s_mahalesodor" HeaderText="محل صدور" 
                            SortExpression="s_mahalesodor" />
                        <asp:BoundField DataField="s_fathername" HeaderText="نام پدر" 
                            SortExpression="s_fathername" />
                        <asp:BoundField DataField="s_tel" HeaderText="تلفن" 
                            SortExpression="s_tel" />
                        <asp:BoundField DataField="s_mob" HeaderText="موبایل" SortExpression="s_mob" />
                        <asp:BoundField DataField="s_postalcode" HeaderText="کد پستی" 
                            SortExpression="s_postalcode" />
                        <asp:BoundField DataField="s_city" HeaderText="شهر" 
                            SortExpression="s_city" />
                        <asp:BoundField DataField="s_address" HeaderText="آدرس" 
                            SortExpression="s_address" />
                        <asp:BoundField DataField="s_jensiat" HeaderText="جنسیت" 
                            SortExpression="s_jensiat" />
                        <asp:BoundField DataField="s_datebirth" HeaderText="تاریخ تولد" />
                        <asp:BoundField DataField="s_tarikhesodor" HeaderText="تاریخ صدور" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" runat="server" ToolTip='<%# Eval("s_id") %>' 
                                    onclick="LinkButton3_Click">تغییر یا تعریف رمز عبور</asp:LinkButton>
                                &nbsp;
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                </asp:GridView>
                <asp:SqlDataSource ID="sds_StockHoldersList" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:atiehfouladConnectionString %>" 
                    DeleteCommand="DELETE FROM tbl_stockholders WHERE (s_id = @original_s_id)" 
                    InsertCommand="INSERT INTO [tbl_stockholders] ([s_stockid], [s_name], [s_family], [s_shenasnameh], [s_mahalesodor], [s_fathername], [s_tel], [s_mob], [s_postalcode], [s_city], [s_address], [s_milicode], [s_stockcount], [s_bankname], [s_bankaccounttype], [s_hesabno], [s_jensiat], [s_datebirth], [s_tarikhesodor],[s_username]) VALUES (@s_stockid, @s_name, @s_family, @s_shenasnameh, @s_mahalesodor, @s_fathername, @s_tel, @s_mob, @s_postalcode, @s_city, @s_address, @s_milicode, @s_stockcount, @s_bankname, @s_bankaccounttype, @s_hesabno, @s_jensiat, @s_datebirth, @s_tarikhesodor,@s_username)" 
                    OldValuesParameterFormatString="original_{0}" 
                    SelectCommand="SELECT TOP (500) s_id, s_stockid, s_name, s_family, s_shenasnameh, s_mahalesodor, s_fathername, s_tel, s_mob, s_postalcode, s_city, s_address, s_milicode, s_stockcount, s_bankname, s_bankaccounttype, s_hesabno, s_jensiat, s_datebirth, s_tarikhesodor, s_username  FROM tbl_stockholders" 
                    
                    
                    UpdateCommand="UPDATE tbl_stockholders SET s_stockid = @s_stockid, s_name = @s_name, s_family = @s_family, s_shenasnameh = @s_shenasnameh, s_mahalesodor = @s_mahalesodor, s_fathername = @s_fathername, s_tel = @s_tel, s_mob = @s_mob, s_postalcode = @s_postalcode, s_city = @s_city, s_address = @s_address, s_milicode = @s_milicode, s_stockcount = @s_stockcount, s_bankname = @s_bankname, s_bankaccounttype = @s_bankaccounttype, s_hesabno = @s_hesabno, s_jensiat = @s_jensiat, s_datebirth = @s_datebirth, s_tarikhesodor = @s_tarikhesodor, s_username = @s_username WHERE (s_id = @original_s_id) AND (s_stockid = @original_s_stockid) AND (s_name = @original_s_name) AND (s_family = @original_s_family) AND (s_shenasnameh = @original_s_shenasnameh OR s_shenasnameh IS NULL AND @original_s_shenasnameh IS NULL) AND (s_mahalesodor = @original_s_mahalesodor OR s_mahalesodor IS NULL AND @original_s_mahalesodor IS NULL) AND (s_fathername = @original_s_fathername OR s_fathername IS NULL AND @original_s_fathername IS NULL) AND (s_tel = @original_s_tel OR s_tel IS NULL AND @original_s_tel IS NULL) AND (s_mob = @original_s_mob OR s_mob IS NULL AND @original_s_mob IS NULL) AND (s_postalcode = @original_s_postalcode OR s_postalcode IS NULL AND @original_s_postalcode IS NULL) AND (s_city = @original_s_city OR s_city IS NULL AND @original_s_city IS NULL) AND (s_address = @original_s_address OR s_address IS NULL AND @original_s_address IS NULL) AND (s_milicode = @original_s_milicode OR s_milicode IS NULL AND @original_s_milicode IS NULL) AND (s_stockcount = @original_s_stockcount) AND (s_bankname = @original_s_bankname OR s_bankname IS NULL AND @original_s_bankname IS NULL) AND (s_bankaccounttype = @original_s_bankaccounttype OR s_bankaccounttype IS NULL AND @original_s_bankaccounttype IS NULL) AND (s_hesabno = @original_s_hesabno OR s_hesabno IS NULL AND @original_s_hesabno IS NULL) AND (s_jensiat = @original_s_jensiat OR s_jensiat IS NULL AND @original_s_jensiat IS NULL) AND (s_datebirth = @original_s_datebirth OR s_datebirth IS NULL AND @original_s_datebirth IS NULL) AND (s_tarikhesodor = @original_s_tarikhesodor OR s_tarikhesodor IS NULL AND @original_s_tarikhesodor IS NULL)">
                    <DeleteParameters>
                        <asp:Parameter Name="original_s_id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="s_stockid" Type="Int32" />
                        <asp:Parameter Name="s_name" Type="String" />
                        <asp:Parameter Name="s_family" Type="String" />
                        <asp:Parameter Name="s_shenasnameh" Type="String" />
                        <asp:Parameter Name="s_mahalesodor" Type="String" />
                        <asp:Parameter Name="s_fathername" Type="String" />
                        <asp:Parameter Name="s_tel" Type="String" />
                        <asp:Parameter Name="s_mob" Type="String" />
                        <asp:Parameter Name="s_postalcode" Type="String" />
                        <asp:Parameter Name="s_city" Type="String" />
                        <asp:Parameter Name="s_address" Type="String" />
                        <asp:Parameter Name="s_milicode" Type="String" />
                        <asp:Parameter Name="s_stockcount" Type="Int32" />
                        <asp:Parameter Name="s_bankname" Type="String" />
                        <asp:Parameter Name="s_bankaccounttype" Type="String" />
                        <asp:Parameter Name="s_hesabno" Type="String" />
                        <asp:Parameter Name="s_jensiat" Type="String" />
                        <asp:Parameter Name="s_datebirth" Type="String" />
                        <asp:Parameter Name="s_tarikhesodor" Type="String" />
                        <asp:Parameter Name="s_username" />
                        <asp:Parameter Name="original_s_id" Type="Int32" />
                        <asp:Parameter Name="original_s_stockid" Type="Int32" />
                        <asp:Parameter Name="original_s_name" Type="String" />
                        <asp:Parameter Name="original_s_family" Type="String" />
                        <asp:Parameter Name="original_s_shenasnameh" Type="String" />
                        <asp:Parameter Name="original_s_mahalesodor" Type="String" />
                        <asp:Parameter Name="original_s_fathername" Type="String" />
                        <asp:Parameter Name="original_s_tel" Type="String" />
                        <asp:Parameter Name="original_s_mob" Type="String" />
                        <asp:Parameter Name="original_s_postalcode" Type="String" />
                        <asp:Parameter Name="original_s_city" Type="String" />
                        <asp:Parameter Name="original_s_address" Type="String" />
                        <asp:Parameter Name="original_s_milicode" Type="String" />
                        <asp:Parameter Name="original_s_stockcount" Type="Int32" />
                        <asp:Parameter Name="original_s_bankname" Type="String" />
                        <asp:Parameter Name="original_s_bankaccounttype" Type="String" />
                        <asp:Parameter Name="original_s_hesabno" Type="String" />
                        <asp:Parameter Name="original_s_jensiat" Type="String" />
                        <asp:Parameter Name="original_s_datebirth" Type="String" />
                        <asp:Parameter Name="original_s_tarikhesodor" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="s_stockid" Type="Int32" />
                        <asp:Parameter Name="s_name" Type="String" />
                        <asp:Parameter Name="s_family" Type="String" />
                        <asp:Parameter Name="s_shenasnameh" Type="String" />
                        <asp:Parameter Name="s_mahalesodor" Type="String" />
                        <asp:Parameter Name="s_fathername" Type="String" />
                        <asp:Parameter Name="s_tel" Type="String" />
                        <asp:Parameter Name="s_mob" Type="String" />
                        <asp:Parameter Name="s_postalcode" Type="String" />
                        <asp:Parameter Name="s_city" Type="String" />
                        <asp:Parameter Name="s_address" Type="String" />
                        <asp:Parameter Name="s_milicode" Type="String" />
                        <asp:Parameter Name="s_stockcount" Type="Int32" />
                        <asp:Parameter Name="s_bankname" Type="String" />
                        <asp:Parameter Name="s_bankaccounttype" Type="String" />
                        <asp:Parameter Name="s_hesabno" Type="String" />
                        <asp:Parameter Name="s_jensiat" Type="String" />
                        <asp:Parameter Name="s_datebirth" Type="String" />
                        <asp:Parameter Name="s_tarikhesodor" Type="String" />
                        <asp:Parameter Name="s_username" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
  </asp:Panel>
  <br />
    <asp:Panel ID="pnl_Agahi" runat="server" Visible="False">
        <table>
            <tr>
                <td>
                    زبان</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="1">فارسی</asp:ListItem>
                        <asp:ListItem Value="2">انگلیسی</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked="True" Text="قابل مشاهده" />
                </td>
            </tr>
            <tr>
                <td>
                    نوع آگهی</td>
                <td>
                    <asp:DropDownList ID="drp_NoeAgahi" runat="server">
                        <asp:ListItem Selected="True" Value="1">آگهی مجامع عادی یا فوق العاده</asp:ListItem>
                        <asp:ListItem Value="2">آگهی تقسیم های سود</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    تیتر</td>
                <td>
                    <asp:TextBox ID="txt_titr" runat="server" Width="358px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    تاریخ مندرج</td>
                <td>
                    <asp:TextBox ID="txt_tarikh" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    متن آگهی</td>
                <td>
                    <FCKeditorV2:FCKeditor ID="fck_matn" runat="server" Height="300px" 
                        Width="700px">
                    </FCKeditorV2:FCKeditor>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton8" runat="server" onclick="LinkButton8_Click">ثبت</asp:LinkButton>
                </td>
            </tr>
        </table>
        <br />
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataKeyNames="sn_id" DataSourceID="ods_notices" GridLines="Vertical">
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton10" runat="server" onclick="LinkButton10_Click" 
                            ToolTip='<%# Eval("sn_id") %>'>ویرایش</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="sn_type" HeaderText="نوع" SortExpression="sn_type" />
                <asp:BoundField DataField="sn_titr" HeaderText="تیتر" 
                    SortExpression="sn_titr" />
                <asp:BoundField DataField="sn_tarikhshmasi" HeaderText="تاریخ مندج" 
                    SortExpression="sn_tarikhshmasi" />
                <asp:CheckBoxField DataField="sn_visible" HeaderText="نمایش" 
                    SortExpression="sn_visible" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <EmptyDataTemplate>
                <asp:LinkButton ID="LinkButton9" runat="server" ToolTip='<%# Eval("sn_id") %>'>ویرایش</asp:LinkButton>
            </EmptyDataTemplate>
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#DCDCDC" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ods_notices" runat="server" DeleteMethod="Delete" 
            InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetData" 
            TypeName="MainDataModuleTableAdapters.tbl_stockholders_noticeTableAdapter" 
            UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_sn_id" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="sn_type" Type="Int32" />
                <asp:Parameter Name="sn_titr" Type="String" />
                <asp:Parameter Name="sn_tarikhshmasi" Type="String" />
                <asp:Parameter Name="sn_matn" Type="String" />
                <asp:Parameter Name="sn_visible" Type="Boolean" />
                <asp:Parameter Name="sn_lang" Type="Int32" />
                <asp:Parameter Name="Original_sn_id" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="sn_type" Type="Int32" />
                <asp:Parameter Name="sn_titr" Type="String" />
                <asp:Parameter Name="sn_tarikhshmasi" Type="String" />
                <asp:Parameter Name="sn_matn" Type="String" />
                <asp:Parameter Name="sn_visible" Type="Boolean" />
                <asp:Parameter Name="sn_lang" Type="Int32" />
            </InsertParameters>
        </asp:ObjectDataSource>
        <br />
    </asp:Panel>
  <br />  
  
</div>