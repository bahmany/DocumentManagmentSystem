<%@ Control Language="C#" AutoEventWireup="true" CodeFile="frm_SubComaniesList.ascx.cs" Inherits="ascx_frm_SubComaniesList" %>
<center style="overflow: hidden">
</center>
<div id="map_canvas" style="height: 400px; width:100%">

</div>
<br />
<div style="padding: 5px">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="sc_id" 
        DataSourceID="ods_subcompanies" Width="100%" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Vertical">
        <AlternatingItemStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
        <ItemTemplate>
           <div style="background-image: url('../img/subcompaniesbackground.jpg'); background-repeat: no-repeat; background-position: center top">
           
               &nbsp;&nbsp;&nbsp;&nbsp;
           
               <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="16px" 
                   Text='<%# Eval("sc_name") %>'></asp:Label>
               <br />
               <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label2" runat="server" Text='<%# Eval("sc_intro") %>'></asp:Label>
               <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label3" runat="server" Text='<%# Eval("sc_express_intro") %>'></asp:Label>
               <br />
           
           </div><hr />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:ObjectDataSource ID="ods_subcompanies" runat="server" 
        OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
        TypeName="MainDataModuleTableAdapters.tbl_subcompaniesTableAdapter" 
        DeleteMethod="Delete" InsertMethod="Insert" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_sc_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="sc_lang" Type="Int32" />
            <asp:Parameter Name="sc_name" Type="String" />
            <asp:Parameter Name="sc_link_to_country_city_city" Type="Int32" />
            <asp:Parameter Name="sc_intro" Type="String" />
            <asp:Parameter Name="sc_express_intro" Type="String" />
            <asp:Parameter Name="sc_exp" Type="String" />
            <asp:Parameter Name="sc_e" Type="Double" />
            <asp:Parameter Name="sc_n" Type="Double" />
        </InsertParameters>
        <SelectParameters>
            <asp:CookieParameter CookieName="Language_ID" DefaultValue="1" Name="sc_lang" 
                Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="sc_lang" Type="Int32" />
            <asp:Parameter Name="sc_name" Type="String" />
            <asp:Parameter Name="sc_link_to_country_city_city" Type="Int32" />
            <asp:Parameter Name="sc_intro" Type="String" />
            <asp:Parameter Name="sc_express_intro" Type="String" />
            <asp:Parameter Name="sc_exp" Type="String" />
            <asp:Parameter Name="sc_e" Type="Double" />
            <asp:Parameter Name="sc_n" Type="Double" />
            <asp:Parameter Name="Original_sc_id" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>

</div>

        <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
            <script type="text/javascript">
               
                    var myLatlng = new google.maps.LatLng(35.765577, 51.436389);
                    var myOptions = {
                        zoom: 5,
                        center: myLatlng,
                        navigationControl: false,
                        mapTypeControl: false,
                        scaleControl: false,

                        mapTypeId: google.maps.MapTypeId.HYBRID
                    }
                    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);

                    var marker = new g;
                    google.maps.Marker({
                        position: myLatlng,
                        map: map,
                        title: "Atiehfoulade Naghshe Jahan"
                    });
               

            </script>

