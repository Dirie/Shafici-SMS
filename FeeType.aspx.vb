
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Partial Class FeeType
    Inherits System.Web.UI.Page


    Private conn As New SqlConnection("data source=localhost;initial catalog=Shafici;integrated Security=true")
    Private Function isRecordExists(ByVal FeeID As String) As Boolean
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmdstudent As New SqlCommand("select * from FeeType where FeeID='" & FeeID & "'", conn)
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
        '  lblmassage.Text = ""
        txtFeeID.Text = ""
        txtFeeName.Text = ""
    End Sub

    Private Sub GenerateID()
        'conn.Open()
        Dim objCommand As SqlCommand = New SqlCommand("select FeeID from FeeType  Order by FeeID", conn)

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
                Varmyid = dreader("FeeID")
            Loop

            txtFeeID.Text = Varmyid + 1
        Else
            txtFeeID.Text = 1
        End If
        dreader.Close()
    End Sub
    Private Sub UpdateRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("UpdateFeeType", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("FeeID", SqlDbType.Int)
        prm.Value = CStr(txtFeeID.Text)

        prm = cmd.Parameters.Add("FeeName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtFeeName.Text)

        prm = cmd.Parameters.Add("Amount", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtAmount.Text)

        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Updated Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub
    Private Sub AddNewRecord()
        Dim cmd As New SqlCommand("AddFeeType", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("FeeID", SqlDbType.Int)
        prm.Value = CStr(txtFeeID.Text)

        prm = cmd.Parameters.Add("FeeName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtFeeName.Text)

        prm = cmd.Parameters.Add("Amount", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtAmount.Text)

        cmd.ExecuteNonQuery()

        cmd.Cancel() : cmd = Nothing

    End Sub
    Private Sub DeleteRecord()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd As New SqlCommand("DeleteFeeType", conn), prm As SqlParameter
        cmd.CommandType = CommandType.StoredProcedure

        prm = cmd.Parameters.Add("FeeID", SqlDbType.Int)
        prm.Value = CStr(txtFeeID.Text)

        prm = cmd.Parameters.Add("FeeName", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtFeeName.Text)

        prm = cmd.Parameters.Add("Amount", SqlDbType.VarChar, 50)
        prm.Value = CStr(txtAmount.Text)

        cmd.ExecuteNonQuery()
        lblmassage.Text = "Record Deleted Successfully"
        cmd.Cancel() : cmd = Nothing
        ClearTexts()
    End Sub

    
    Sub fillFeeName()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        drpFeeName.Items.Clear()
        drpFeeName.Text = ""
        Dim cmd = New SqlCommand("Select DISTINCT FeeName from FeeType", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            drpFeeName.Items.Add(dr.Item(0).ToString)
        End While
        cmd = Nothing
        dr.Close()
    End Sub
    Sub filltextFee()
        If conn.State = ConnectionState.Closed Then
            conn.Open()
        End If
        Dim cmd = New SqlCommand("Select * from FeeType where FeeName='" & drpFeeName.Text.ToString & "'", conn)
        cmd.CommandType = CommandType.Text
        Dim dr As SqlDataReader
6:      dr = cmd.ExecuteReader
        While dr.Read
            txtFeeID.Text = dr.Item("FeeID")
            txtFeeName.Text = dr.Item("FeeName")
            txtAmount.Text = dr.Item("Amount")
        End While
        cmd = Nothing
        dr.Close()
    End Sub

    Private Sub FillDataGrid1()
        'conn.Open()
        'Dim strSQL As String = "select  * from FeeType "
        'Dim myCommand As New SqlClient.SqlCommand(strSQL, conn)
        'Dim SqlDA As New SqlClient.SqlDataAdapter
        'SqlDA.SelectCommand = myCommand
        'Dim ds As DataSet = New DataSet
        'SqlDA.Fill(ds, "FeeType")
        'GVFeeType.DataSource = ds.Tables("FeeType")
    End Sub
    Protected Sub btnNew_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnNew.Click
        ClearTexts()
        lblmassage.Text = ""
        GenerateID()
    End Sub

    Protected Sub btnUpdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnUpdate.Click
        If isRecordExists(txtFeeID.Text) = False Then
            AddNewRecord()
            lblmassage.Text = "Record Saved Successfully"
            ClearTexts()
        Else
            UpdateRecord()
            ClearTexts()
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            fillFeeName()
            FillDataGrid1()
        End If
    End Sub

    Protected Sub btnSearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSearch.Click
        filltextFee()
    End Sub
End Class

