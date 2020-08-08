Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class Student
    Inherits System.Web.UI.Page

    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal TeacherID As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmdTeacher As New SqlCommand("select * from Teachers where TeacherID='" & TeacherID & "'", conn)
        cmdTeacher.CommandType = CommandType.Text
        Dim dreader As SqlDataReader
        dreader = cmdTeacher.ExecuteReader

        If dreader.Read Then
            isRecordExists = True
        Else
            isRecordExists = False
        End If
        dreader.Close()
        cmdTeacher.Cancel() : cmdTeacher = Nothing
    End Function
    Private Sub ClearTexts()
        lblmessage.Text = ""
        txtTeacherID.Text = ""
        TxtTeacherName.Text = ""
        txtAddress.Text = ""
        dpGender.Text = ""
        TxtMobile.Text = ""
        TxtDate.Text = Now.Date
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TxtDate.Text = Now.Date
    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        lblmessage.Text = ""
        GenerateID()
    End Sub
    Private Sub GenerateID()
        conn.Open()
        Dim objCommand As SqlCommand = New SqlCommand("select TeacherID from Teachers  Order by TeacherID", conn)

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
                Varmyid = dreader("TeacherID")
            Loop

            txtTeacherID.Text = Varmyid + 1
        Else
            txtTeacherID.Text = 1
        End If
        dreader.Close()
    End Sub
    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
     
        Dim cmd As New SqlCommand("UpdateTeacher", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("TeacherID", SqlDbType.Int)
        prm.Value = CStr(txtTeacherID.Text)

        prm = cmd.Parameters.Add("TeacherName", SqlDbType.VarChar, 50)
        prm.Value = CStr(TxtTeacherName.Text)

        prm = cmd.Parameters.Add("Address", SqlDbType.VarChar, 50)
        prm.Value = CStr(TxtAddress.Text)

        prm = cmd.Parameters.Add("gender", SqlDbType.VarChar, 50)
        prm.Value = CStr(DpGender.Text)

        prm = cmd.Parameters.Add("Mobile", SqlDbType.VarChar, 50)
        prm.Value = CStr(TxtMobile.Text)

        prm = cmd.Parameters.Add("Date", SqlDbType.Date)
        prm.Value = TxtDate.Text

        cmd.ExecuteNonQuery()
        lblmessage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
    End Sub
    Private Sub AddNewRecord()
        Dim cmd As New SqlCommand("AddTeacher", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("TeacherID", SqlDbType.Int)
        prm.Value = CStr(txtTeacherID.Text)

        prm = cmd.Parameters.Add("TeacherName", SqlDbType.VarChar, 50)
        prm.Value = CStr(TxtTeacherName.Text)

        prm = cmd.Parameters.Add("Address", SqlDbType.VarChar, 50)
        prm.Value = CStr(TxtAddress.Text)

        prm = cmd.Parameters.Add("gender", SqlDbType.VarChar, 50)
        prm.Value = CStr(DpGender.Text)

        prm = cmd.Parameters.Add("Mobile", SqlDbType.VarChar, 50)
        prm.Value = CStr(TxtMobile.Text)

        prm = cmd.Parameters.Add("Date", SqlDbType.Date)
        prm.Value = TxtDate.Text

        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    Private Sub DeleteRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim msg As Integer
        msg = MsgBox("Are Sure you want to Delete Teacher?", vbYesNo + vbQuestion, "Registration Teacher")
        If msg = MsgBoxResult.No Then
            Exit Sub
        Else
            Dim cmd As New SqlCommand("DeleteTeacher", conn), prm As SqlParameter
            cmd.CommandType = CommandType.StoredProcedure

            prm = cmd.Parameters.Add("TeacherID", SqlDbType.Int)
            prm.Value = CStr(txtTeacherID.Text)

            prm = cmd.Parameters.Add("TeacherName", SqlDbType.VarChar, 50)
            prm.Value = CStr(TxtTeacherName.Text)

            prm = cmd.Parameters.Add("Address", SqlDbType.VarChar, 50)
            prm.Value = CStr(TxtAddress.Text)

            prm = cmd.Parameters.Add("gender", SqlDbType.VarChar, 50)
            prm.Value = CStr(DpGender.Text)

            prm = cmd.Parameters.Add("Mobile", SqlDbType.VarChar, 50)
            prm.Value = CStr(TxtMobile.Text)

            prm = cmd.Parameters.Add("Date", SqlDbType.Date)
            prm.Value = TxtDate.Text

            cmd.ExecuteNonQuery()
            lblmessage.Text = "Record Deleted Successfully"
            cmd.Cancel() : cmd = Nothing
        End If
    End Sub
    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        If txtTeacherID.Text = "" Then
            lblmessage.Text = "Please fill Teacher ID !!!"
            txtTeacherID.Focus()
            Exit Sub
        ElseIf TxtTeacherName.Text = "" Then
            lblmessage.Text = "Please fill Teacher Name !!!"
            TxtTeacherName.Text = ""
            TxtTeacherName.Focus()
            Exit Sub
        ElseIf DpGender.Text = "" Or DpGender.Text = "Select Gender" Then
            lblmessage.Text = "Please Select Gender !!!"
            DpGender.Text = "Select Gender"
            DpGender.Focus()
            Exit Sub

        ElseIf TxtAddress.Text = "" Then
            lblmessage.Text = "Please fill Address !!!"
            TxtAddress.Text = ""
            TxtAddress.Focus()
            Exit Sub
        ElseIf TxtMobile.Text = "" Then
            lblmessage.Text = "Please fill of Mobile !!!"
            TxtMobile.Text = ""
            TxtMobile.Focus()
            Exit Sub
        End If
        If isRecordExists(txtTeacherID.Text) = False Then
            AddNewRecord()
            lblmessage.Text = "Record Saved Successfully"
            ClearTexts()
        Else
            UpdateRecord()
            ClearTexts()
        End If
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        If txtTeacherID.Text = "" Then
            lblmessage.Text = "Please fill Teacher ID !!!"
            txtTeacherID.Focus()
            Exit Sub
        ElseIf TxtTeacherName.Text = "" Then
            lblmessage.Text = "Please fill Teacher Name !!!"
            TxtTeacherName.Text = ""
            TxtTeacherName.Focus()
            Exit Sub
        ElseIf DpGender.Text = "" Or DpGender.Text = "Select Gender" Then
            lblmessage.Text = "Please Select Gender !!!"
            DpGender.Text = "Select Gender"
            DpGender.Focus()
            Exit Sub

        ElseIf TxtAddress.Text = "" Then
            lblmessage.Text = "Please fill Address !!!"
            TxtAddress.Text = ""
            TxtAddress.Focus()
            Exit Sub
        ElseIf TxtMobile.Text = "" Then
            lblmessage.Text = "Please fill of Mobile !!!"
            TxtMobile.Text = ""
            TxtMobile.Focus()
            Exit Sub
        End If
        DeleteRecord()
    End Sub

    
End Class

