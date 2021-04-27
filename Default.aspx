<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="StockShifterVB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="text-center">Welcome to Stock Shifter</h1>

        <%--         <p><a href="" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
    </div>

    <div class="row">

        <div class="col-md-4" > </div>

        <div class="">

            <div id="pnlScanClick" class="d-flex justify-content-center text-center">

                <div class="col-md-4">
                    <div class="d-flex align-items-center justify-content-center">
                        <asp:Label ID="lblScanClick" AssociatedControlID="txtScanClick" class="" runat="server" Text="" />
                    </div>
                    <div>
                        <asp:TextBox ID="txtScanClick" runat="server" MaxLength="50" Placeholder="Please click and scan." />
                    </div>
                    <br />
                    <div class="row">
                        <asp:Button ID="btnScanClick" runat="server" CssClass="btn btn-primary btn-lg" Text="GO" />
                    </div>
                </div>
              
            </div>

        </div>

        <div class="col-md-4" > </div>

    </div>

</asp:Content>
