<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_EducationPublicArea.ascx.cs" Inherits="ascx_frm_EducationPublicArea" %>
<div>

    <br />
    <table width="800px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" 
                    Text="<%$ Resources:Resource, ExaminationsList %>"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <div style="font-family: tahoma; font-size: 12px; ">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="etm_id" 
                        DataSourceID="sds_TestsList" onrowcreated="GridView1_RowCreated" 
                        onrowdatabound="GridView1_RowDataBound" Width="100%" BackColor="White" 
                        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
                        CellSpacing="1" Font-Size="12px" GridLines="None">
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <Columns>
                            <asp:BoundField DataField="position" HeaderText="وضعیت آزمون" ReadOnly="True" 
                                SortExpression="position" />
                            <asp:BoundField DataField="etm_title" HeaderText="نام آزمون" 
                                SortExpression="etm_title" />
                            <asp:BoundField DataField="ds" HeaderText="شروع" SortExpression="ds" />
                            <asp:BoundField DataField="de" HeaderText="پایان" SortExpression="de" />
                            <asp:TemplateField>
                                <ItemTemplate> &nbsp;&nbsp;
                                    <asp:LinkButton ID="lnk_azmoon" runat="server" ToolTip='<%# Eval("etm_id") %>' 
                                        ondatabinding="lnk_azmoon_DataBinding" onclick="lnk_azmoon_Click">ورود به آزمون</asp:LinkButton>
                                    <asp:LinkButton ID="lnk_result" runat="server" onclick="lnk_result_Click" 
                                        ondatabinding="lnk_result_DataBinding" ToolTip='<%# Eval("etm_id") %>'>ورود به نتیجه</asp:LinkButton>
                                   
                                    <asp:Label ID="lbl_waiting_for_showing" runat="server" 
                                        ondatabinding="lbl_waiting_for_showing_DataBinding" Text="در انتظار برگزاری" 
                                        ToolTip='<%# Eval("etm_id") %>'></asp:Label>
                                    &nbsp;&nbsp;
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="sds_TestsList" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:atiehfouladConnectionString %>" SelectCommand="select 
'position'=
 case 
   when emt_obs_time_start &lt; GetDate() and emt_obs_time_end &gt; GetDate() then 'در حال برگذاری'
   when emt_obs_time_start &gt; GetDate() then 'برگذار نشده'
   when emt_obs_time_end &lt; GetDate() then 'برگذار شده'
else 'c'
end,
dbo.func_ConvertToDateTimePersian(emt_obs_time_start) as ds,
dbo.func_ConvertToDateTimePersian(emt_obs_time_end) as de,

* from  tbl_education_tests_groups order by etm_id desc"></asp:SqlDataSource>
                </div>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" 
                    Text="<%$ Resources:Resource, EducationArtilces %>"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" DataKeyNames="ea_id" DataSourceID="ods_Articles" 
                    Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" 
                    BorderWidth="2px" CellPadding="3" CellSpacing="1" Font-Size="12px" 
                    GridLines="None">
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <Columns>
                        <asp:BoundField DataField="ea_name" HeaderText="نام مقاله" 
                            SortExpression="ea_name" />
                        <asp:BoundField DataField="ea_summery" HeaderText="توضیحات" 
                            SortExpression="ea_summery" >
                            <ItemStyle BackColor="#D9D9FF" />
                        </asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                                    NavigateUrl='<%# Eval("ea_fileAddr") %>'>دریافت مقاله</asp:HyperLink>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ods_Articles" runat="server" DeleteMethod="Delete" 
                    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="GetData" 
                    TypeName="MainDataModuleTableAdapters.tbl_education_articlesTableAdapter" 
                    UpdateMethod="Update">
                    <DeleteParameters>
                        <asp:Parameter Name="Original_ea_id" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ea_name" Type="String" />
                        <asp:Parameter Name="ea_summery" Type="String" />
                        <asp:Parameter Name="ea_body" Type="String" />
                        <asp:Parameter Name="ea_type" Type="Int32" />
                        <asp:Parameter Name="ea_thumb" Type="String" />
                        <asp:Parameter Name="ea_fileAddr" Type="String" />
                        <asp:Parameter Name="ea_postDate" Type="DateTime" />
                        <asp:Parameter Name="ea_ObsDate" Type="DateTime" />
                        <asp:Parameter Name="Original_ea_id" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ea_name" Type="String" />
                        <asp:Parameter Name="ea_summery" Type="String" />
                        <asp:Parameter Name="ea_body" Type="String" />
                        <asp:Parameter Name="ea_type" Type="Int32" />
                        <asp:Parameter Name="ea_thumb" Type="String" />
                        <asp:Parameter Name="ea_fileAddr" Type="String" />
                        <asp:Parameter Name="ea_postDate" Type="DateTime" />
                        <asp:Parameter Name="ea_ObsDate" Type="DateTime" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>

</div>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
