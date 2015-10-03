<%@ Control Language="C#" AutoEventWireup="true" CodeFile="pnl_AllFeeFor7DaysInOneLookListed.ascx.cs" Inherits="ascx_panels_pnl_AllFeeFor7DaysInOneLook" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="Telerik.Charting" namespace="Telerik.Charting" tagprefix="telerik" %>





<script type="text/javascript">
<!--
var g_blinkTime = 500;
var g_blinkCounter = 0;

function blinkElement(elementId)
{
 if ( (g_blinkCounter % 2) == 0 )
 {
  if ( document.getElementById )
  {
   document.getElementById(elementId).style.visibility = 'visible';
  }
  // IE 4...
  else if ( document.all )
  {
   document.all[elementId].style.visibility = 'visible';
  }
  // NS 4...
  else if ( document.layers )
  {
   document.layers[elementId].visibility = 'visible';
  }
 }
 else
 {
  if ( document.getElementById )
  {
   document.getElementById(elementId).style.visibility = 'hidden';
  }
  // IE 4...
  else if ( document.all )
  {
   document.all[elementId].style.visibility = 'hidden';
  }
  // NS 4...
  else if ( document.layers )
  {
   document.layers[elementId].visibility = 'hidden';
  }
 }

 if ( g_blinkCounter < 1 )
 {
  g_blinkCounter++;
 }
 else
 {
  g_blinkCounter--
 }

 window.setTimeout('blinkElement(\"' + elementId + '\")', g_blinkTime);
}
// -->

</script>

<div id="div_lbl_top">
            <asp:Label ID="Label8" runat="server" 
                Text="<%$ Resources:Resource, LatestFees %>" Font-Bold="True"></asp:Label> </div>  <asp:ObjectDataSource ID="ods_GetTopPublicCostsList" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            
    TypeName="MainDataModuleTableAdapters.func_GetPriceChangesListTableAdapter">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="CostGoodGroupID" Type="Int32" />
                            <asp:Parameter DefaultValue="1" Name="PrivacyType" Type="Int32" />
                            <asp:Parameter DefaultValue="True" Name="Visibily" Type="Boolean" />
                            <asp:Parameter DefaultValue="1" Name="LanguageID" Type="Int32" />
                        </SelectParameters>
        </asp:ObjectDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="GoodID,balance" DataSourceID="ods_GetTopPublicCostsList" 
                        Font-Names="tahoma" Font-Size="11px" onrowcreated="GridView1_RowCreated" 
                        onrowdatabound="GridView1_RowDataBound" 
    BackColor="White" Font-Bold="True" 
                        GridLines="Horizontal" ShowHeader="False" Width="100%">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                
                                
                                    &nbsp;&nbsp;&nbsp;<asp:Image ID="img_nochange" runat="server" 
                                        ImageUrl='<%# Eval("__balance") %>' style="height: 16px; width: 14px" />
                                    &nbsp;&nbsp;
                               
                                
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="GoodName" HeaderText="نام" 
                                SortExpression="GoodName" >
                                <ItemStyle BackColor="#F0EFEC" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Cost" HeaderText="بها ریال" SortExpression="Cost" >
                                <ItemStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="shPostDate" HeaderText="شمسی" ReadOnly="True" 
                                SortExpression="shPostDate" >
                                <ItemStyle BackColor="#F2FFD7" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PostDate" HeaderText="میلادی" 
                                SortExpression="PostDate" >
                                <ItemStyle BackColor="#DEF8DF" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>    
                    <script language="javascript">
                        blinkElement('div_lbl_top');
                    
                    </script> 
                    
                    
        
         