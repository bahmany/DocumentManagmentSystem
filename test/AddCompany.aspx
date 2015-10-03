<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCompany.aspx.cs" Inherits="test_AddCompany" %>

<%@ Register src="../ascx/frm_SubCompaniesManager.ascx" tagname="frm_SubCompaniesManager" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:frm_SubCompaniesManager ID="frm_SubCompaniesManager1" runat="server" />
    
    </div>
    </form>
</body>
</html>
