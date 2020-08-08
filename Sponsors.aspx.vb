Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class _Default
    Inherits System.Web.UI.Page
    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal SponsorID As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmdSponsor As New SqlCommand("select * from Sponsors where SponsorID='" & SponsorID & "'", conn)
        cmdSponsor.CommandType = CommandType.Text
        Dim dreader As SqlDataReader
        dreader = cmdSponsor.ExecuteReader

        If dreader.Read Then
            isRecordExists = True
        Else
            isRecordExists = False
        End If

        dreader.Close()
        cmdSponsor.Cancel() : cmdSponsor = Nothing
    End Function
    Private Sub ClearTexts()
        txtSponsorID.Text = ""
        txtSponsorName.Text = ""
        drpGender.Text = ""
        txtAddress.Text = ""
        txtmobile.Text = ""
        txtRegistrationDate1.Text = Now.Date
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            fillSponsorsName()
            txtRegistrationDate1.Text = Now.Date
        End If
    End Sub

    Private Sub GenerateID()
        conn.Open()
        Dim objCommand As SqlCommand = New SqlCommand("select SponsorID from Sponsors  Order by SponsorID", conn)

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
                Varmyid = dreader("SponsorID")
            Loop

            txtSponsorID.Text = Varmyid + 1
        Else
            txtSponsorID.Text = 1
        End If
        dreader.Close()
    End Sub
    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("UpdateSponsor", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("SponsorID", SqlDbType.Int)
        prm.Value = CStr(txtSponsorID.Text)

        prm = cmd.Parameters.Add("SponsorName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtSponsorName.Text)

        prm = cmd.Parameters.Add("Address", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtAddress.Text)

        prm = cmd.Parameters.Add("gender", SqlDbType.VarChar, 50)
        prm.Value = CStr(drpGender.Text)

        prm = cmd.Parameters.Add("Mobile", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtmobile.Text)

        prm = cmd.Parameters.Add("RegistrationDate", SqlDbType.Date)
        prm.Value = txtRegistrationDate1.Text

        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub
    Private Sub AddNewRecord()
        Dim cmd As New SqlCommand("AddSponsor", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("SponsorID", SqlDbType.Int)
        prm.Value = CStr(txtSponsorID.Text)

        prm = cmd.Parameters.Add("SponsorName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtSponsorName.Text)

        prm = cmd.Parameters.Add("Address", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtAddress.Text)

        prm = cmd.Parameters.Add("gender", SqlDbType.VarChar, 50)
        prm.Value = CStr(drpGender.Text)

        prm = cmd.Parameters.Add("Mobile", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtmobile.Text)


        prm = cmd.Parameters.Add("RegistrationDate", SqlDbType.Date)
        prm.Value = txtRegistrationDate1.Text


        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    'Private Sub DeleteRecord()
    '    If conn.State = ConnectionState.Closed Then
    '        conn.Open()
    '    End If
    '    Dim cmd As New SqlCommand("DeleteSponsor", conn), prm As SqlParameter
    '    cmd.CommandType = CommandType.StoredProcedure

    '    prm = cmd.Parameters.Add("SponsorID", SqlDbType.Int)
    '    prm.Value = CStr(txtSponsorID.Text)

    '    prm = cmd.Parameters.Add("SponsorName", SqlDbType.VarChar, 50)
    '    prm.Value = CStr(txtSponsorName.Text)

    '    prm = cmd.Parameters.Add("Address", SqlDbType.VarChar, 50)
    '    prm.Value = CStr(txtAddress.Text)

    '    prm = cmd.Parameters.Add("gender", SqlDbType.VarChar, 50)
    '    prm.Value = CStr(dpGender.Text)

    '    prm = cmd.Parameters.Add("Mobile", SqlDbType.VarChar, 50)
    '    prm.Value = CStr(txtmobile.Text)


    '    prm = cmd.Parameters.Add("RegistrationDate", SqlDbType.Date)
    '    prm.Value = txtRegistrationDate1.Text

    '    cmd.ExecuteNonQuery()
    '    lblmassage.Text = "Record Deleted Successfully"
    '    cmd.Cancel() : cmd = Nothing
    '    ClearTexts()
    'End Sub
 

    Sub fillText()
        'If conn.State = ConnectionState.Closed Then
        '    conn.Open()
        'End If
        'ClearTexts()
        'Dim cmd = New SqlCommand("Select * from Sponsors where SponsorName='" & dpsponsorname.Text.ToString & "'", conn)
        'cmd.CommandType = CommandType.Text
        'Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader
        'While dr.Read
        '    txtSponsorID.Text = dr.Item("SponsorID")
        '    txtSponsorName.Text = dr.Item("SponsorName")
        '    txtAddress.Text = dr.Item("Address")
        '    dpGender.Text = dr.Item("Gender")
        '    txtmobile.Text = dr.Item("Mobile")
        '    txtRegistrationDate1.Text = dr.Item("RegistrationDate")
        'End While
        'cmd = Nothing
        'dr.Close()
        'conn.Close()
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        ClearTexts()
    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        'If txtSponsorID.Text = "" Then
        '    lblmassage.Text = "Please fill Sponsor ID"
        '    txtSponsorID.Text = ""
        '    txtSponsorID.Focus()
        '    Exit Sub
        'ElseIf txtSponsorName.Text = "" Then
        '    lblmassage.Text = "Please fill Sponsor Name"
        '    txtSponsorName.Text = ""
        '    txtSponsorName.Focus()
        '    Exit Sub
        'End If
        'UpdateRecord()
        'ClearTexts()
        If isRecordExists(txtSponsorID.Text) = False Then
            AddNewRecord()
            lblmassage.Text = "Record Saved Successfully"
            ClearTexts()
        Else
            UpdateRecord()
            ClearTexts()
        End If
    End Sub

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        ClearTexts()
        lblmassage.Text = ""
        GenerateID()
    End Sub
    Sub fillSponsorsName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        drpSponsorName.Items.Clear()
        drpSponsorName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT SponsorName from Sponsors", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            drpSponsorName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub filltextSponsorName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd = New SqlCommand("Select * from Sponsors where SponsorName='" & drpSponsorName.Text.ToString & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            txtSponsorID.Text = dr.Item("SponsorID")
            txtSponsorName.Text = dr.Item("SponsorName")
            drpGender.Text = dr.Item("Gender")
            txtAddress.Text = dr.Item("Address")
            txtmobile.Text = dr.Item("Mobile")
            txtRegistrationDate1.Text = dr.Item("RegistrationDate")
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        filltextSponsorName()
    End Sub
End Class
