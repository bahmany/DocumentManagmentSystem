<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="loader.aspx.cs" Inherits="loader" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<%@ Register src="ascx/pnl_Login.ascx" tagname="pnl_Login" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-color: #FFFFFF; font-family: tahoma; font-size: 11px; color: #000000; display: inline-block; width: 900px;">
    
    <telerik:RadAjaxPanel ID="RadAjaxPanel1" runat="server" 
            LoadingPanelID="RadAjaxLoadingPanel1" CssClass="LoaderContent">
        <telerik:RadAjaxLoadingPanel ID="RadAjaxLoadingPanel1" runat="server" Height="75px"
            Width="75px">
            <img alt="Loading..." src='<%= RadAjaxLoadingPanel.GetWebResourceUrl(Page, "Telerik.Web.UI.Skins.Default.Ajax.loading.gif") %>'
                style="border: 0px;" /></telerik:RadAjaxLoadingPanel>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
      
    

 
 
    
    
    </telerik:RadAjaxPanel>  
     </div> 
  
</asp:Content>

