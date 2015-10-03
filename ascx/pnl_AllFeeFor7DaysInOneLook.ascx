<%@ Control Language="C#" AutoEventWireup="true" CodeFile="pnl_AllFeeFor7DaysInOneLook.ascx.cs" Inherits="ascx_panels_pnl_AllFeeFor7DaysInOneLook" %>
<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>
<%@ Register assembly="Telerik.Charting" namespace="Telerik.Charting" tagprefix="telerik" %>
        <div style="padding: 0px; border: 1px none #000000; width: 410px; height: 300px; display: block" 
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
            DataSourceID="ods_GetTopPublicCostsChart" DefaultType="Spline" Skin="Web" 
                Height="265px" Width="410px" AutoLayout="True" SeriesPalette="Green">
            <Series>
<telerik:ChartSeries Name="قیمت" DataYColumn="قیمت" Type="Spline">
    <Appearance>
        <FillStyle FillType="ComplexGradient" MainColor="DarkSeaGreen">
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
                <DataTable>
                    <Appearance TextProperties-Color="Black">
                    </Appearance>
                </DataTable>
                <XAxis AutoScale="False" DataLabelsColumn="تاریخ ثبت" MaxValue="20" MinValue="1" 
                    Step="1" AutoShrink="False" IsZeroBased="False" LayoutMode="Inside" 
                    MaxItemsCount="25">
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
                    </Items>
                </XAxis>
                <YAxis AxisMode="Extended" AutoScale="False" MaxValue="1600" MinValue="1500" 
                    Step="10">
                    <ScaleBreaks Enabled="True" LineStyle="JaggedCurve" Width="6">
                    </ScaleBreaks>
                    <Appearance Color="165, 190, 223" MajorTick-Color="165, 190, 223" 
                        MinorTick-Color="165, 190, 223" StartCap="Round">
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
                <Appearance Dimensions-Margins="8%, 6%, 8%, 6%" 
                    Corners="Round, Round, Round, Round, 5" Position-AlignedPosition="Center" 
                    SeriesPalette="Green">
                    <FillStyle FillType="Solid" MainColor="249, 250, 251">
                    </FillStyle>
                    <Border Color="165, 190, 223" />
                    <Shadow Blur="5" Distance="3" Position="Behind" />
                </Appearance>
            </PlotArea>
            <Appearance>
                <FillStyle MainColor="249, 250, 251">
                </FillStyle>
                <Border Color="103, 136, 190" Visible="False" />
            </Appearance>
            <ChartTitle Visible="False">
                <Appearance Dimensions-Margins="1%, 1%, 1%, 1%" Visible="False" 
                    Position-AlignedPosition="Top">
                </Appearance>
                <TextBlock Text="نمودار قیمت">
                    <Appearance TextProperties-Color="0, 0, 102">
                    </Appearance>
                </TextBlock>
            </ChartTitle>
            <Legend Visible="False">
                <Appearance Dimensions-Margins="1%, 1%, 1%, 1%" 
                    Position-AlignedPosition="Bottom" Visible="False">
                    <ItemMarkerAppearance Figure="Circle">
                    </ItemMarkerAppearance>
                    <FillStyle MainColor="231, 241, 255">
                    </FillStyle>
                    <Border Color="165, 190, 223" />
                </Appearance>
                <TextBlock>
                    <Appearance TextProperties-Color="Black">
                    </Appearance>
                </TextBlock>
            </Legend>
        </telerik:RadChart>
            </div>
        
        </div>
        
         <asp:ObjectDataSource ID="ods_GetTopPublicCostsChart" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="MainDataModuleTableAdapters.tbl_GetTop40PublicCostsForChartTableAdapter">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="c_link_to_cost_goods" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="PublicyOfCosts" Type="Int32" />
                <asp:Parameter DefaultValue="true" Name="VisibiltyOfCosts" Type="Boolean" />
                <asp:Parameter DefaultValue="1" Name="c_lang_id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>