Imports System.Data.SqlClient
Imports System.Data
Imports System.IO
Imports System.Web.Configuration
Partial Class frmPaymentPerDate
    Inherits System.Web.UI.Page
    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")

    Sub fillGrid()
        Try
            conn.Open()
            Dim sql As String
            sql = "Select * from SchoolLog where Title='" & drpTitle.Text & "'"
            Dim ds As New DataSet
            Dim da As New SqlDataAdapter(sql, conn)
            da.Fill(ds, "SchoolLog")
            Me.GridView1.DataSource = ds.Tables("SchoolLog")
            GridView1.DataBind()
        Catch ex As Exception
            lblmwssage.Visible = True
            lblmwssage.Text = ex.Message
        Finally
            conn.Close()
        End Try
    End Sub
    Sub fillcombox_Name()
        Try
            conn.Open()
            Dim cmd As New SqlCommand("select distinct Title from SchoolLog", conn)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            While dr.Read
                If Not IsDBNull(dr.Item(0)) Then
                    drpTitle.Items.Add(dr.Item(0))
                End If
            End While
            dr.Close()
            conn.Close()
        Catch ex As Exception
            lblmwssage.Visible = True
            lblmwssage.Text = ex.Message & " fill comb"
        End Try
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            fillcombox_Name()
            'fillGrid()
        End If
    End Sub
    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        fillGrid()
    End Sub
   
   
End Class
