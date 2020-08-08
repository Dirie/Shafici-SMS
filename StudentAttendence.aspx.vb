Imports System.Data.SqlClient
Imports System.Data
Partial Class StudentAttendence
    Inherits System.Web.UI.Page
    Dim cnstring As String = "data source=localhost;initial catalog=Shafici;integrated Security=true"
    Dim mycon As New SqlConnection(cnstring)
    Sub fillcombox_School()
        'drpschool.Items.Clear()
        Try
            mycon.Open()
            Dim cmd As New SqlCommand("select distinct SchoolName from Students ", mycon)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            While dr.Read
                If Not IsDBNull(dr.Item(0)) Then
                    drpschool.Items.Add(dr.Item(0))
                End If
            End While
            dr.Close()
            mycon.Close()
        Catch ex As Exception
         
        End Try
    End Sub
    'this will fill Class combobox.
    Sub fillcombox_Class()
        ' drpclass.Items.Clear()
        Try
            mycon.Open()
            Dim cmd As New SqlCommand("select distinct ClassName from Students where SchoolName='" & drpschool.SelectedItem.ToString & "'", mycon)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            While dr.Read
                If Not IsDBNull(dr.Item(0)) Then
                    drpclass.Items.Add(dr.Item(0))
                End If
            End While
            dr.Close()
            mycon.Close()
        Catch ex As Exception
           
        End Try
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        fillcombox_School()
        fillcombox_Class()
    End Sub

    Protected Sub drpschool_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpschool.SelectedIndexChanged
        fillcombox_Class()

    End Sub
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
    Protected Sub drpclass_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpclass.SelectedIndexChanged
        fillGrid("select STUDENTID,STUDENTNAME,0 as status from Students  where SchoolName='" & drpschool.SelectedItem.ToString & "' and ClassName='" & drpclass.SelectedItem.ToString & "'")
    End Sub
End Class
