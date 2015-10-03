<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test.aspx.cs" Inherits="test" %>


<%@ Register src="ascx/frm_UsersAdmin.ascx" tagname="frm_UsersAdmin" tagprefix="uc1" %>


<%@ Register src="ascx/frm_PermissionManager.ascx" tagname="frm_PermissionManager" tagprefix="uc2" %>


<%@ Register src="ascx/pnl_AllFeeFor7DaysInOneLookListed.ascx" tagname="pnl_AllFeeFor7DaysInOneLookListed" tagprefix="uc3" %>


<%@ Register src="ascx/frm_BroadcastedCosts.ascx" tagname="frm_BroadcastedCosts" tagprefix="uc4" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
   
    
    
   
  
  <div style="width: 40px; height: 40px; display: inline;"></div>
  <div style="width: 40px; height: 40px; display: inline;"></div>
    
    
   
    
    <uc2:frm_PermissionManager ID="frm_PermissionManager1" runat="server" />
    
    
   
    
    </form>
</body>
</html>
