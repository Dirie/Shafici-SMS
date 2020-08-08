Imports System.Data
Imports System.Data.SqlClient
Imports System.IO

Partial Class Users
    Inherits System.Web.UI.Page

    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal UserID As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmdstudent As New SqlCommand("select * from Users where UserID='" & UserID & "'", conn)
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
        txtuserID.Text = ""
        txtuserName.Text = ""
        txtpassword.Text = ""
        dpstatus.Text = ""

    End Sub



    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        ClearTexts()
        'lblmassage.Text = ""
        GenerateID()
    End Sub
    Private Sub GenerateID()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim objCommand As SqlCommand = New SqlCommand("select UserID from USers  Order by UserID", conn)

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
                Varmyid = dreader("UserID")
            Loop

            txtuserID.Text = Varmyid + 1
        Else
            txtuserID.Text = 1
        End If
        dreader.Close()
    End Sub
    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("UpdateUsers", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("UserID", SqlDbType.Int)
        prm.Value = CStr(txtuserID.Text)

        prm = cmd.Parameters.Add("UserName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtuserName.Text)

        prm = cmd.Parameters.Add("Password", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtpassword.Text)

        prm = cmd.Parameters.Add("UserType", SqlDbType.VarChar, 50)
        prm.Value = CStr(dpusertype.Text)

        prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
        prm.Value = CStr(dpstatus.Text)

        prm = cmd.Parameters.Add("Date", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtdate.Text)


        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub
    Private Sub AddNewRecord()
        Dim cmd As New SqlCommand("AddUsers", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("UserID", SqlDbType.Int)
        prm.Value = CStr(txtuserID.Text)

        prm = cmd.Parameters.Add("UserName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtuserName.Text)

        prm = cmd.Parameters.Add("Password", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtpassword.Text)

        prm = cmd.Parameters.Add("UserType", SqlDbType.VarChar, 50)
        prm.Value = CStr(dpusertype.Text)

        prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
        prm.Value = CStr(dpstatus.Text)

        prm = cmd.Parameters.Add("Date", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtdate.Text)

        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    Private Sub DeleteRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("DeleteUsers", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure


        prm = cmd.Parameters.Add("UserID", SqlDbType.Int)
        prm.Value = CStr(txtuserID.Text)

        prm = cmd.Parameters.Add("UserName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtuserName.Text)

        prm = cmd.Parameters.Add("Password", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtpassword.Text)

        prm = cmd.Parameters.Add("UserType", SqlDbType.VarChar, 50)
        prm.Value = CStr(dpusertype.Text)

        prm = cmd.Parameters.Add("Status", SqlDbType.VarChar, 50)
        prm.Value = CStr(dpstatus.Text)

        prm = cmd.Parameters.Add("Date", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtdate.Text)
        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Deleted Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub
    Protected Sub btnSave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSave.Click
        If txtuserID.Text = "" Then
            lblmassage.Text = "Please fill Serial Number"
            txtuserID.Text = ""
            txtuserID.Focus()
            Exit Sub
        ElseIf txtuserName.Text = "" Then
            lblmassage.Text = "Please fill Name"
            txtuserName.Text = ""
            txtuserName.Focus()
            Exit Sub
        End If
        If isRecordExists(txtuserID.Text) = False Then
            AddNewRecord()
            lblmassage.Text = "Record Saved Successfully"
            ClearTexts()
        Else
            lblmassage.Text = "Allrady Registared"
            ClearTexts()
        End If
    End Sub
    Sub fillText()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd = New SqlCommand("Select * from Users where UserID='" & txtuserID.Text.ToString & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
        dr = cmd.ExecuteReader
        While dr.Read
            txtuserID.Text = dr.Item("UserID")
            txtuserName.Text = dr.Item("UserName")
            txtpassword.Text = dr.Item("Password")
            dpusertype.Text = dr.Item("UserType")
            dpstatus.Text = dr.Item("Status")
            txtdate.Text = dr.Item("Date")
        End While
        cmd = Nothing
        dr.Close()
        conn.Close()
    End Sub
    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        If txtuserID.Text = "" Then
            lblmassage.Text = "Please fill Serial Number"
            txtuserID.Text = ""
            txtuserID.Focus()
            Exit Sub
        ElseIf txtuserName.Text = "" Then
            lblmassage.Text = "Please fill Name"
            txtuserName.Text = ""
            txtuserName.Focus()
            Exit Sub
        End If
        UpdateRecord()
    End Sub
    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        If txtuserID.Text = "" Then
            lblmassage.Text = "Please fill Serial Number"
            txtuserID.Text = ""
            txtuserID.Focus()
            Exit Sub
        ElseIf txtuserName.Text = "" Then
            lblmassage.Text = "Please fill Name"
            txtuserName.Text = ""
            txtuserName.Focus()
            Exit Sub
        End If
        DeleteRecord()
    End Sub

End Class
