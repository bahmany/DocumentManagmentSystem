<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_Doc_LettersDataEntryForm.ascx.cs" Inherits="ascx_frm_Doc_LettersDataEntryForm" %>
<%@ Register src="frm_DOC_LettersCorrectionExpertsComments_DataEntry.ascx" tagname="frm_DOC_LettersCorrectionExpertsComments_DataEntry" tagprefix="uc1" %>
<div dir="rtl" style="font-family: tahoma; font-size: 12px; text-align: right;">

    <table>
        <tr>
            <td>
                تاریخ ثبت</td>
            <td>
                فرستنده</td>
            <td>
                شماره سند</td>
            <td>
                قسمت</td>
            <td>
                تاریخ صدور سند</td>
            <td>
                چرخه سند</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="ds_name" DataValueField="ds_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:sabafoolad_docConnectionString %>" 
                    SelectCommand="SELECT tbl_doc_senders.* FROM tbl_doc_senders">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="dp_name" DataValueField="dp_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:sabafoolad_docConnectionString %>" 
                    SelectCommand="SELECT tbl_doc_parts.* FROM tbl_doc_parts">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="dtc_name" DataValueField="dtc_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:sabafoolad_docConnectionString %>" 
                    SelectCommand="SELECT tbl_doc_types_of_circulate.* FROM tbl_doc_types_of_circulate">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                موضوع سند</td>
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
            <td colspan="6">
                <asp:TextBox ID="TextBox8" runat="server" Width="684px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                توضیحات سند</td>
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
            <td colspan="6">
                <asp:TextBox ID="TextBox9" runat="server" Height="108px" TextMode="MultiLine" 
                    Width="684px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" rowspan="2">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="سند دارای تائیدیه دریافت" />
            </td>
            <td>
                مدت زمان پاسخگویی (روز )</td>
            <td colspan="2" rowspan="2">
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
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
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
            <td colspan="6">
                <div style="border: thick solid #CCCCCC; background-color: #EFEFEF">
                <div>
                <asp:CheckBox ID="CheckBox2" runat="server" Text="این سند میبایست اصلاح شود" />
                    <br />
                مشخصات اصلاحیه
                </div>
                
                    <table>
                        <tr>
                            <td>
                                تاریخ ثبت اصلاحیه
                            </td>
                            <td>
                                مهلت ارسال پاسخ ( رفع اصلاحیه )</td>
                            <td>
                                شماره سند جدید</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                ثبت نظرات کارشناسی مربوط به علت ارجاع این سند بعنوان سند اصلاحیه</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <uc1:frm_DOC_LettersCorrectionExpertsComments_DataEntry ID="frm_DOC_LettersCorrectionExpertsComments_DataEntry1" 
                                    runat="server" />
                            </td>
                        </tr>
                    </table>
                
                
                </div>
                
                
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
        </tr>
    </table>

</div>