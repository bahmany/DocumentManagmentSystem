<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_DOC_LettersCorrectionExpertsComments_DataEntry.ascx.cs" Inherits="ascx_frm_DOC_LettersCorrectionExpertsComments_DataEntry" %>
<div dir="rtl" style="font-family: tahoma; text-align: right;">

    <table>
        <tr>
            <td colspan="3">
                در این قسمت نظر خود را وارد نمایید<br />
                <asp:TextBox ID="TextBox1" runat="server" Height="97px" TextMode="MultiLine" 
                    Width="421px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">ثبت</asp:LinkButton>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="dc_id" 
                    DataSourceID="ods_Corrections" Width="100%">
                    <ItemTemplate>
                    <div style="font-family: tahoma; font-size: 11px; background-color: #F4F4F4; border: 1px solid #999999; margin-bottom: 6px">
                        <table width="100%">
                            <tr>
                                <td>
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:Label ID="shTime" runat="server" Font-Bold="True" 
                                                    Text='<%# Eval("shTime") %>'></asp:Label>
                                            </td>
                                            <td>
                                                کارشناس</td>
                                            <td style="border-bottom-style: solid; border-width: 1px; border-color: #666666">
                                                <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                                                    Text='<%# Eval("u_family") %>'></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" 
                                        Text='<%# Eval("dc_explanation", "{0}") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                        </div>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="ods_Corrections" runat="server" OldValuesParameterFormatString="original_{0}" 
                    SelectMethod="GetDataBy" 
                    
                    TypeName="MainDataModuleTableAdapters.tbl_doc_letters_correctionsTableAdapter">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="1" Name="dc_link_to_tbl_doc_letters" 
                            QueryStringField="CrID" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
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

</div>