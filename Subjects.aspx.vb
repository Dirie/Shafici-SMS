Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class Subjects
    Inherits System.Web.UI.Page
   
    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal SubjectID As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmdstudent As New SqlCommand("select * from Subjects where SubjectID='" & SubjectID & "'", conn)
        cmdstudent.CommandType = CommandType.Text
        Dim dreader As SqlDataReader
        dreader = cmdstudent.ExecuteReader

        If dreader.Read Then
            isRecordExists = True
        Else
            isRecordExists = False
        End If

        dreader.Close()
        cmdstudent.Cancel() : cmdstudent = Nothing
    End Function
    Private Sub ClearTexts()
        ' lblmassage.Text = ""
        txtSubjectID.Text = ""
        txtSubjectName.Text = ""
        txtDescription.Text = ""
        txtTotalMarks.Text = ""
    End Sub

    Private Sub GenerateID()
        conn.Open()
        Dim objCommand As SqlCommand = New SqlCommand("select SubjectID from Subjects  Order by SubjectID", conn)

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
                Varmyid = dreader("SubjectID")
            Loop

            txtSubjectID.Text = Varmyid + 1
        Else
            txtSubjectID.Text = 1
        End If
        dreader.Close()
    End Sub
    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("UpdateSubject", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("SubjectID", SqlDbType.Int)
        prm.Value = CStr(txtSubjectID.Text)

        prm = cmd.Parameters.Add("SubjectName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtSubjectName.Text)

        prm = cmd.Parameters.Add("Description", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtDescription.Text)

        prm = cmd.Parameters.Add("TotalMarks", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtTotalMarks.Text)

        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub
    Private Sub AddNewRecord()
        Dim cmd As New SqlCommand("AddSubject", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("SubjectID", SqlDbType.Int)
        prm.Value = CStr(txtSubjectID.Text)

        prm = cmd.Parameters.Add("SubjectName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtSubjectName.Text)

        prm = cmd.Parameters.Add("Description", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtDescription.Text)

        prm = cmd.Parameters.Add("TotalMarks", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtTotalMarks.Text)

        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    Private Sub DeleteRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("DeleteSubject", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("SubjectID", SqlDbType.Int)
        prm.Value = CStr(txtSubjectID.Text)

        prm = cmd.Parameters.Add("SubjectName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtSubjectName.Text)

        prm = cmd.Parameters.Add("Description", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtDescription.Text)

        prm = cmd.Parameters.Add("TotalMarks", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtTotalMarks.Text)

        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Deleted Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClose.Click
        'If txtSubjectID.Text = "" Then
        '    lblmassage.Text = "Please fill Subject ID"
        '    txtSubjectID.Text = ""
        '    txtSubjectID.Focus()
        '    Exit Sub
        'ElseIf txtSubjectName.Text = "" Then
        '    lblmassage.Text = "Please fill Subject Name"
        '    txtSubjectName.Text = ""
        '    txtSubjectName.Focus()
        '    Exit Sub
        'End If
        'If isRecordExists(txtSubjectName.Text) = False Then
        '    AddNewRecord()
        '    lblmassage.Text = "Record Saved Successfully"
        '    ClearTexts()
        'Else
        '    lblmassage.Text = "Allrady Registared"
        '    ClearTexts()
        'End If
    End Sub
    Sub fillText()
        'If conn.State = ConnectionState.Closed Then
        '    conn.Open()
        'End If
        'Dim cmd = New SqlCommand("Select * from Subjects where Subjectname='" & dpSubjectname.Text.ToString & "'", conn)
        'cmd.CommandType = CommandType.Text
        'Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader
        'While dr.Read
        '    txtSubjectID.Text = dr.Item("SubjectID")
        '    txtSubjectName.Text = dr.Item("SubjectName")
        '    txtDescription.Text = dr.Item("Description")
        '    txtTotalMarks.Text = dr.Item("TotalMarks")
        'End While
        'cmd = Nothing
        'dr.Close()
        'conn.Close()
    End Sub
  

    'Protected Sub btnClose_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
    '    fillText()
    'End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        ClearTexts()
        lblmassage.Text = ""
        GenerateID()
    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        'If txtSubjectID.Text = "" Then
        '    lblmassage.Text = "Please fill Subject ID"
        '    txtSubjectID.Text = ""
        '    txtSubjectID.Focus()
        '    Exit Sub
        'ElseIf txtSubjectName.Text = "" Then
        '    lblmassage.Text = "Please fill Subject Name"
        '    txtSubjectName.Text = ""
        '    txtSubjectName.Focus()
        '    Exit Sub
        'End If
        If isRecordExists(txtSubjectName.Text) = False Then
            AddNewRecord()
            lblmassage.Text = "Record Saved Successfully"
            ClearTexts()
        Else
            UpdateRecord()
            ClearTexts()
        End If

    End Sub
End Class


