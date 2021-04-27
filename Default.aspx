<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="StockShifterVB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to Stock Shifter</h1>

        <%--         <p><a href="" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>--%>
    </div>

    <div class="row">

        <div class="col-md-4">

            <asp:Panel ID="pnlScanClick" runat="server" CssClass="text-center">



                <div class="col-md-4">
                </div>
                <div class="col-md-4 justify-content-center">
                    <div class="row">
                        <asp:Label ID="lblScanClick" AssociatedControlID="txtScanClick" class="" runat="server" Text="Scanner" />
                    </div>
                    <asp:TextBox ID="txtScanClick" runat="server" MaxLength="50" Text="Please click and scan." />
                    <div class="row">
                        <asp:LinkButton ID="btnScanClick" runat="server" Text="Process" CssClass="btn" />
                    </div>
                </div>
                <div class="col-md-4">
                </div>


            </asp:Panel>



        </div>

    </div>

</asp:Content>
