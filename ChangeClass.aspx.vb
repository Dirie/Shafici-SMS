Imports System.Data
Imports System.Data.SqlClient

Partial Class ChangeClass
    Inherits System.Web.UI.Page
    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")

    Sub fillFromSchoolName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        DrpfromSchoolName.Items.Clear()
        DrpfromSchoolName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT SchoolName from SChools", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            DrpfromSchoolName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub fillFromClassName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        drpFromClassName.Items.Clear()
        drpFromClassName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT ClassName from Students", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            drpFromClassName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub fillToSchoolName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        DrptoSchoolName.Items.Clear()
        DrptoSchoolName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT SchoolName from SChools", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            DrptoSchoolName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub fillTOClassName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        DrptoClassName.Items.Clear()
        DrptoClassName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT ClassName from Classes", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            DrptoClassName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub UpdateChangeClass()
        conn.Open()
        Dim strsql As String = "Update Students set ClassName=" & DrptoClassName.Text & " where ClassName='" & drpFromClassName.Text & "'"
        Dim cmd = New SqlCommand(strsql, conn)
        cmd.CommandType = CommandType.Text
        cmd.ExecuteNonQuery()
        cmd = Nothing
        lblmessage.Text = "Class " + drpFromClassName.Text + " " & " Has been Promoted Class " & DrptoClassName.Text
    End Sub
    Protected Sub btnchange_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnchange.Click
        UpdateChangeClass()

    End Sub
    Private Sub clear()
        drpFromClassName.Items.Clear()
        DrpfromSchoolName.Items.Clear()
        DrptoClassName.Items.Clear()
        DrptoSchoolName.Items.Clear()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            fillFromSchoolName()
            fillFromClassName()
            fillToSchoolName()
            fillTOClassName()
        End If
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        clear()
    End Sub
End Class
