Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class School
    Inherits System.Web.UI.Page

    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal SchoolID As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmdstudent As New SqlCommand("select * from Schools where SchoolID='" & SchoolID & "'", conn)
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
        txtschoolID.Text = ""
        txtschoolName.Text = ""
        txtAddress.Text = ""
        txtPhone.Text = ""
    End Sub

    
    Private Sub GenerateID()
        conn.Open()
        Dim objCommand As SqlCommand = New SqlCommand("select SchoolID from Schools  Order by SchoolID", conn)

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
                Varmyid = dreader("SchoolID")
            Loop

            txtschoolID.Text = Varmyid + 1
        Else
            txtschoolID.Text = 1
        End If
        dreader.Close()
    End Sub
    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("UpdateSchools", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure
        prm = cmd.Parameters.Add("SchoolID", SqlDbType.Int)
        prm.Value = CStr(txtschoolID.Text)

        prm = cmd.Parameters.Add("SchoolName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtschoolName.Text)

        prm = cmd.Parameters.Add("Address", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtAddress.Text)

        prm = cmd.Parameters.Add("Phone", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtPhone.Text)


        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub
    Private Sub AddNewRecord()
        Dim cmd As New SqlCommand("AddSchools", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("SchoolID", SqlDbType.Int)
        prm.Value = CStr(txtschoolID.Text)

        prm = cmd.Parameters.Add("SchoolName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtschoolName.Text)

        prm = cmd.Parameters.Add("Address", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtAddress.Text)

        prm = cmd.Parameters.Add("Phone", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtPhone.Text)

        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    
  
    Sub fillText()
        'If conn.State = ConnectionState.Closed Then
        '    conn.Open()
        'End If
        'Dim cmd = New SqlCommand("Select * from Schools where Schoolname='" & dpstudentname.Text.ToString & "'", conn)
        'cmd.CommandType = CommandType.Text
        'Dim dr As SqlDataReader
        'dr = cmd.ExecuteReader
        'While dr.Read
        '    txtschoolID.Text = dr.Item("SchoolID")
        '    txtschoolName.Text = dr.Item("SchoolName")
        '    txtAddress.Text = dr.Item("Address")
        '    txtPhone.Text = dr.Item("Phone")
        'End While
        'cmd = Nothing
        'dr.Close()
        'conn.Close()
    End Sub
    

    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        ClearTexts()
        GenerateID()
    End Sub

    Protected Sub btnNew0_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        If isRecordExists(txtschoolID.Text) = False Then
            AddNewRecord()
            lblmassage.Text = "Record Saved Successfully"
            ClearTexts()
        Else
            UpdateRecord()
            ClearTexts()
        End If
    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        ClearTexts()
    End Sub
    Sub fillSchoolName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        drpSchoolName.Items.Clear()
        drpSchoolName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT SchoolName from Schools", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            drpSchoolName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub filltextSchoooName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd = New SqlCommand("Select * from Schools where SchoolName='" & drpSchoolName.Text.ToString & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            txtschoolID.Text = dr.Item("SchoolID")
            txtschoolName.Text = dr.Item("SchoolName")
            txtAddress.Text = dr.Item("Address")
            txtPhone.Text = dr.Item("Phone")
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            fillSchoolName()
        End If
    End Sub
    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        filltextSchoooName()
    End Sub
End Class


