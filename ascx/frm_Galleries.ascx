<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_Galleries.ascx.cs" Inherits="ascx_frm_Galleries" %>
<div>

<div>
    <br />
    <br />
    <asp:Label ID="lbl_title" runat="server" 
        Text="<%$ Resources:Resource, GalleryTopic %>" Font-Bold="True" 
        Font-Size="14pt"></asp:Label>
    <br />
    <br />
    <br />
</div>
<div style="padding: 10px">
    <asp:DataList ID="dl_Galleries_list" runat="server" CellPadding="4" 
        DataKeyField="g_id" DataSourceID="ods_Galleries" ForeColor="#333333" 
        Width="100%">
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <AlternatingItemStyle BackColor="White" />
        <ItemStyle BackColor="#E3EAEB" />
        <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
            <asp:Label ID="lbl_GalleryTitle" runat="server" Text='<%# Eval("g_name") %>' 
                style="font-size: medium; font-weight: 700"></asp:Label><br />
            <asp:Label ID="lbl_desc" runat="server" Text='<%# Eval("g_desc") %>' 
                style="color: #003399"></asp:Label>
            
            &nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("g_date_shmasi") %>' 
                style="font-size: xx-small"></asp:Label>
            <br />
            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<table>
                <tr>
                    <td>
                        <img alt="" src="img/no_change.png" style="width: 15px; height: 15px" /></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl='<%# Eval("g_link_page") %>' Text="<%$ Resources:Resource, GalleryEnter %>"></asp:HyperLink>
                    </td>
                </tr>
            </table>
&nbsp;
            
            <hr />
        </ItemTemplate>
    </asp:DataList>

    <asp:ObjectDataSource ID="ods_Galleries" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_galleriesTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_g_id" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="g_name" Type="String" />
            <asp:Parameter Name="g_desc" Type="String" />
            <asp:Parameter Name="g_date_of_post" Type="DateTime" />
            <asp:Parameter Name="g_date_shmasi" Type="String" />
            <asp:Parameter Name="g_link_page" Type="String" />
            <asp:Parameter Name="Original_g_id" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="g_name" Type="String" />
            <asp:Parameter Name="g_desc" Type="String" />
            <asp:Parameter Name="g_date_of_post" Type="DateTime" />
            <asp:Parameter Name="g_date_shmasi" Type="String" />
            <asp:Parameter Name="g_link_page" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>

<table>
    <tr>
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
    </tr>
</table>

</div>

</div>