<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_NewsPublic.ascx.cs" Inherits="ascx_frm_NewsPublic" %>
    <%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_news_typeTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_nt_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="nt_name" Type="String" />
            <asp:Parameter Name="nt_type" Type="Int32" />
            <asp:Parameter Name="Original_nt_id" Type="Int32" />
        </UpdateParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="1" Name="nt_type" Type="Int32" />
            <asp:CookieParameter CookieName="language_id" DefaultValue="1" Name="nt_lang" 
                Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="nt_name" Type="String" />
            <asp:Parameter Name="nt_type" Type="Int32" />
        </InsertParameters>
    </asp:ObjectDataSource>

<style type="text/css">
#topnewslogo
{
    text-align:  <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    
    }

</style>

<div id="topnewslogo">
    <asp:Image ID="Image1" runat="server" 
        ImageUrl="<%$ Resources:Resource, newfa %>" />   
   
    
    </div>
    <div style="width: 900px; display: block; ">



<style type="text/css">
.newsspc
{
width:30px;
text-align:center;

display:inline-block;
}
.newsspc
{
 display: inline !ie;

}
.newsbar
{
    width:60px;
height:60px;
display:inline-block;
}
.newsbar
{
 display: inline !ie;

}
.newsinf
{

width:800px;
height:60px;
vertical-align:top;
display:inline-block;
padding-bottom:5px;
padding: 0px 5px 0px 5px;
}
.newsinf
{
 display: inline !ie;
}
</style>
<div id="NewsBAR" 
        style="width: 900px; height: 20px; background-color: #0b0162; font-family: tahoma; font-size: 12px; font-weight: bold; color: #FFFFFF; text-decoration: none">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="nt_id" 
        DataSourceID="ObjectDataSource1" RepeatDirection="Horizontal" 
        CellPadding="0" ShowFooter="False" ShowHeader="False" 
        BackColor="Transparent" ForeColor="White">
        <ItemTemplate>
            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("nt_name") %>' 
                onclick="LinkButton1_Click" ToolTip='<%# Eval("nt_id") %>' 
              BackColor="Transparent" ForeColor="White"></asp:LinkButton>
              <div class="newsspc">|</div>
              
    
        </ItemTemplate>
    </asp:DataList>
    </div>
<asp:ObjectDataSource ID="ods_NewsList" runat="server" 
    DeleteMethod="Delete" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetNews" 
    TypeName="MainDataModuleTableAdapters.tbl_newsTableAdapter">
    <DeleteParameters>
        <asp:Parameter Name="Original_کد" Type="Int32" />
    </DeleteParameters>
    <SelectParameters>
        <asp:Parameter DefaultValue="" Name="n_kind" Size="9" Type="Int32" />
        <asp:CookieParameter CookieName="Language_ID" Name="n_lang" Type="Int32" />
    </SelectParameters>
</asp:ObjectDataSource>
    <br />
    <br />
    <div>
<asp:Label ID="Label1" runat="server" Font-Size="16pt" Font-Bold="True">Title</asp:Label>
</div>
    <br />
    <br />
    <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Height="75px"
        Width="75px">
        <img alt="Loading..." src='<%= RadAjaxLoadingPanel.GetWebResourceUrl(Page, "Telerik.Web.UI.Skins.Default.Ajax.loading.gif") %>'
            style="border: 0px;" />
    </telerik:RadAjaxLoadingPanel>
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" 
        LoadingPanelID="RadAjaxLoadingPanel1" onload="RadAjaxPanel1_Load">
        <asp:Panel ID="Panel2" runat="server">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="کد" DataSourceID="ods_NewsList" 
    PageSize="30" ShowHeader="False">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate><br />
                        <div class="newsbar">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("[عکس کوچک]") %>' 
                       Width="60px" Height="60px" />
                        </div>
                        <div class="newsinf">
                            <div style="height: 20px;">
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
                       Font-Names="Tahoma" Font-Size="12px" ForeColor="#006600" 
                       OnClick="LinkButton2_Click" Text='<%# Eval("تیتر") %>' 
                       ToolTip='<%# Eval("کد") %>'></asp:LinkButton>
                            </div>
                            <div style="height: 20px">
                                <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" 
                       Text='<%# Eval("خلاصه") %>' ToolTip='<%# Eval("کد") %>'></asp:LinkButton>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" 
                                    OnClick="LinkButton2_Click" Text='<%# Eval("[تاریخ ثبت]") %>' 
                                    ToolTip='<%# Eval("کد") %>'></asp:LinkButton>
                            </div>
                            <div style="height: 20px">
                            </div>
                        </div>
                        <br />   <br />
                         
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EmptyDataTemplate>
                No Access
            </EmptyDataTemplate>
        </asp:GridView>
    </asp:Panel>
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" Visible="False" BorderColor="White" 
            BorderStyle="Solid" BorderWidth="20px">
        &nbsp;&nbsp;<table>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
                        Text="<%$ Resources:Resource, all_news_back %>"></asp:LinkButton>
                </td>
                <td>
                    <img alt="" src="img/no_change.gif" style="width: 15px; height: 15px" /><img 
                        alt="" src="img/no_change.gif" style="width: 15px; height: 15px" /><img 
                        alt="" src="img/no_change.gif" style="width: 15px; height: 15px" /></td>
            </tr>
        </table>
        <br />
        <br />
        <div style="text-align: justify">
        <asp:Label ID="Label2" runat="server" Text="TEST" Font-Bold="False" 
                Font-Size="12px" ForeColor="#000042"></asp:Label>
        </div>
        <br />
        <br />
        <hr />
        <asp:Panel ID="Panel3" runat="server">
            <asp:Label ID="Label3" runat="server" 
                Text="<%$ Resources:Resource, ErsaleNazar %>"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="116px" TextMode="MultiLine" 
                Width="484px"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="  Send  " 
                Width="105px" />
        </asp:Panel>
        <br />
        <asp:Label ID="Label5" runat="server" 
            Text="<%$ Resources:Resource, ErsaleNazarOK %>" Visible="False"></asp:Label>
        <br />
    </asp:Panel>
    <br />
    <br />
    <br /></telerik:RadAjaxPanel>

</div>

    