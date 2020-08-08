Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
'Imports CrystalDecisions.Shared
'Imports CrystalDecisions.CrystalReports.Engine

Partial Class frmPaymentInfo
    Inherits System.Web.UI.Page
    'this will fill School combobox.
    Dim cnstring As String = "data source=localhost;initial catalog=Shafici;integrated Security=true"
    Dim mycon As New SqlConnection(cnstring)
    Sub fillcombox_School()
        'drpschool.Items.Clear()
        Try
            mycon.Open()
            Dim cmd As New SqlCommand("select distinct SCHOOLNAME from TBLCashReciept ", mycon)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            While dr.Read
                If Not IsDBNull(dr.Item(0)) Then
                    drpschool.Items.Add(dr.Item(0))
                End If
            End While
            dr.Close()
            mycon.Close()
        Catch ex As Exception
            LBLMESAGES.Visible = True
            LBLMESAGES.Text = ex.Message
        End Try
    End Sub
    'this will fill Class combobox.
    Sub fillcombox_Class()
        ' drpclass.Items.Clear()
        Try
            mycon.Open()
            Dim cmd As New SqlCommand("select distinct CLASSNAME from TBLCashReciept where SCHOOLNAME='" & drpschool.SelectedItem.ToString & "'", mycon)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            While dr.Read
                If Not IsDBNull(dr.Item(0)) Then
                    drpclass.Items.Add(dr.Item(0))
                End If
            End While
            dr.Close()
            mycon.Close()
        Catch ex As Exception
            LBLMESAGES.Visible = True
            LBLMESAGES.Text = ex.Message
        End Try
    End Sub
    'this will fill the month Type for example:Aug,Jan or Aug-Sep...
    Sub fillcombox_MonthType(ByVal MonthNumber As Integer)
        Try
            drpmonthType.Items.Clear()
            mycon.Open()
            Dim cmd As New SqlCommand("select distinct MonthName,sno from PaymentMohts where monthNo='" & MonthNumber & "' order by sno", mycon)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            While dr.Read
                If Not IsDBNull(dr.Item(0)) Then
                    drpmonthType.Items.Add(dr.Item(0))
                End If
            End While
            dr.Close()
            mycon.Close()
        Catch ex As Exception
            LBLMESAGES.Visible = True
            LBLMESAGES.Text = ex.Message
        End Try
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        drpclass.Items.Clear()
        drpschool.Items.Clear()
        fillcombox_School()
        fillcombox_Class()
        GetAccademicYear()
        If Me.IsPostBack = False Then
            rbPaid.Checked = True
            rbByschool.Checked = True
            fillcombox_MonthType(1)
            fillGrid("rpt_Paid_Months_Report '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "','" & lblaccedmicYear.Text & "'")
        End If
    End Sub

    Protected Sub drpPaymentType_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpPaymentType.SelectedIndexChanged
        If drpPaymentType.Text.Trim = "One Month" Then
            fillcombox_MonthType(1)
        ElseIf drpPaymentType.SelectedItem.ToString = "Two Month" Then
            fillcombox_MonthType(2)
        ElseIf drpPaymentType.SelectedItem.ToString = "Three Month" Then
            fillcombox_MonthType(3)
        ElseIf drpPaymentType.SelectedItem.ToString = "Six Month" Then
            fillcombox_MonthType(6)
        ElseIf drpPaymentType.SelectedItem.ToString = "One Year" Then
            fillcombox_MonthType(12)
        End If
        GetAccademicYear()
        If rbPaid.Checked = True Then
            fillGrid("rpt_Paid_Months_Report '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "','" & lblaccedmicYear.Text & "'")
        ElseIf rbUnpaid.Checked = True Then
            fillGrid("rpt_UnPaid_Months '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "'")
        End If
    End Sub
    Sub fillGrid(ByVal SQL As String)
        Try
            Session("str") = SQL
            mycon.Open()
            Dim ds As New DataSet
            Dim da As New SqlDataAdapter(SQL, mycon)
            da.Fill(ds, "Masuul")
            Me.GridView1.DataSource = ds.Tables("Masuul")
            GridView1.DataBind()
        Catch ex As Exception
            LBLMESAGES.Visible = True
            'lblmsg.Visible = True
            LBLMESAGES.Text = ex.Message
        Finally
            mycon.Close()
        End Try
    End Sub
    Sub GetAccademicYear()
        Try
            mycon.Open()
            Dim cmd As New SqlCommand("GetAccademicYear ' " & Format(CDate(Now.Date), "yyyy-MM-dd") & "'", mycon)
            Dim dr As SqlDataReader
            dr = cmd.ExecuteReader
            If dr.Read Then
                lblaccedmicYear.Text = dr.Item(0).ToString
            End If
        Catch ex As Exception
            LBLMESAGES.Visible = True
            LBLMESAGES.Text = ex.Message
        Finally
            mycon.Close()
        End Try
    End Sub
    Protected Sub drpmonthType_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpmonthType.SelectedIndexChanged
        GetAccademicYear()
        If rbPaid.Checked = True Then
            fillGrid("rpt_Paid_Months_Report '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "','" & lblaccedmicYear.Text & "'")
        ElseIf rbUnpaid.Checked = True Then
            fillGrid("rpt_UnPaid_Months '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "'")
        End If
    End Sub

    Protected Sub btnPreview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnPreview.Click
        Session("school") = drpschool.Text
        Session("Class") = drpclass.Text
        Session("Month") = drpmonthType.Text

        Response.Redirect("frmPaymentPrint.aspx")
       
    End Sub
    Private Sub PrintUserStatementDollar()
        Dim cmd As New SqlCommand
        cmd.CommandType = CommandType.StoredProcedure
        'cmd.CommandText = "rpt_USERDollarStatementWITHSMALLDATE"
        cmd.CommandText = "[sp_Paid_One_Month]"
        cmd.Parameters.Add("@MonthName", SqlDbType.VarChar, 50).Value = drpmonthType.SelectedItem.ToString
        cmd.Parameters.Add("@School", SqlDbType.SmallDateTime).Value = drpschool.SelectedItem.ToString
        cmd.Parameters.Add("@Class", SqlDbType.SmallDateTime).Value = drpclass.SelectedItem.ToString
        cmd.Parameters.Add("@AccYear", SqlDbType.SmallDateTime).Value = lblaccedmicYear.Text

        cmd.Connection = mycon
        Dim da As New SqlDataAdapter
        da.SelectCommand = cmd
        da.SelectCommand.CommandTimeout = 0
        Dim ds As New DataSet
        da.Fill(ds, "A")
        Dim dt As New DataTable
        dt = ds.Tables("A")


        '    Dim rep As New ReportDocument
        '    rep.Load(Server.MapPath("SampleRpt01.rpt"))
        '    frmReports.CrystalReportViewer1.ReportSource = rep
        '    Dim RepTbls As Tables = rep.Database.Tables
        '    For Each RepTbl As Table In RepTbls
        '        Dim RepTblLogonInfo As TableLogOnInfo = RepTbl.LogOnInfo
        '        RepTblLogonInfo.ConnectionInfo = ConnInfo
        '        RepTbl.ApplyLogOnInfo(RepTblLogonInfo)
        '    Next
        '    Session("Rep") = rep
        'End If

        '    Me.CrystalReportViewer1.ReportSource = Session("Rep")
        '    Me.CrystalReportViewer1.DataBind()


        'frmReports.rptPaid_One_Month.Load()
        'frmShowReport.UserDollarStatement1.SetDataSource(dt)
        'frmShowReport.UserDollarStatement1.Refresh()
        'frmShowReport.CrystalReportViewer1.ReportSource = frmShowReport.UserDollarStatement1
        'frmShowReport.WindowState = FormWindowState.Maximized
        'frmShowReport.MdiParent = frmMain

        'dt.Dispose()
        'da.Dispose()
        'ds.Dispose()

        'frmShowReport.Show()
    End Sub

    Protected Sub drpschool_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpschool.SelectedIndexChanged
        fillcombox_Class()
        GetAccademicYear()
        If rbPaid.Checked = True Then
            fillGrid("rpt_Paid_Months_Report '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "','" & lblaccedmicYear.Text & "'")
        ElseIf rbUnpaid.Checked = True Then
            fillGrid("rpt_UnPaid_Months '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "'")
        End If
    End Sub
    Protected Sub drpclass_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drpclass.SelectedIndexChanged
        GetAccademicYear()
        If rbPaid.Checked = True Then
            fillGrid("rpt_Paid_Months_Report '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "','" & lblaccedmicYear.Text & "'")
        ElseIf rbUnpaid.Checked = True Then
            fillGrid("rpt_UnPaid_Months '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "'")
        End If
    End Sub

    Protected Sub rbPaid_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rbPaid.CheckedChanged
        GetAccademicYear()
        If rbPaid.Checked = True Then
            fillGrid("rpt_Paid_Months_Report '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "','" & lblaccedmicYear.Text & "'")
        ElseIf rbUnpaid.Checked = True Then
            fillGrid("rpt_UnPaid_Months '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "'")
        End If
    End Sub

    Protected Sub rbUnpaid_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rbUnpaid.CheckedChanged
        GetAccademicYear()
        If rbPaid.Checked = True Then
            fillGrid("rpt_Paid_Months_Report '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "','" & lblaccedmicYear.Text & "'")
        ElseIf rbUnpaid.Checked = True Then
            fillGrid("rpt_UnPaid_Months '" & drpmonthType.SelectedItem.ToString & "','" & drpschool.SelectedItem.ToString & "','" & drpclass.SelectedItem.ToString & "'")
        End If
    End Sub

    Protected Sub btnclose_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnclose.Click
        'Scrip("windows.close")
    End Sub
End Class
