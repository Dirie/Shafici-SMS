Imports System.Data
Imports System.Data.SqlClient
Partial Class Attendencesheet
    Inherits System.Web.UI.Page
    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal StudentID As String, ByVal ADate As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If

        Dim cmdStudentID As New SqlCommand("select * from Attendence where StudentID='" & StudentID & "'and ADate='" & ADate & "'", conn)
        cmdStudentID.CommandType = CommandType.Text
        Dim dreader As SqlDataReader
        dreader = cmdStudentID.ExecuteReader

        If dreader.Read Then
            isRecordExists = True
        Else
            isRecordExists = False
        End If

        dreader.Close()
        cmdStudentID.Cancel() : cmdStudentID = Nothing
    End Function
    Private Sub ClearTexts()
        'lblmessage.Text = ""
        'DrpClassName.Text = ""
        'DrpStudentID.Text = ""
        'DrpStudentName.Text = ""
        'TxtRemark.Text = ""
        Txtdate.Text = Now.Date
    End Sub
  
    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If

        Dim cmd As New SqlCommand("UpdateAttendence", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("StudentID", SqlDbType.VarChar, 50)
        prm.Value = CStr(DrpStudentID.Text)

        prm = cmd.Parameters.Add("StudentName", SqlDbType.VarChar, 50)
        prm.Value = CStr(DrpStudentName.Text)

        prm = cmd.Parameters.Add("ClassName", SqlDbType.VarChar, 50)
        prm.Value = CStr(DrpClassName.Text)

        prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
        prm.Value = CStr(DrpStatus.Text)

        prm = cmd.Parameters.Add("Remark", SqlDbType.VarChar, 50)
        prm.Value = CStr(TxtRemark.Text)

        prm = cmd.Parameters.Add("ADate", SqlDbType.Date)
        prm.Value = Txtdate.Text

        cmd.ExecuteNonQuery()

        lblmessage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
    End Sub
    Private Sub AddNewRecord()

        Dim cmd As New SqlCommand("AddAttendence", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("StudentID", SqlDbType.VarChar, 50)
        prm.Value = CStr(DrpStudentID.Text)

        prm = cmd.Parameters.Add("StudentName", SqlDbType.VarChar, 50)
        prm.Value = CStr(DrpStudentName.Text)

        prm = cmd.Parameters.Add("ClassName", SqlDbType.VarChar, 50)
        prm.Value = CStr(DrpClassName.Text)

        prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
        prm.Value = CStr(DrpStatus.Text)

        prm = cmd.Parameters.Add("Remark", SqlDbType.VarChar, 50)
        prm.Value = CStr(TxtRemark.Text)

        prm = cmd.Parameters.Add("ADate", SqlDbType.Date)
        prm.Value = Txtdate.Text

        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    Private Sub DeleteRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim msg As Integer
        msg = MsgBox("Are Sure you want to Delete Attendence?", vbYesNo + vbQuestion, "Registration Teacher")
        If msg = MsgBoxResult.No Then
            Exit Sub
        Else
            Dim cmd As New SqlCommand("DeleteAttendence", conn), prm As SqlParameter
            cmd.CommandType = CommandType.StoredProcedure

            prm = cmd.Parameters.Add("StudentID", SqlDbType.VarChar, 50)
            prm.Value = CStr(DrpStudentID.Text)

            prm = cmd.Parameters.Add("StudentName", SqlDbType.VarChar, 50)
            prm.Value = CStr(DrpStudentName.Text)

            prm = cmd.Parameters.Add("ClassName", SqlDbType.VarChar, 50)
            prm.Value = CStr(DrpClassName.Text)

            prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
            prm.Value = CStr(DrpStatus.Text)

            prm = cmd.Parameters.Add("Remark", SqlDbType.VarChar, 50)
            prm.Value = CStr(TxtRemark.Text)

            prm = cmd.Parameters.Add("ADate", SqlDbType.Date)
            prm.Value = Txtdate.Text

            cmd.ExecuteNonQuery()
            lblmessage.Text = "Record Deleted Successfully"
            cmd.Cancel() : cmd = Nothing
        End If
    End Sub
    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        'If txtTeacherID.Text = "" Then
        '    lblmessage.Text = "Please fill Teacher ID !!!"
        '    txtTeacherID.Focus()
        '    Exit Sub
        'ElseIf TxtTeacherName.Text = "" Then
        '    lblmessage.Text = "Please fill Teacher Name !!!"
        '    TxtTeacherName.Text = ""
        '    TxtTeacherName.Focus()
        '    Exit Sub
        'ElseIf DpGender.Text = "" Or DpGender.Text = "Select Gender" Then
        '    lblmessage.Text = "Please Select Gender !!!"
        '    DpGender.Text = "Select Gender"
        '    DpGender.Focus()
        '    Exit Sub

        'ElseIf TxtAddress.Text = "" Then
        '    lblmessage.Text = "Please fill Address !!!"
        '    TxtAddress.Text = ""
        '    TxtAddress.Focus()
        '    Exit Sub
        'ElseIf TxtMobile.Text = "" Then
        '    lblmessage.Text = "Please fill of Mobile !!!"
        '    TxtMobile.Text = ""
        '    TxtMobile.Focus()
        '    Exit Sub
        'End If
        If isRecordExists(DrpStudentID.Text, Txtdate.Text) = False Then
            AddNewRecord()
            lblmessage.Text = "Record Saved Successfully"
            ClearTexts()
        Else
            UpdateRecord()
            ClearTexts()
        End If
    End Sub

    Sub fillCLassName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        DrpStudentID.Items.Clear()
        DrpStudentID.Text = ""
        Dim cmd = New SqlCommand("Select CLassName from Classes", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            DrpClassName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub fillStudentID()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        DrpStudentID.Items.Clear()
        DrpStudentID.Text = ""
        Dim cmd = New SqlCommand("Select StudentID,StudentName from Students where CLassName='" & DrpClassName.Text & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            DrpStudentID.Items.Add(dr.Item(0).ToString)
            DrpStudentName.Items.Add(dr.Item(1).ToString)
        End While
        cmd = Nothing
        dr.Close()

    End Sub
  
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            fillCLassName()
            'fillStudentID()
            Txtdate.Text = Now.Date
        End If
    End Sub


    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        ClearTexts()
    End Sub

    Protected Sub DrpClassName_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DrpClassName.SelectedIndexChanged
        If IsPostBack = True Then
            fillStudentID()
        End If
    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        fillStudentID()
    End Sub
End Class
