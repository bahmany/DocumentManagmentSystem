<%@ Control Language="C#" AutoEventWireup="true" CodeFile="pnl_AllFeeFor7DaysInOneLookDetails.ascx.cs" Inherits="ascx_panels_pnl_AllFeeFor7DaysInOneLook" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="Telerik.Charting" namespace="Telerik.Charting" tagprefix="telerik" %>

<div>
<center>
        <div style="padding: 0px; border: 1px none #000000; width: 734px; height: 300px; display: block" 
    id="ghnyhfqwfrbhrth">
        
        <div id="fghrtgwerfgvwef">
            <table width="410px">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" 
                            Text="<%$ Resources:Resource, SelectCount %>" ForeColor="Black"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddl_selectCsot" runat="server" AutoPostBack="True" 
                            DataSourceID="sds_CostsList" DataTextField="cg_name" DataValueField="cg_id" 
                            Height="20px" Width="166px" 
                            onselectedindexchanged="ddl_selectCsot_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="sds_CostsList" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:atiehfouladConnectionString %>" 
                            SelectCommand="SELECT cg_name, cg_id FROM tbl_costs_goods WHERE (cg_visible= @cg_visibility) AND (cg_type = @cg_type)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="cg_visibility" />
                                <asp:Parameter DefaultValue="1" Name="cg_type" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            </div>
        <div id="asdasdasdasdwefvg">
        <telerik:RadChart ID="RadChart1" runat="server" CssClass="RadChart" 
            DataSourceID="ods_GetTopPublicCostsChart" DefaultType="StackedLine" Skin="Web" 
                Height="265px" Width="812px" AutoLayout="True">
            <Series>
<telerik:ChartSeries Name="قیمت" DataYColumn="قیمت" Type="StackedLine" 
                    DataLabelsColumn="تاریخ ثبت">
    <Appearance>
        <FillStyle FillType="ComplexGradient" MainColor="97, 131, 217">
            <FillSettings>
                <ComplexGradient>
                    <telerik:GradientElement Color="97, 131, 217" />
                    <telerik:GradientElement Color="194, 194, 194" Position="1" />
                </ComplexGradient>
            </FillSettings>
        </FillStyle>
        <LabelAppearance RotationAngle="90">
        </LabelAppearance>
    </Appearance>
                </telerik:ChartSeries>
</Series>
            <PlotArea>
                <XAxis AutoScale="False" DataLabelsColumn="تاریخ ثبت" MaxValue="60" MinValue="1" 
                    Step="1" AutoShrink="False" IsZeroBased="False" LayoutMode="Inside" 
                    MaxItemsCount="65">
                    <Appearance Color="165, 190, 223" MajorTick-Color="165, 190, 223">
                        <MajorGridLines Color="165, 190, 223" />
                    </Appearance>
                    <Items>
                        <telerik:ChartAxisItem Value="1">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="2">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="3">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="4">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="5">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="6">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="7">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="8">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="9">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="10">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="11">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="12">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="13">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="14">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="15">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="16">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="17">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="18">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="19">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="20">
                        </telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="21"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="22"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="23"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="24"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="25"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="26"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="27"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="28"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="29"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="30"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="31"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="32"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="33"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="34"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="35"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="36"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="37"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="38"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="39"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="40"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="41"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="42"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="43"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="44"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="45"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="46"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="47"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="48"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="49"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="50"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="51"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="52"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="53"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="54"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="55"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="56"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="57"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="58"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="59"></telerik:ChartAxisItem>
<telerik:ChartAxisItem Value="60"></telerik:ChartAxisItem>
                    </Items>
                </XAxis>
                <YAxis AxisMode="Extended" AutoScale="False" MaxValue="1600" MinValue="1500" 
                    Step="10">
                    <ScaleBreaks Enabled="True">
                    </ScaleBreaks>
                    <Appearance Color="165, 190, 223" MajorTick-Color="165, 190, 223" 
                        MinorTick-Color="165, 190, 223">
                        <MajorGridLines Color="165, 190, 223" />
                        <MinorGridLines Color="165, 190, 223" Width="0" />
                    </Appearance>
                    <Items>
                        <telerik:ChartAxisItem Value="1500">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="1510">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="1520">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="1530">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="1540">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="1550">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="1560">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="1570">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="1580">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="1590">
                        </telerik:ChartAxisItem>
                        <telerik:ChartAxisItem Value="1600">
                        </telerik:ChartAxisItem>
                    </Items>
                </YAxis>
                <Appearance Dimensions-Margins="18%, 23%, 12%, 10%">
                    <FillStyle FillType="Solid" MainColor="249, 250, 251">
                    </FillStyle>
                    <Border Color="165, 190, 223" />
                </Appearance>
            </PlotArea>
            <Appearance>
                <FillStyle MainColor="249, 250, 251">
                </FillStyle>
                <Border Color="103, 136, 190" Visible="False" />
            </Appearance>
            <ChartTitle Visible="False">
                <Appearance Dimensions-Margins="4%, 10px, 14px, 6%" Visible="False">
                </Appearance>
                <TextBlock Text="نمودار قیمت">
                    <Appearance TextProperties-Color="0, 0, 102">
                    </Appearance>
                </TextBlock>
            </ChartTitle>
            <Legend Visible="False">
                <Appearance Visible="False">
                    <FillStyle MainColor="231, 241, 255">
                    </FillStyle>
                    <Border Color="165, 190, 223" />
                </Appearance>
            </Legend>
        </telerik:RadChart>
            </div>
        
        </div>
</center>
</div>
        
         <asp:ObjectDataSource ID="ods_GetTopPublicCostsChart" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            
    TypeName="MainDataModuleTableAdapters.tbl_GetTop40PublicCostsForChart1TableAdapter">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="c_link_to_cost_goods" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="PublicyOfCosts" Type="Int32" />
                <asp:Parameter DefaultValue="true" Name="VisibiltyOfCosts" Type="Boolean" />
                <asp:Parameter DefaultValue="1" Name="c_lang_id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    <p style="font-family: tahoma; font-size: 12px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataSourceID="ods_GetTopPublicCostsChart" Font-Names="Tahoma" 
            Font-Size="12px" GridLines="Vertical" Width="477px">
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <Columns>
                <asp:BoundField DataField="تاریخ ثبت" HeaderText="تاریخ ثبت" 
                    SortExpression="تاریخ ثبت" />
                <asp:BoundField DataField="قیمت" HeaderText="قیمت" SortExpression="قیمت" />
                <asp:BoundField DataField="نام" HeaderText="نام" SortExpression="نام" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#DCDCDC" />
        </asp:GridView>
    </p>
