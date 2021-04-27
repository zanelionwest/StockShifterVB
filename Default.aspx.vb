Public Class _Default
    Inherits Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load


    End Sub

    Private Sub btnScanClick_Click(sender As Object, e As EventArgs) Handles btnScanClick.Click
        Dim StockCode As String
        StockCode = txtScanClick.Text
        Response.Redirect(String.Format("~/stock.aspx?val=" + StockCode))


    End Sub
End Class