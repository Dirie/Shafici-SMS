Imports System.Data.SqlClient
Imports System.Data
Partial Class SearchUSDNo
    Inherits System.Web.UI.Page
    Dim cnstring As String = "data source=localhost;initial catalog=Shafici;integrated Security=true"
    Dim mycon As New SqlConnection(cnstring)

    Sub fillGrid(ByVal SQL As String)
        Try
            mycon.Open()
            Dim ds As New DataSet
            Dim da As New SqlDataAdapter(SQL, mycon)
            da.Fill(ds, "Masuul")
            Me.GridView1.DataSource = ds.Tables("Masuul")
            GridView1.DataBind()
        Catch ex As Exception
            'LBLMESAGES.Visible = True
            'lblmsg.Visible = True
            'LBLMESAGES.Text = ex.Message
        Finally
            mycon.Close()
        End Try
    End Sub
    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        fillGrid("select bono,STUDENTID,STUDENTNAME,SCHOOLNAME ,CLASSNAME,MONTH ,AMOUNT,TRNDATE ,USR ,Year   from TBLCashReciept  where USDNO='" & txtsearch.Text & "'")
    End Sub
End Class
