<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test2.aspx.cs" Inherits="test2" %>


<%@ Register src="~/ascx/frm_EducationAddNewTestGroup.ascx" tagname="frm_EducationAddNewTest" tagprefix="uc5" %>

<%@ Register src="ascx/frm_EducationAddNewTestQuestions.ascx" tagname="frm_EducationAddNewTestQuestions" tagprefix="uc1" %>
<%@ Register src="ascx/frm_EducationAdminTest.ascx" tagname="frm_EducationAdminTest" tagprefix="uc2" %>

<%@ Register src="ascx/frm_EducationTestPage.ascx" tagname="frm_EducationTestPage" tagprefix="uc3" %>

<%@ Register src="ascx/frm_EducationAddNewArticle.ascx" tagname="frm_EducationAddNewArticle" tagprefix="uc4" %>

<%@ Register src="ascx/frm_StockHoldersAdmin.ascx" tagname="frm_StockHoldersAdmin" tagprefix="uc6" %>

<%@ Register src="ascx/frm_StockHoldersPublic.ascx" tagname="frm_StockHoldersPublic" tagprefix="uc7" %>

<%@ Register src="ascx/frm_CritisemsPublic.ascx" tagname="frm_CritisemsPublic" tagprefix="uc8" %>

<%@ Register src="ascx/frm_EducationPublicArea.ascx" tagname="frm_EducationPublicArea" tagprefix="uc9" %>

<%@ Register src="ascx/frm_Doc_LettersDataEntryForm.ascx" tagname="frm_Doc_LettersDataEntryForm" tagprefix="uc10" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body style="font-family: tahoma; font-size: 11px">
    <form id="form1" runat="server">

    <uc10:frm_Doc_LettersDataEntryForm ID="frm_Doc_LettersDataEntryForm1" 
        runat="server" />

    </form>
</body>
</html>
