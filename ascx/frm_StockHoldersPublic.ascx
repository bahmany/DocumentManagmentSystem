<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_StockHoldersPublic.ascx.cs" Inherits="ascx_frm_StockHoldersPublic" %>
<style type="text/css">
    .style1
    {
        width: 100%;
    }
</style>
<div  dir="<%Response.Write(Get_ltr_rtl());%>" style="font-family: tahoma; font-size: 12px">
    <br />
&nbsp;<asp:Label ID="lbl_wellcome" runat="server" 
        Text="<%$ Resources:Resource, welcomeToStck %>" Font-Bold="True" 
        ForeColor="#009933"></asp:Label><br />
    <br />
    
    <asp:Panel ID="pnl_login" runat="server">
        <br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" 
                        Text="<%$ Resources:Resource, lbl_name_karbar %>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_login" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" 
                        Text="<%$ Resources:Resource, lbl_password %>"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="lb_signin" runat="server" 
                        Text="<%$ Resources:Resource, login %>" onclick="lb_signin_Click"></asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    
    </asp:Panel>
    <asp:Panel ID="pnl_StockManagerBody" runat="server" Visible="False">
        <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click" 
            Text="<%$ Resources:Resource, Sign_out %>"></asp:LinkButton>
    <asp:Panel ID="pnl_newsbody" runat="server">
    <hr />
            <br />
            <asp:Label ID="lbl_newsTitle" runat="server" Font-Bold="True" 
                ForeColor="#006600"></asp:Label>
            <br />
            <asp:Label ID="lbl_newsDate" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lbl_newsbody" runat="server"></asp:Label>
    <hr />
        </asp:Panel>
        
    <table class="style1">
        <tr>
            <td style="border: 1px solid #666666; vertical-align: top">
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_name" runat="server" Text="<%$ Resources:Resource, _name %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_name" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_CodeSaham" runat="server" Text="<%$ Resources:Resource, codesaham %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_CodeSaham" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_MizanSaham" runat="server"  Text="<%$ Resources:Resource, mizaneSaham %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_MizanSaham" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_BankName" runat="server"  Text="<%$ Resources:Resource, namebank %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_BankName" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_AccountNoe" runat="server"  Text="<%$ Resources:Resource, noehesab %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_AccountNoe" runat="server" Enabled="False"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbl_AccountNo" runat="server"  Text="<%$ Resources:Resource, shomarehhesab %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_AccountNo" runat="server" Enabled="False"></asp:TextBox>
                        </td>
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
                    </tr>
                </table>
            </td>
            <td style="border: 1px solid #666666; vertical-align: top">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#339933" 
                    Text="<%$ Resources:Resource, agahiMajameAdai %>"></asp:Label>
                <br />
                <asp:DataList ID="DataList1" runat="server" DataKeyField="sn_id" 
                    DataSourceID="ods_NoticesList">
                    <ItemTemplate>
                        *
                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("sn_titr") %>' 
                            ToolTip='<%# Eval("sn_id") %>' onclick="LinkButton1_Click"></asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" 
                            Text='<%# Eval("sn_tarikhshmasi") %>' ToolTip='<%# Eval("sn_id") %>' 
                            onclick="LinkButton1_Click"></asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="ods_NoticesList" runat="server" DeleteMethod="Delete" 
                    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="GetNewsListByType" 
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
                    <SelectParameters>
                        <asp:CookieParameter CookieName="LanguageID" DefaultValue="1" Name="language" 
                            Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="NoticeType" Type="Int32" />
                        <asp:Parameter DefaultValue="True" Name="Visiblity" Type="Boolean" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="sn_type" Type="Int32" />
                        <asp:Parameter Name="sn_titr" Type="String" />
                        <asp:Parameter Name="sn_tarikhshmasi" Type="String" />
                        <asp:Parameter Name="sn_matn" Type="String" />
                        <asp:Parameter Name="sn_visible" Type="Boolean" />
                        <asp:Parameter Name="sn_lang" Type="Int32" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td style="border: 1px solid #666666; vertical-align: top">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#339933" 
                    Text="<%$ Resources:Resource, agahiTaghsimeSood %>"></asp:Label>
                <br />
                <asp:DataList ID="DataList2" runat="server" DataKeyField="sn_id" 
                    DataSourceID="ods_NoticesList0">
                    <ItemTemplate>
                        *
                        <asp:LinkButton ID="LinkButton3" runat="server" Text='<%# Eval("sn_titr") %>' 
                            ToolTip='<%# Eval("sn_id") %>' onclick="LinkButton1_Click"></asp:LinkButton>
                        &nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" 
                            Text='<%# Eval("sn_tarikhshmasi") %>' ToolTip='<%# Eval("sn_id") %>' 
                            onclick="LinkButton1_Click"></asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="ods_NoticesList0" runat="server" 
                    DeleteMethod="Delete" InsertMethod="Insert" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetNewsListByType" 
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
                    <SelectParameters>
                        <asp:CookieParameter CookieName="LanguageID" DefaultValue="1" Name="language" 
                            Type="Int32" />
                        <asp:Parameter DefaultValue="2" Name="NoticeType" Type="Int32" />
                        <asp:Parameter DefaultValue="True" Name="Visiblity" Type="Boolean" />
                    </SelectParameters>
                    <InsertParameters>
                        <asp:Parameter Name="sn_type" Type="Int32" />
                        <asp:Parameter Name="sn_titr" Type="String" />
                        <asp:Parameter Name="sn_tarikhshmasi" Type="String" />
                        <asp:Parameter Name="sn_matn" Type="String" />
                        <asp:Parameter Name="sn_visible" Type="Boolean" />
                        <asp:Parameter Name="sn_lang" Type="Int32" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </td>
            <td style="border: 1px solid #666666; vertical-align: top">
                <asp:Panel ID="pnl_change_pass" runat="server">
               
                <table>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="Label5" runat="server" 
                                Text="<%$ Resources:Resource, ChangePassword %>"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" 
                                Text="<%$ Resources:Resource, LastPassword %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_OldPass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" 
                                Text="<%$ Resources:Resource, NewPassword %>"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_NewPass" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click" 
                                Text="<%$ Resources:Resource, _OK %>"></asp:LinkButton>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                 </asp:Panel>
                <asp:Panel ID="pnl_change_pass_ok" runat="server">
                
                    <asp:Label ID="Label8" runat="server" Text="رمز عبور شما تغییر کرد " 
                        Visible="False"></asp:Label>
                </asp:Panel>
            </td>
        </tr>
    </table>
    
        
  </asp:Panel>
</div>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
