Imports AForge
Imports AForge.Video
Imports ZXing
Imports System
Imports System.Data
Imports System.Windows
Imports AForge.Video.DirectShow
Imports System.Drawing

Public Class _Default
    Inherits Page

    Public Sub New()
        InitializeComponent()
    End Sub

    Private filterInfoCollection As FilterInfoCollection
    Private videoCaptureDevice As VideoCaptureDevice



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        filterInfoCollection = New FilterInfoCollection(FilterCategory.VideoInputDevice)

        For Each device As FilterInfo In filterInfoCollection
            cboCamera.Items.Add(device.Name)
        Next

        ''cboCamera.SelectedIndex = 0

    End Sub

    Private Sub btnScanClick_Click(sender As Object, e As EventArgs) Handles btnScanClick.Click

        videoCaptureDevice = New VideoCaptureDevice(filterInfoCollection(cboCamera.SelectedIndex).MonikerString)
        videoCaptureDevice.NewFrame += AddressOf VideoCaptureDevice_NewFrame
        videoCaptureDevice.Start()





        'Dim StockCode As String
        'StockCode = txtScanClick.Text
        'Response.Redirect(String.Format("~/stock.aspx?val=" + StockCode))
        If videoCaptureDevice.IsRunning Then videoCaptureDevice.[Stop]()

    End Sub

    Private Sub VideoCaptureDevice_NewFrame(ByVal sender As Object, ByVal eventArgs As AForge.Video.NewFrame)
        Dim bitmap As Bitmap = CType(eventArgs.Frame.Clone(), Bitmap)
        Dim reader As BarcodeReader = New BarcodeReader()
        Dim result = reader.Decode(bitmap)

        If result IsNot Nothing Then
            txtBarcode.Invoke(New MethodInvoker(Function()
                                                    txtBarcode.Text = result.ToString()
                                                End Function))
        End If

        imgScanImage = bitmap
    End Sub


    'Import from C# Code converter Device Scanner

    'Partial Public Class Form1
    '    Inherits Form

    '    Public Sub New()
    '        InitializeComponent()
    '    End Sub

    '    Private filterInfoCollection As FilterInfoCollection
    '    Private videoCaptureDevice As VideoCaptureDevice

    '    Private Sub Form1_Load(ByVal sender As Object, ByVal e As EventArgs)
    '        filterInfoCollection = New FilterInfoCollection(FilterCategory.VideoInputDevice)

    '        For Each device As FilterInfo In filterInfoCollection
    '            cboCamera.Items.Add(device.Name)
    '        Next

    '        cboCamera.SelectedIndex = 0
    '    End Sub

    '    Private Sub btnStart_Click(ByVal sender As Object, ByVal e As EventArgs)
    '        videoCaptureDevice = New VideoCaptureDevice(filterInfoCollection(cboCamera.SelectedIndex).MonikerString)
    '        videoCaptureDevice.NewFrame += AddressOf VideoCaptureDevice_NewFrame
    '        videoCaptureDevice.Start()
    '    End Sub

    '    Private Sub VideoCaptureDevice_NewFrame(ByVal sender As Object, ByVal eventArgs As AForge.Video.NewFrame)
    '        Dim bitmap As Bitmap = CType(eventArgs.Frame.Clone(), Bitmap)
    '        Dim reader As BarcodeReader = New BarcodeReader()
    '        Dim result = reader.Decode(bitmap)

    '        If result IsNot Nothing Then
    '            txtBarcode.Invoke(New MethodInvoker(Function()
    '                                                    txtBarcode.Text = result.ToString()
    '                                                End Function))
    '        End If

    '        pictureBox.Image = bitmap
    '    End Sub

    '    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As FormClosingEventArgs)
    '        If videoCaptureDevice.IsRunning Then videoCaptureDevice.[Stop]()
    '    End Sub
    'End Class


End Class