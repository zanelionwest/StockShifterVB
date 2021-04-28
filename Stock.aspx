<%@ Page Title="Stock" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Stock.aspx.vb" Inherits="StockShifterVB.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div></div>
    <br />

    <div class="">

    <div class="table">
        <div class="row">
            <div class="col-md-4">
                <asp:Label ID="lblStockCode" runat="server" AssociatedControlID="txtStockCode"/>
                <asp:TextBox ID="txtStockCode" runat="server" placeholder="Stock Code" />
            </div>

            <div class="col-md-4">
                <asp:Label ID="lblPalletId" runat="server" AssociatedControlID="txtPalletId" />
                <asp:TextBox ID="txtPalletId" runat="server" placeholder="Pallet ID" />
            </div>

            <div class="col-md-4">
                <asp:Label ID="lblStockLocation" runat="server" AssociatedControlID="ddlStockLocation"/>
                <asp:DropDownList ID="ddlStockLocation" runat="server" >
                    
                    <asp:ListItem Value="Default">Select...</asp:ListItem>
                    <asp:listitem value="Warehous">Warehouse 1</asp:listitem>
                    <asp:listitem value="Presshal">Presshall</asp:listitem>
                
                </asp:DropDownList>
             </div>
        </div>
        <div class="row">
        <div class="col-md-4"> </div>
        <div class="col-md-4 text-center">

            <br />
            <asp:Button ID="btnLocationChange" runat="server" CssClass="btn btn-primary btn-lg text-center" Text="Update" />

        </div>
        <div class="col-md-4"> </div>
        </div>

    </div>

    </div>

</asp:Content>
