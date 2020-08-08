Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports System.Data

Partial Class frmPaymentVoucher
    Inherits System.Web.UI.Page
    ' Dim cnstring As String = WebConfigurationManager.ConnectionStrings("SH-SMS").ConnectionString
    Dim cnstring As String = "data source=localhost;initial catalog=Shafici;integrated Security=true"
    Dim mycon As New SqlConnection(cnstring)
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If IsPostBack = False Then
            Dim bono As Integer = CInt(Request.QueryString("q"))
            Fill_Elements(bono)
        End If
    End Sub
    Sub Fill_Elements(ByVal Bono As Integer)
        mycon.Open()

        Dim cmd As New SqlCommand("[rpt_PaymentVoucher] " & Bono, mycon)
        Dim da As New SqlDataAdapter
        Dim ds As New DataSet
        da.SelectCommand = cmd
        da.Fill(ds, "T")
        If ds.Tables("T").Rows.Count > 0 Then
            For i = 0 To ds.Tables("T").Rows.Count - 1
                'these elements are Original Voucher papulation.
                txtbonoA.Text = ds.Tables("T").Rows(i).Item(0).ToString
                txtdateA.Text = ds.Tables("T").Rows(i).Item(1)
                txtstnoA.Text = ds.Tables("T").Rows(i).Item(2)
                txtnameA.Text = ds.Tables("T").Rows(i).Item(3)
                txtschoolA.Text = ds.Tables("T").Rows(i).Item(4)
                txtclassA.Text = ds.Tables("T").Rows(i).Item(5)
                txtmonthsA.Text &= ds.Tables("T").Rows(i).Item(6) & ", "
                txtamountA.Text = ds.Tables("T").Rows(i).Item(7)
                txtamountInWordsA.Text = ds.Tables("T").Rows(i).Item(8)
                txtusdnoA.Text = ds.Tables("T").Rows(i).Item(9)

                'these elements are first copy of Voucher papulation.
                txtbonoC.Text = ds.Tables("T").Rows(i).Item(0).ToString
                txtdateC.Text = ds.Tables("T").Rows(i).Item(1)
                txtstnoC.Text = ds.Tables("T").Rows(i).Item(2)
                txtnameC.Text = ds.Tables("T").Rows(i).Item(3)
                txtschoolC.Text = ds.Tables("T").Rows(i).Item(4)
                txtclassC.Text = ds.Tables("T").Rows(i).Item(5)
                txtmonthsC.Text &= ds.Tables("T").Rows(i).Item(6) & ", "
                txtamountC.Text = ds.Tables("T").Rows(i).Item(7)
                txtamountInWordsC.Text = ds.Tables("T").Rows(i).Item(8)
                txtusdnoC.Text = ds.Tables("T").Rows(i).Item(9)

                'these elements are second Copy of Voucher papulation.
                txtbonoC0.Text = ds.Tables("T").Rows(i).Item(0).ToString
                txtdateC0.Text = ds.Tables("T").Rows(i).Item(1)
                txtstnoC0.Text = ds.Tables("T").Rows(i).Item(2)
                txtnameC0.Text = ds.Tables("T").Rows(i).Item(3)
                txtschoolC0.Text = ds.Tables("T").Rows(i).Item(4)
                txtclassC0.Text = ds.Tables("T").Rows(i).Item(5)
                txtmonthsC0.Text &= ds.Tables("T").Rows(i).Item(6) & ", "
                txtamountC0.Text = ds.Tables("T").Rows(i).Item(7)
                txtamountInWordsC0.Text = ds.Tables("T").Rows(i).Item(8)
                txtusdnoC0.Text = ds.Tables("T").Rows(i).Item(9)

            Next i
        End If
        ds.Dispose()
        mycon.Close()
    End Sub

End Class
