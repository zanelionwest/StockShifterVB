Imports System.Data

Public Class About
    Inherits Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

        Dim strStockCode As String = Request.QueryString("val")
        txtStockCode.Text = strStockCode


    End Sub



    Protected Sub StockLocation()





    End Sub

End Class