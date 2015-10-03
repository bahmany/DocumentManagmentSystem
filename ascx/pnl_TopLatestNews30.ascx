<%@ Control Language="C#" AutoEventWireup="true" CodeFile="pnl_TopLatestNews30.ascx.cs" Inherits="ascx_pnl_TopLatestNews30" %>
<div>

    <asp:Label ID="Label1" runat="server" 
        Text="<%$ Resources:Resource, latestNews %>"></asp:Label>
<div style="padding: 4px; font-family: tahoma; font-size: 11px;">

    <asp:DataList ID="DataList1" runat="server" DataSourceID="ods_topnews" 
        Width="100%">
        <ItemTemplate>
        <div >
            <table style="width: 100%">
                <tr>
                    <td style="font-family: tahoma; font-size: 12px; color: #000066; background-color: #FBF2E6;">
                 
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("n_topic") %>' Font-Bold="true"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFFFFF;">
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("n_summery") %>'></asp:Label>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/AtiehLogoLow.gif"/>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("_date") %>'></asp:Label>
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                            Text="<%$ Resources:Resource, CompleteNews %>" ToolTip='<%# Eval("n_id") %>'></asp:LinkButton>
                        &nbsp;</td>
                </tr>
            </table>
            </div>
        </ItemTemplate>
    </asp:DataList>
    

    
    <asp:ObjectDataSource ID="ods_topnews" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_newsTopNewsAdapter">
        <SelectParameters>
            <asp:CookieParameter CookieName="language_id" Name="n_lang" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>

</div>

</div>