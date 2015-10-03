<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_EconimicalProcess.ascx.cs" Inherits="ascx_frm_EconimicalProcess" %>
<%@ Register src="pnl_AllFeeFor7DaysInOneLook.ascx" tagname="pnl_AllFeeFor7DaysInOneLook" tagprefix="uc1" %>
<%@ Register src="pnl_AllFeeFor7DaysInOneLookListed.ascx" tagname="pnl_AllFeeFor7DaysInOneLookListed" tagprefix="uc2" %>
<%@ Register src="pnl_AllFeeFor7DaysInOneLookDetails.ascx" tagname="pnl_AllFeeFor7DaysInOneLookDetails" tagprefix="uc3" %>
<div>

    <br />
    <br />
    <br />
    <br />
    <uc3:pnl_AllFeeFor7DaysInOneLookDetails ID="pnl_AllFeeFor7DaysInOneLookDetails1" 
        runat="server" />
    <br />
    <div style="padding: 6px">
    <uc2:pnl_AllFeeFor7DaysInOneLookListed ID="pnl_AllFeeFor7DaysInOneLookListed1" 
        runat="server" />
    </div>
    <br />

</div>