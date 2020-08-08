Imports System.Data
Imports System.Data.SqlClient
Partial Class Classes
    Inherits System.Web.UI.Page
    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal ClassID As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmdstudent As New SqlCommand("select * from classes where ClassID='" & ClassID & "'", conn)
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
        'lblmassage.Text = ""
        txtclassID.Text = ""
        txtClassName.Text = ""
        'dpSchoolName.Text = ""
        'DpPart.Text = ""
        'DpStatus.Text = ""
    End Sub
   
    Private Sub GenerateID()
        'conn.Open()
        Dim objCommand As SqlCommand = New SqlCommand("select ClassID from Classes  Order by ClassID", conn)

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
                Varmyid = dreader("ClassID")
            Loop

            txtclassID.Text = Varmyid + 1
        Else
            txtclassID.Text = 1
        End If
        dreader.Close()
    End Sub
    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("UpdateClass", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("ClassID", SqlDbType.Int)
        prm.Value = CStr(txtclassID.Text)

        prm = cmd.Parameters.Add("ClassName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtClassName.Text)

        prm = cmd.Parameters.Add("SchoolName", SqlDbType.VarChar, 50)
        prm.Value = CStr(dpSchoolName.Text)

        prm = cmd.Parameters.Add("Part", SqlDbType.VarChar, 50)
        prm.Value = CStr(DpPart.Text)

        prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
        prm.Value = CStr(DpStatus.Text)

        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub
    Private Sub AddNewRecord()
        Dim cmd As New SqlCommand("AddClass", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("ClassID", SqlDbType.Int)
        prm.Value = CStr(txtclassID.Text)

        prm = cmd.Parameters.Add("ClassName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtClassName.Text)

        prm = cmd.Parameters.Add("SchoolName", SqlDbType.VarChar, 50)
        prm.Value = CStr(dpSchoolName.Text)

        prm = cmd.Parameters.Add("Part", SqlDbType.VarChar, 50)
        prm.Value = CStr(DpPart.Text)

        prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
        prm.Value = CStr(DpStatus.Text)

        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    Private Sub DeleteRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("DeleteClass", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure


        prm = cmd.Parameters.Add("ClassID", SqlDbType.Int)
        prm.Value = CStr(txtclassID.Text)

        prm = cmd.Parameters.Add("ClassName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtClassName.Text)

        prm = cmd.Parameters.Add("SchoolName", SqlDbType.VarChar, 50)
        prm.Value = CStr(dpSchoolName.Text)

        prm = cmd.Parameters.Add("Part", SqlDbType.VarChar, 50)
        prm.Value = CStr(DpPart.Text)

        prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
        prm.Value = CStr(DpStatus.Text)

        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Deleted Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClose.Click
        'If txtclassID.Text = "" Then
        '    lblmassage.Text = "Please fill Serial Number"
        '    txtclassID.Text = ""
        '    txtclassID.Focus()
        '    Exit Sub
        'ElseIf txtClassName.Text = "" Then
        '    lblmassage.Text = "Please fill Name"
        '    txtClassName.Text = ""
        '    txtClassName.Focus()
        '    Exit Sub
        'ElseIf dpSchoolName.Text = "" Then
        '    lblmassage.Text = "Please Select School Name"
        '    dpSchoolName.Text = ""
        '    dpSchoolName.Focus()
        '    Exit Sub
        'ElseIf DpPart.Text = "" Then
        '    lblmassage.Text = "Please Select Part"
        '    DpPart.Text = ""
        '    DpPart.Focus()
        '    Exit Sub
        'ElseIf DpStatus.Text = "" Then
        '    lblmassage.Text = "Please Select Status"
        '    DpStatus.Text = ""
        '    DpStatus.Focus()
        '    Exit Sub
        'End If
        'If isRecordExists(txtclassID.Text) = False Then
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
        Dim cmd = New SqlCommand("Select * from classes where ClassName='" & txtClassName.Text.ToString & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        While dr.Read
            txtclassID.Text = dr.Item("ClassID")
            txtClassName.Text = dr.Item("ClassName")
            dpSchoolName.Text = dr.Item("SchoolName")
            DpPart.Text = dr.Item("Part")
            DpStatus.Text = dr.Item("Status")
        End While
        cmd = Nothing
        dr.Close()
        conn.Close()
    End Sub

   
    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        ClearTexts()
        'lblmassage.Text = ""
        GenerateID()
    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        'If txtclassID.Text = "" Then
        '    lblmassage.Text = "Please fill Serial Number"
        '    txtclassID.Text = ""
        '    txtclassID.Focus()
        '    Exit Sub
        'ElseIf txtClassName.Text = "" Then
        '    lblmassage.Text = "Please fill Name"
        '    txtClassName.Text = ""
        '    txtClassName.Focus()
        '    Exit Sub
        'ElseIf dpSchoolName.Text = "" Then
        '    lblmassage.Text = "Please Select School Name"
        '    dpSchoolName.Text = ""
        '    dpSchoolName.Focus()
        '    Exit Sub
        'ElseIf DpPart.Text = "" Then
        '    lblmassage.Text = "Please Select Part"
        '    DpPart.Text = ""
        '    DpPart.Focus()
        '    Exit Sub
        'ElseIf DpStatus.Text = "" Then
        '    lblmassage.Text = "Please Select Status"
        '    DpStatus.Text = ""
        '    DpStatus.Focus()
        '    Exit Sub
        'End If
        If isRecordExists(txtclassID.Text) = False Then
            AddNewRecord()
            lblmassage.Text = "Record Saved Successfully"
            ClearTexts()
        Else
            UpdateRecord()
            ClearTexts()
        End If
    End Sub
    Sub fillSchoolName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        dpSchoolName.Items.Clear()
        dpSchoolName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT SchoolName from Schools", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            dpSchoolName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub fillClassName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        dpSchoolName.Items.Clear()
        dpSchoolName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT ClassName from Classes", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            drpClassName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            fillSchoolName()
            fillClassName()
        End If

    End Sub

    Sub filltextSchoooName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd = New SqlCommand("Select * from Classes where ClassName='" & drpClassName.Text.ToString & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            txtclassID.Text = dr.Item("ClassID")
            txtClassName.Text = dr.Item("ClassName")
            dpSchoolName.Text = dr.Item("SchoolName")
            DpPart.Text = dr.Item("Part")
            DpStatus.Text = dr.Item("Status")
        End While
        cmd = Nothing
        dr.Close()
    End Sub
   
    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        filltextSchoooName()
    End Sub
End Class
