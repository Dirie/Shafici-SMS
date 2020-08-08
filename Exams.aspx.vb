
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class Exams
    Inherits System.Web.UI.Page

    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal ExamID As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmdstudent As New SqlCommand("select * from Exams where ExamID='" & ExamID & "'", conn)
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
        lblmassage.Text = ""
        txtExamID.Text = ""
        txtExamName.Text = ""
    End Sub



    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        ClearTexts()
        lblmassage.Text = ""
        GenerateID()
    End Sub
    Private Sub GenerateID()
        conn.Open()
        Dim objCommand As SqlCommand = New SqlCommand("select ExamID from Exams  Order by ExamID", conn)

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
                Varmyid = dreader("ExamID")
            Loop

            txtExamID.Text = Varmyid + 1
        Else
            txtExamID.Text = 1
        End If
        dreader.Close()
    End Sub
    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("UpdateExam", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("ExamID", SqlDbType.Int)
        prm.Value = CStr(txtExamID.Text)

        prm = cmd.Parameters.Add("ExamName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtExamName.Text)

        prm = cmd.Parameters.Add("Description", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtDescription.Text)


        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub
    Private Sub AddNewRecord()
        Dim cmd As New SqlCommand("AddExam", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("ExamID", SqlDbType.Int)
        prm.Value = CStr(txtExamID.Text)

        prm = cmd.Parameters.Add("ExamName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtExamName.Text)

        prm = cmd.Parameters.Add("Description", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtDescription.Text)

        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    Private Sub DeleteRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("DeleteExam", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure
        prm = cmd.Parameters.Add("ExamID", SqlDbType.Int)
        prm.Value = CStr(txtExamID.Text)

        prm = cmd.Parameters.Add("ExamName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtExamName.Text)

        prm = cmd.Parameters.Add("Description", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtDescription.Text)

        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Deleted Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub

    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClose.Click
        'If txtExamID.Text = "" Then
        '    lblmassage.Text = "Please fill Serial Number"
        '    txtExamID.Text = ""
        '    txtExamID.Focus()
        '    Exit Sub
        'ElseIf txtExamName.Text = "" Then
        '    lblmassage.Text = "Please fill Name"
        '    txtExamName.Text = ""
        '    txtExamName.Focus()
        '    Exit Sub
        'End If
        'If isRecordExists(txtExamID.Text) = False Then
        '    AddNewRecord()
        '    lblmassage.Text = "Record Saved Successfully"
        '    ClearTexts()
        'Else
        '    lblmassage.Text = "Allrady Registared"
        '    ClearTexts()
        'End If
    End Sub
    Sub fillText()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd = New SqlCommand("Select * from Exams where Examname='" & dpExamname.Text.ToString & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        While dr.Read
            txtExamID.Text = dr.Item("ExamID")
            txtExamName.Text = dr.Item("ExamName")
            txtDescription.Text = dr.Item("Description")
        End While
        cmd = Nothing
        dr.Close()
        conn.Close()
    End Sub
    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        If isRecordExists(txtExamID.Text) = False Then
            AddNewRecord()
            lblmassage.Text = "Record Saved Successfully"
            ClearTexts()
        Else
            UpdateRecord()
            ClearTexts()
        End If

    End Sub
 
    Protected Sub btnClose_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        fillText()
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        ClearTexts()
    End Sub
End Class

