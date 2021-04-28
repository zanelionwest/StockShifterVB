<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="StockShifterVB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-center">Welcome to Stock Shifter</h1>

        <%--         <p><a href="" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
    </div>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 justify-content-center">
            <asp:Label ID="lblCameraSelect" AssociatedControlID="ddlCameraSelect" runat="server" CssClass="lbl" Text="Camera: " />

            <asp:DropDownList ID="ddlCameraSelect" runat="server" Width="250" />
        </div>
        <div class="col-md-4"></div>
    </div>

    <div id="pnlScanClick" class="d-flex justify-content-center text-center">

        <div>

            <div class="row">
                <asp:Image ID="imgScanImage" runat="server" Width="500" Height="500" />
            </div>

        </div>
    </div>

    <br />
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <asp:Label ID="lblScanClick" AssociatedControlID="txtBarcode" class="" runat="server" Text="Barcode: " />
            <asp:TextBox ID="txtBarcode" runat="server" MaxLength="50" width="250"/>
        </div>
        <div class="col-md-4"></div>
    </div>


    <br />
    <div class="row justify-content-center">
        <asp:Button ID="btnScanClick" runat="server" CssClass="btn btn-primary btn-lg" Text="Start" />
    </div>



</asp:Content>
