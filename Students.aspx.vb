Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class _Default
    Inherits System.Web.UI.Page
    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal StudentID As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmdstudent As New SqlCommand("select * from students where StudentID='" & StudentID & "'", conn)
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
    Private Sub AddNewRecord()
        Validate(txtStudentID.Text)
        Dim cmd As New SqlCommand("AddStudent", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("StudentID", SqlDbType.Int)
        prm.Value = CStr(txtStudentID.Text)

        prm = cmd.Parameters.Add("StudentName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtStudentName.Text)

        prm = cmd.Parameters.Add("Address", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtAddress.Text)

        prm = cmd.Parameters.Add("gender", SqlDbType.VarChar, 50)
        prm.Value = CStr(drpGender.Text)

        prm = cmd.Parameters.Add("dob", SqlDbType.Date)
        prm.Value = txtdateofbirth.Text

        prm = cmd.Parameters.Add("pob", SqlDbType.NVarChar, 50)
        prm.Value = CStr(txtplaceofbirth.Text)

        prm = cmd.Parameters.Add("MotherName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtMotherName.Text)

        prm = cmd.Parameters.Add("SponsorName", SqlDbType.VarChar, 50)
        prm.Value = CStr(drpStudentName.Text)

        'prm = cmd.Parameters.Add("Relationship", SqlDbType.VarChar, 50)
        'prm.Value = CStr(txtRegistrationDate.Text)

        'prm = cmd.Parameters.Add("Mobile", SqlDbType.VarChar, 50)
        'prm.Value = CStr(txtmobile.Text)

        'prm = cmd.Parameters.Add("Email", SqlDbType.VarChar, 50)
        'prm.Value = CStr(txtemail.Text)

        prm = cmd.Parameters.Add("SchoolName", SqlDbType.VarChar, 50)
        prm.Value = dpSchool.Text

        prm = cmd.Parameters.Add("ClassName", SqlDbType.NVarChar, 50)
        prm.Value = dpClass.Text

        prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
        prm.Value = dpStudentStatus.Text

        prm = cmd.Parameters.Add("FeeStatus", SqlDbType.VarChar, 50)
        prm.Value = dpFeeStatus.Text

        prm = cmd.Parameters.Add("RegistrationDate", SqlDbType.Date)
        prm.Value = txtRegistrationDate.Text

        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    Sub fillText()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If

        Dim cmd = New SqlCommand("Select * from Students where StudentID='" & txtStudentID.Text.ToString & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        While dr.Read
            txtStudentID.Text = dr.Item("StudentID")
            txtStudentName.Text = dr.Item("StudentName")
            txtAddress.Text = dr.Item("Address")
            drpGender.Text = dr.Item("Gender")
            txtdateofbirth.Text = dr.Item("DOB")
            txtplaceofbirth.Text = dr.Item("POB")
            txtMotherName.Text = dr.Item("MotherName")
            drpStudentName.Text = dr.Item("SponsorName")
            dpSchool.Text = dr.Item("SchoolName")
            dpClass.Text = dr.Item("ClassName")
            dpStudentStatus.Text = dr.Item("Status")
            dpFeeStatus.Text = dr.Item("FeeStatus")
            txtRegistrationDate.Text = dr.Item("RegistrationDate")
        End While
        cmd = Nothing
        dr.Close()
        conn.Close()
    End Sub
    Sub fillSponsorName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        drpStudentName.Items.Clear()
        drpStudentName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT SponsorName from Sponsors ", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            drpStudentName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub fillSchoolName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        dpSchool.Items.Clear()
        dpSchool.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT SchoolName from Schools", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            dpSchool.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub fillfeeStatus()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        dpFeeStatus.Items.Clear()
        dpFeeStatus.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT FeeName from FeeType", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            dpFeeStatus.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub fillClassName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        dpClass.Items.Clear()
        dpClass.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT ClassName from Classes", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            dpClass.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Private Sub FillDataGrid()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim strSQL As String = "select  * from Students"
        Dim myCommand As New SqlClient.SqlCommand(strSQL, conn)
        Dim SqlDA As New SqlClient.SqlDataAdapter
        SqlDA.SelectCommand = myCommand
        Dim ds As DataSet = New DataSet
        SqlDA.Fill(ds, "Students")
        'GridView1.DataSource = ds.Tables("Students")
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            fillSchoolName()
            fillSponsorName()
            FillDataGrid()
            txtdateofbirth.Text = Now.Date
            txtRegistrationDate.Text = Now.Date
            fillClassName()
            fillfeeStatus()
            fillStudentName()
        End If
    End Sub
    Sub filltextStudentName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd = New SqlCommand("Select * from Students where StudentName='" & drpStudentName.Text.ToString & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            txtStudentID.Text = dr.Item("StudentID")
            txtStudentName.Text = dr.Item("StudentName")
            txtAddress.Text = dr.Item("Address")
            drpGender.Text = dr.Item("Gender")
            txtdateofbirth.Text = dr.Item("DOB")
            txtplaceofbirth.Text = dr.Item("POB")
            txtMotherName.Text = dr.Item("MotherName")
            drpSponsorName.Text = dr.Item("SponsorName")
            dpSchool.Text = dr.Item("SchoolName")
            dpClass.Text = dr.Item("ClassName")
            dpStudentStatus.Text = dr.Item("Status")
            'dpFeeStatus.Text = dr.Item("FeeStatus")
            txtRegistrationDate.Text = dr.Item("RegistrationDate")
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub fillStudentName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        drpStudentName.Items.Clear()
        drpStudentName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT StudentName from Students", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            drpStudentName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Private Sub GenerateID()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim objCommand As SqlCommand = New SqlCommand("select StudentID from Students  Order by StudentID", conn)

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
                Varmyid = dreader("StudentID")
            Loop

            txtStudentID.Text = Varmyid + 1
        Else
            txtStudentID.Text = 1
        End If
        dreader.Close()
    End Sub
    Private Sub ClearTexts()
        lblmessage.Text = ""
        txtStudentID.Text = ""
        txtStudentName.Text = ""
        txtAddress.Text = ""
        drpGender.Text = ""
        txtdateofbirth.Text = Now.Date
        txtplaceofbirth.Text = ""
        txtMotherName.Text = ""
        'txtsponsor.Text = ""
        txtRegistrationDate.Text = ""
        'txtemail.Text = ""
        'txtmobile.Text = ""
        dpSchool.Items.Clear()
        dpClass.Items.Clear()
        dpStudentStatus.Items.Clear()
        dpFeeStatus.Items.Clear()
        txtRegistrationDate.Text = Now.Date
    End Sub

    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        'Dim cmd As New SqlCommand("UpdateStudent", conn), prm As SqlParameter
        'Dim trn As SqlTransaction
        'trn = conn.BeginTransaction(IsolationLevel.ReadCommitted)
        'cmd.Connection = conn
        'Try
        '    Dim sSQL As String
        '    sSQL = "AddReceipt"
        '    cmd.CommandType = CommandType.StoredProcedure
        '    cmd.CommandText = sSQL
        '    cmd.Transaction = trn
        'Dim msg As Integer
        'msg = MsgBox("Are Sure you want to Update Student?", vbYesNo + vbQuestion, "Registration Student")
        'If msg = MsgBoxResult.No Then
        '    Exit Sub
        'Else
        Dim cmd As New SqlCommand("UpdateStudent", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("StudentID", SqlDbType.Int)
        prm.Value = CStr(txtStudentID.Text)

        prm = cmd.Parameters.Add("StudentName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtStudentName.Text)

        prm = cmd.Parameters.Add("Address", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtAddress.Text)

        prm = cmd.Parameters.Add("gender", SqlDbType.VarChar, 50)
        prm.Value = CStr(drpGender.Text)

        prm = cmd.Parameters.Add("dob", SqlDbType.Date)
        prm.Value = txtdateofbirth.Text

        prm = cmd.Parameters.Add("pob", SqlDbType.NVarChar, 50)
        prm.Value = CStr(txtplaceofbirth.Text)

        prm = cmd.Parameters.Add("MotherName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtMotherName.Text)

        prm = cmd.Parameters.Add("SponsorName", SqlDbType.VarChar, 50)
        prm.Value = CStr(drpStudentName.Text)

        prm = cmd.Parameters.Add("Relationship", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtRegistrationDate.Text)

        'prm = cmd.Parameters.Add("Mobile", SqlDbType.VarChar, 50)
        'prm.Value = CStr(txtmobile.Text)

        'prm = cmd.Parameters.Add("Email", SqlDbType.VarChar, 50)
        'prm.Value = CStr(txtemail.Text)

        prm = cmd.Parameters.Add("SchoolName", SqlDbType.VarChar, 50)
        prm.Value = dpSchool.Text

        prm = cmd.Parameters.Add("ClassName", SqlDbType.NVarChar, 50)
        prm.Value = dpClass.Text

        prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
        prm.Value = dpStudentStatus.Text

        prm = cmd.Parameters.Add("FeeStatus", SqlDbType.VarChar, 50)
        prm.Value = dpFeeStatus.Text

        prm = cmd.Parameters.Add("RegistrationDate", SqlDbType.Date)
        prm.Value = txtRegistrationDate.Text

        cmd.ExecuteNonQuery()
        lblmessage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
        'End If

    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        lblmessage.Text = ""
        GenerateID()
    End Sub

    Protected Sub btnNew0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        If txtStudentID.Text = "" Then
            lblmessage.Text = "Please fill Student ID !!!"
            txtStudentID.Focus()
            Exit Sub
        ElseIf txtStudentName.Text = "" Then
            lblmessage.Text = "Please fill Student Name !!!"
            txtStudentName.Text = ""
            txtStudentName.Focus()
            Exit Sub
        ElseIf drpGender.Text = "" Or drpGender.Text = "Select Gender" Then
            lblmessage.Text = "Please Select Gender !!!"
            drpGender.Text = "Select Gender"
            drpGender.Focus()
            Exit Sub
        ElseIf txtdateofbirth.Text = "" Then
            lblmessage.Text = "Please fill Date of Birth !!!"
            txtdateofbirth.Text = ""
            txtdateofbirth.Focus()
            Exit Sub
        ElseIf txtplaceofbirth.Text = "" Then
            lblmessage.Text = "Please fill Place of Birth !!!"
            txtplaceofbirth.Text = ""
            txtplaceofbirth.Focus()
            Exit Sub
        ElseIf txtMotherName.Text = "" Then
            lblmessage.Text = "Please fill of Mother Name !!!"
            txtMotherName.Text = ""
            txtMotherName.Focus()
            Exit Sub
        End If
        If isRecordExists(txtStudentID.Text) = False Then
            AddNewRecord()
            lblmessage.Text = "Record Saved Successfully"
        Else
            UpdateRecord()
        End If

    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        filltextStudentName()
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        ClearTexts()
    End Sub
    Protected Sub dpSchool_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dpSchool.TextChanged
        fillClassName()
    End Sub

    Protected Sub dpSchool_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dpSchool.SelectedIndexChanged
        fillClassName()
    End Sub

    Protected Sub btnSearch0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click

    End Sub
End Class
