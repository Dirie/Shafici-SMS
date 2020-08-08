<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Exams.aspx.vb" Inherits="Exams" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 137px;
        }
        .style4
        {
            width: 92px;
            font-size: xx-large;
            color: #0000FF;
        }
        .style5
        {
        }
        .style6
        {
            width: 266px;
        }
        .style7
        {
            width: 498px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <span class="style4" dir="rtl">&nbsp;Exam Registration</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblmassage" runat="server" ForeColor="#CC9900" Font-Bold="True" 
                        Font-Size="Larger"></asp:Label>
                <br />
        <asp:Panel ID="Panel2" runat="server" BackColor="Lime" Height="1px">
        </asp:Panel>
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td rowspan="2">
&nbsp;<asp:Panel ID="PNLSearch" runat="server" GroupingText="Search" Height="57px" 
                        Width="318px">
                        <asp:DropDownList ID="dpExamname" runat="server" Height="26px" Width="205px" 
                            DataSourceID="SqlDataSourceExamName" DataTextField="ExamName" 
                            DataValueField="ExamName">
                        </asp:DropDownList>
                        &nbsp;<asp:Button ID="btnsearch" runat="server" Height="32px" Text="Seerch" 
                            Width="67px" />
                    </asp:Panel>
                </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                        <asp:Label ID="Label1" runat="server" Text="Exam ID :"></asp:Label>
                        </td>
            <td class="style6">
                        <asp:TextBox ID="txtExamID" runat="server" Width="274px" Wrap="False"></asp:TextBox>
                        </td>
            <td class="style7">
                        &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                        <asp:Label ID="Label2" runat="server" Text="Exam Name :"></asp:Label>
                        </td>
            <td class="style6">
                        <asp:TextBox ID="txtExamName" runat="server" Width="273px" Wrap="False"></asp:TextBox>
                        </td>
            <td class="style7">
                        &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSourceExamName" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ShaficiConnectionString %>" 
                    SelectCommand="SELECT [ExamName] FROM [Exams]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                        <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label>
                        </td>
            <td class="style6">
                        <asp:TextBox ID="txtDescription" runat="server" Width="273px"></asp:TextBox>
                        </td>
            <td class="style7">
                        &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="5">
        <asp:Panel ID="Panel3" runat="server" BackColor="Lime" Height="1px">
        </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style2">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnNew" runat="server" Height="33px" Text="New" Width="62px" />
&nbsp;&nbsp;<asp:Button ID="btnUpdate" runat="server" Height="34px" Text="Update" 
            Width="64px" />
&nbsp;<asp:Button ID="btnClear" runat="server" Height="32px" Text="Clear" 
            Width="59px" />
    
    &nbsp;
        <asp:Button ID="btnClose" runat="server" Height="34px" Text="Close" 
            Width="66px" />
    
    </div>
    </form>
</body>
</html>
