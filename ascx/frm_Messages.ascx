<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_Messages.ascx.cs" Inherits="ascx_frm_Messages" %>
<div>





<div style="background-color: #E6E6D9; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: #800000; padding-right: 10px; padding-left: 10px;">

    <asp:LinkButton ID="LinkButton1" runat="server" 
        Text="<%$ Resources:Resource, RecievedList %>" onclick="LinkButton1_Click"></asp:LinkButton>
&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" Text="<%$ Resources:Resource, SentList %>"></asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" Text="<%$ Resources:Resource, SendMessage %>"></asp:LinkButton>

</div>

    <asp:Panel ID="pnl_recievedMassages" runat="server">
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </asp:Panel>
    <br />
    <br />

    <br />

</div>