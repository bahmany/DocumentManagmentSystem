<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_EducationTestPage.ascx.cs" Inherits="ascx_frm_EducationTestPage"  %>

<style type="text/css">
    .style1
    {
        color: #CC0000;
    }
    .style2
    {
        color: #006600;
        font-weight: bold;
    }
</style>

&nbsp;<div dir="rtl">

    <asp:Panel ID="pnl_TestBody" runat="server">

<div>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ساعت شروع :    
     <asp:Label ID="lbl_startTime" runat="server" Text="Label"></asp:Label>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     ساعت اتمام :
    <asp:Label ID="lbl_endTime" runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;زمان باقی مانده : &nbsp;&nbsp;
    <div style="position: fixed; top: 0px; left: 0px; display: block; float: left; color: #FF0000; text-decoration: blink; font-weight: bold;">
    <input 
        ID="txt" disabled="disabled" 
        style="width: 138px" type="text" /></div>&nbsp;&nbsp;<br />
    توجه داشته باشید که بعد از اتمام ساعات ذکر شده و عدم ارسال پاسخنامه سیستم از شما 
    برگه را دریافت نخواهد کرد.<br />
    &nbsp;</div>
     <asp:DataList ID="DataList1" runat="server" DataKeyField="etq_id" 
    DataSourceID="ods_Test" BackColor="LightGoldenrodYellow" BorderColor="Tan" 
         BorderWidth="1px" CellPadding="2" ForeColor="Black" 
         onitemdatabound="DataList1_ItemDataBound">
         <FooterStyle BackColor="Tan" />
         <AlternatingItemStyle BackColor="PaleGoldenrod" />
         <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
         <HeaderStyle BackColor="Tan" Font-Bold="True" />
    <ItemTemplate>
           <asp:Panel ID="pnl_tashrihi" runat="server">
        <table style="width: 451px">
            <tr>
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
                    <asp:Label ID="lbl_radeef" runat="server" Font-Bold="True" Text='<%#Container.ItemIndex+1 %>'></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lbl_matneSoal" runat="server" Text='<%# Eval("etq_content") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="جواب"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txt_JavabeTashrihi" runat="server" Width="392px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:HiddenField ID="hf_key" runat="server" Value='<%# Eval("etq_id") %>' />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="pnl_testi" runat="server">
        <table style="width: 451px">
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
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lbl_radeef0" runat="server" Font-Bold="True"  Text='<%#Container.ItemIndex+1 %>'></asp:Label>
                </td>
                <td colspan="4">
                    <asp:Label ID="txt_matneSoaltesti" runat="server" 
                Text='<%# Eval("etq_content") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:RadioButton ID="rb_a" runat="server" Text='<%# Eval("etq_A") %>' 
                        GroupName='<% #Container.ItemIndex+1  %>' />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    <asp:RadioButton ID="rb_b" runat="server" Text='<%# Eval("etq_B") %>' GroupName='<% #Container.ItemIndex+1  %>'/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                                        <asp:RadioButton ID="rb_c" runat="server" Text='<%# Eval("etq_C") %>' GroupName='<% #Container.ItemIndex+1  %>'/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
                                        <asp:RadioButton ID="rb_d" runat="server" Text='<%# Eval("etq_D") %>' GroupName='<% #Container.ItemIndex+1  %>'/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
            </tr>
        </table>
    </asp:Panel>

    </ItemTemplate>
</asp:DataList>
        <p style="margin-right: 40px">
            <asp:LinkButton ID="lb_submit" runat="server" onclick="lb_submit_Click">ثبت و ارسال آزمون</asp:LinkButton>
        </p>
    
    </asp:Panel>
    
    <asp:Panel ID="pnl_TestMessage" runat="server" Visible="False">
        <asp:Panel ID="pnl_alarm" runat="server">        <br class="style1" />
        <b><span class="style1">
        <br />
        شما نمی توانید به علل زیر در آزمون شرکت کنید : 
            <br />
            &nbsp;&nbsp;&nbsp; 1- وقت آزمون به پایان رسیده باشد</span><br 
            class="style1" />
        <span class="style1">&nbsp;&nbsp;&nbsp; 2- برگه آزمون را یک بار پر کرده و ارسال کرده باشید</span><br 
            class="style1" />
        <span class="style1">&nbsp;&nbsp;&nbsp; 3- نام شما در لیست آزمون دهنده ها نباشد</span></b><br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</asp:Panel>
        
        <asp:Panel ID="pnl_alarmOK" runat="server">
        
            <span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; آزمون شما ثبت گردید&nbsp;&nbsp;&nbsp; متشکریم</span></asp:Panel>


        <asp:Label ID="lbl_Message" runat="server"></asp:Label>
        <br />
    </asp:Panel>
</div>

<asp:ObjectDataSource ID="ods_Test" runat="server" DeleteMethod="Delete" 
    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
    SelectMethod="GetDataBy" 
    TypeName="MainDataModuleTableAdapters.tbl_education_tests_detailsTableAdapter" 
    UpdateMethod="Update">
    <DeleteParameters>
        <asp:Parameter Name="Original_etq_id" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="etq_type" Type="Int32" />
        <asp:Parameter Name="etq_content" Type="String" />
        <asp:Parameter Name="etq_A" Type="String" />
        <asp:Parameter Name="etq_B" Type="String" />
        <asp:Parameter Name="etq_C" Type="String" />
        <asp:Parameter Name="etq_D" Type="String" />
        <asp:Parameter Name="etq_mark" Type="Double" />
        <asp:Parameter Name="etq_minus_mark" Type="Double" />
        <asp:Parameter Name="etq_answer" Type="String" />
        <asp:Parameter Name="etq_group_link" Type="Int32" />
        <asp:Parameter Name="Original_etq_id" Type="Int32" />
    </UpdateParameters>
    <SelectParameters>
        <asp:SessionParameter DefaultValue="-1" Name="etq_group_link" 
            SessionField="TestSessionGroupID" Type="Int32" />
    </SelectParameters>
    <InsertParameters>
        <asp:Parameter Name="etq_type" Type="Int32" />
        <asp:Parameter Name="etq_content" Type="String" />
        <asp:Parameter Name="etq_A" Type="String" />
        <asp:Parameter Name="etq_B" Type="String" />
        <asp:Parameter Name="etq_C" Type="String" />
        <asp:Parameter Name="etq_D" Type="String" />
        <asp:Parameter Name="etq_mark" Type="Double" />
        <asp:Parameter Name="etq_minus_mark" Type="Double" />
        <asp:Parameter Name="etq_answer" Type="String" />
        <asp:Parameter Name="etq_group_link" Type="Int32" />
    </InsertParameters>
</asp:ObjectDataSource>
<script type="text/javascript">
        var c = <%Response.Write(getRemainSeconds());%>;
        var t;
        var timer_is_on = 0;

        function timedCount() {
            document.getElementById('txt').value = " ثانیه "+c;
            c = c - 1;
            t = setTimeout("timedCount()", 1000);
        }

        function doTimer() {
            if (!timer_is_on) {
                timer_is_on = 1;
                timedCount();
            }

        }
        timedCount();
</script>