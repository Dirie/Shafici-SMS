Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Imports System.Web.Configuration
Partial Class frmPaymentPerDate
    Inherits System.Web.UI.Page
    Dim cnstring As String = "data source=localhost;initial catalog=Shafici;integrated Security=true"
    Dim mycon As New SqlConnection(cnstring)
    Dim TotalAmount As Double
    Sub fillGrid()
        Try
            mycon.Open()
            Dim sql As String
            sql = "sp_PaymentPerDate '" & Format(CDate(drpFrom.SelectedItem.ToString), "yyyy-MM-dd") & "' , '" & Format(CDate(drpTo.SelectedItem.ToString), "yyyy-MM-dd") & "'"
            'MsgBox(sql)
            Dim ds As New DataSet
            Dim da As New SqlDataAdapter(sql, mycon)
            da.Fill(ds, "Masuul")
            Me.GridView1.DataSource = ds.Tables("Masuul")
            GridView1.DataBind()
        Catch ex As Exception
            LBLMESAGES.Visible = True
            LBLMESAGES.Text = ex.Message
        Finally
            mycon.Close()
        End Try
    End Sub
    Sub fillcombox_Name()
        Try
            mycon.Open()
            Dim cmd As New SqlCommand("select distinct TRNDATE from TBLCashReciept", mycon)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            While dr.Read
                If Not IsDBNull(dr.Item(0)) Then
                    drpFrom.Items.Add(dr.Item(0))
                    drpTo.Items.Add(dr.Item(0))
                End If
            End While
            dr.Close()
            mycon.Close()
        Catch ex As Exception
            LBLMESAGES.Visible = True
            LBLMESAGES.Text = ex.Message & " fill comb"
        End Try
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
         
            fillcombox_Name()
            drpFrom.SelectedIndex = drpFrom.Items.Count - 1
            drpTo.SelectedIndex = drpTo.Items.Count - 1
            fillGrid()
        End If
    End Sub
    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        fillGrid()
    End Sub

    Protected Sub GridView1_RowDataBound(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowDataBound
        'Dim AmountTotal As Decimal = 0

        If mycon.State = ConnectionState.Closed Then
            mycon.Open()
        End If

        calculateTotals()

        If e.Row.RowType = DataControlRowType.DataRow Then
            ' add the UnitPrice and QuantityTotal to the running total variables
            TotalAmount = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "Amount"))

        ElseIf e.Row.RowType = DataControlRowType.Footer Then
            e.Row.Cells(4).Text = "Totals:"

            e.Row.Cells(5).Text = TotalAmount.ToString("c")


            e.Row.Cells(1).HorizontalAlign = HorizontalAlign.Right
            e.Row.Cells(2).HorizontalAlign = HorizontalAlign.Right
            e.Row.Font.Bold = True
        End If
        mycon.Close()
    End Sub

    Public Sub calculateTotals()
        Try

       
            Dim strSQL As String
            'Dim SqlHawala As String
            Dim cmdTotal As New SqlClient.SqlCommand
            Dim readResults As SqlClient.SqlDataReader

            strSQL = "select sum(AMOUNT) as Total from TBLCashReciept where trndate between'" & CDate(drpFrom.SelectedItem.ToString) & " ' and '" & CDate(drpTo.SelectedItem.ToString) & "'"

            'Response.Write(strSQL)
            cmdTotal.Connection = mycon
            cmdTotal.CommandType = CommandType.Text
            cmdTotal.CommandText = strSQL
            If mycon.State = ConnectionState.Closed Then
                mycon.Open()
            End If

            readResults = cmdTotal.ExecuteReader(CommandBehavior.CloseConnection)
            If readResults.HasRows Then
                While (readResults.Read())

                    TotalAmount = FormatCurrency(IIf(IsDBNull(readResults.Item("Total")), Nothing, readResults.Item("Total")))

                End While
            End If
            mycon.Close()
        Catch ex As Exception
            LBLMESAGES.Visible = True
            LBLMESAGES.Text = ex.Message
        End Try
    End Sub
    Public Overrides Sub VerifyRenderingInServerForm(ByVal control As Control)
        ' Verifies that the control is rendered 

    End Sub
    Protected Sub btnToEcxel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnToEcxel.Click
        Response.ClearContent()
        Response.Buffer = True
        Response.AddHeader("content-disposition", String.Format("attachment; filename={0}", "Payments from" & drpFrom.SelectedItem.ToString & "to " & drpTo.SelectedItem.ToString & ".xls"))
        Response.ContentType = "application/ms-excel"
        Dim sw As New StringWriter()
        Dim htw As New HtmlTextWriter(sw)
        GridView1.AllowPaging = False
        fillGrid()
        'Change the Header Row back to white color
        GridView1.HeaderRow.Style.Add("background-color", "#FFFFFF")
        'Applying stlye to gridview header cells
        For i As Integer = 0 To GridView1.HeaderRow.Cells.Count - 1
            GridView1.HeaderRow.Cells(i).Style.Add("background-color", "#df5015")
        Next
        GridView1.RenderControl(htw)
        Response.Write(sw.ToString())
        Response.[End]()
    End Sub
   
   
End Class
