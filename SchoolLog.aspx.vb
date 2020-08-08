Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class UniversityLog
    Inherits System.Web.UI.Page
    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal LogID As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmdLog As New SqlCommand("select * from SchoolLog where LogID='" & LogID & "'", conn)
        cmdLog.CommandType = CommandType.Text
        Dim dreader As SqlDataReader
        dreader = cmdLog.ExecuteReader

        If dreader.Read Then
            isRecordExists = True
        Else
            isRecordExists = False
        End If
        dreader.Close()
        cmdLog.Cancel() : cmdLog = Nothing
    End Function
    Private Sub ClearTexts()
        'lblmessage.Text = ""
        TxtlogID.Text = ""
        Txttitle.Text = ""
        Txtdetail.Text = ""
        Txtdate.Text = Now.Date
    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        lblmessage.Text = ""
        GenerateID()
    End Sub
    Private Sub GenerateID()
        conn.Open()
        Dim objCommand As SqlCommand = New SqlCommand("select LogID from SchoolLog  Order by LogID", conn)

        objCommand.CommandType = CommandType.Text

        Dim dreader As SqlDataReader
        'conn.Open()
        dreader = objCommand.ExecuteReader()
        Dim RecCount As Long
        Dim Flag, Varmyid As String
        Flag = ""
        Varmyid = ""

        If dreader.HasRows = True Then
            Do While (dreader.Read())
                RecCount = RecCount + 1
                Varmyid = dreader("LogID")
            Loop

            TxtlogID.Text = Varmyid + 1
        Else
            TxtlogID.Text = 1
        End If
        dreader.Close()
    End Sub
    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If

        Dim cmd As New SqlCommand("UpdateSchoolLog", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("LogID", SqlDbType.Int)
        prm.Value = CStr(TxtlogID.Text)

        prm = cmd.Parameters.Add("Title", SqlDbType.VarChar, 50)
        prm.Value = CStr(Txttitle.Text)

        prm = cmd.Parameters.Add("Detail", SqlDbType.VarChar, 8000)
        prm.Value = CStr(Txtdetail.Text)

        prm = cmd.Parameters.Add("Date", SqlDbType.Date)
        prm.Value = Txtdate.Text

        cmd.ExecuteNonQuery()
        lblmessage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
    End Sub
    Private Sub AddNewRecord()
        Dim cmd As New SqlCommand("AddSchoolLog", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("LogID", SqlDbType.Int)
        prm.Value = CStr(TxtlogID.Text)

        prm = cmd.Parameters.Add("Title", SqlDbType.VarChar, 50)
        prm.Value = CStr(Txttitle.Text)

        prm = cmd.Parameters.Add("Detail", SqlDbType.VarChar, 8000)
        prm.Value = CStr(Txtdetail.Text)

        prm = cmd.Parameters.Add("Date", SqlDbType.Date)
        prm.Value = Txtdate.Text

        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    Private Sub DeleteRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        'Dim msg As Integer
        'msg = MsgBox("Are Sure you want to Delete School Log?", vbYesNo + vbQuestion, "Registration Teacher")
        'If msg = MsgBoxResult.No Then
        '    Exit Sub
        'Else
        Dim cmd As New SqlCommand("DeleteSchoolLog", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure


        prm = cmd.Parameters.Add("LogID", SqlDbType.Int)
        prm.Value = CStr(TxtlogID.Text)

        prm = cmd.Parameters.Add("Title", SqlDbType.VarChar, 50)
        prm.Value = CStr(Txttitle.Text)

        prm = cmd.Parameters.Add("Detail", SqlDbType.VarChar, 8000)
        prm.Value = CStr(Txtdetail.Text)

        prm = cmd.Parameters.Add("Date", SqlDbType.Date)
        prm.Value = Txtdate.Text

        cmd.ExecuteNonQuery()
        lblmessage.Text = "Record Deleted Successfully"
        cmd.Cancel() : cmd = Nothing
        'End If
    End Sub
    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        If TxtlogID.Text = "" Then
            lblmessage.Text = "Please fill Teacher ID !!!"
            TxtlogID.Focus()
            Exit Sub
        ElseIf Txttitle.Text = "" Then
            lblmessage.Text = "Please fill Teacher Name !!!"
            Txttitle.Text = ""
            Txttitle.Focus()
            Exit Sub
        ElseIf Txtdetail.Text = "" Then
            lblmessage.Text = "Please Select Gender !!!"
            Txtdetail.Text = "Select Gender"
            Txtdetail.Focus()
            Exit Sub
        End If
        If isRecordExists(TxtlogID.Text) = False Then
            AddNewRecord()
            lblmessage.Text = "Record Saved Successfully"
            ClearTexts()
        Else
            UpdateRecord()
            ClearTexts()
        End If
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        If TxtlogID.Text = "" Then
            lblmessage.Text = "Please fill Teacher ID !!!"
            TxtlogID.Focus()
            Exit Sub
        ElseIf Txttitle.Text = "" Then
            lblmessage.Text = "Please fill Teacher Name !!!"
            Txttitle.Text = ""
            Txttitle.Focus()
            Exit Sub
        ElseIf Txtdetail.Text = "" Then
            lblmessage.Text = "Please Select Gender !!!"
            Txtdetail.Text = "Select Gender"
            Txtdetail.Focus()
            Exit Sub
        End If
        DeleteRecord()
    End Sub
    Sub fillTitle()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        drpTitle.Items.Clear()
        drpTitle.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT Title from Schoollog", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            drpTitle.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            Txtdate.Text = Now.Date
            fillTitle()
        End If
    End Sub

    Protected Sub btnclose_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnclose.Click
        ClearTexts()
    End Sub
    Sub filltextTitle()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd = New SqlCommand("Select * from SchoolLog where Title='" & drpTitle.Text.ToString & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            TxtlogID.Text = dr.Item("LogID")
            Txttitle.Text = dr.Item("Title")
            Txtdetail.Text = dr.Item("Detail")
            Txtdate.Text = dr.Item("Date")
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        filltextTitle()
    End Sub
End Class
