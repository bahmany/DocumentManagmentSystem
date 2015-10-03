<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_EducationAddNewTestGroup.ascx.cs" Inherits="ascx_frm_EducationAddNewTest" %>
<style type="text/css">
    .style1
    {
        color: #339933;
        font-weight: bold;
    }
</style>


<div dir="rtl" style="font-family: tahoma; font-size: 11px">

    <asp:Panel ID="Panel1" runat="server" DefaultButton="lb_post">
   <div >
    <table>
        <tr>
            <td colspan="5">
                لطفا در ورود اطلاعات توجه شود زیرا بعد از ثبت امکان تغییر وجود ندارد</td>
        </tr>
        <tr>
            <td>
                عنوان آزمون</td>
            <td>
                <asp:TextBox ID="txt_TestTitle" runat="server"></asp:TextBox>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_TestTitle" ErrorMessage="عنوان آزمون را وارد کنید"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                گروه آزمون دهنده<td>
                    <asp:DropDownList ID="drp_SelectDrp" runat="server" 
                        DataSourceID="sds_UsersGroupName" DataTextField="etug_GroupName" 
                        DataValueField="etug_id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="sds_UsersGroupName" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:atiehfouladConnectionString %>" 
                        SelectCommand="SELECT etug_id, etug_GroupName, etug_DateOfPost FROM tbl_education_tests_user_group ORDER BY etug_id DESC">
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
                نوع آزمون
                <td>
                    <asp:DropDownList ID="drp_TestType" runat="server">
                        <asp:ListItem Value="1">تستی</asp:ListItem>
                        <asp:ListItem Value="2">تشریحی</asp:ListItem>
                        <asp:ListItem Selected="True" Value="3">هردو</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </td>
        </tr>
        <tr>
            <td>
                تعداد سوالات تشریحی</td>
            <td style="margin-right: 40px">
                <asp:TextBox ID="txt_TestTshrihiTedad" runat="server" Width="50px">0</asp:TextBox>
            </td>
            <td>
                نمره کل</td>
            <td>
                <asp:TextBox ID="txt_TestTshrihiNomreh" runat="server" Width="50px">0</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_TestTestiTedad" 
                    ErrorMessage="تعداد سوالات تشریحی را مشخص کنید"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_TestTshrihiNomreh" 
                    ErrorMessage="نمره کل سوالات تشریحی را مشخص کنید"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                تعداد سوالات تستی<td>
                <asp:TextBox ID="txt_TestTestiTedad" runat="server" Width="50px">0</asp:TextBox>
            </td>
            <td>
                نمره کل</td>
            <td>
                <asp:TextBox ID="txt_TestTestiNomreh" runat="server" Width="50px">0</asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_TestTestiTedad" 
                    ErrorMessage="تعداد سوالات تستی را مشخص کنید"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txt_TestTshrihiTedad" 
                    ErrorMessage="نمره سوالات تستی را مشخص کنید"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                طراح سوالات</td>
            <td>
                <asp:TextBox ID="txt_TestDesigner" runat="server"></asp:TextBox>
            </td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txt_TestDesigner" 
                    ErrorMessage="نام طراح سوال را وارد نمایید"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                زمان برگزاری
            <td>
                <span class="style1">1300/00/00</span><br />
                <asp:TextBox ID="txt_startTime" runat="server"></asp:TextBox>
            </td>
            <td>
                ساعت</td>
            <td>
                <span class="style1">00:00</span><br />
                <asp:TextBox ID="txt_startTimeTime" runat="server" Width="50px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txt_startTime" ErrorMessage="روز برگزاری آزمون را مشخص کنید"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txt_startTimeTime" 
                    ErrorMessage="ساعت شروع آزمون را مشخص کنید"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                زمان پایان
            <td>
                <span class="style1">1300/00/00</span><br />
                <asp:TextBox ID="txt_endTime" runat="server"></asp:TextBox>
            </td>
            <td>
                ساعت</td>
            <td>
                <span class="style1">00:00</span><br />
                <asp:TextBox ID="txt_endTimeTime" runat="server" Width="50px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txt_endTime" ErrorMessage="روز پایان آزمون را مشخص کنید"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txt_endTimeTime" 
                    ErrorMessage="ساعت اتمام آزمون را مشخص کنید"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:LinkButton ID="lb_post" runat="server" onclick="lb_post_Click">ثبت</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
     </div>
     </asp:Panel>
    <br />
    <br />


</div>


