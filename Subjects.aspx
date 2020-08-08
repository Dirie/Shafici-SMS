<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Subjects.aspx.vb" Inherits="Subjects" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 271px;
        }
        .style3
        {
            width: 315px;
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
            width: 243px;
        }
        .style8
        {
            width: 890px;
        }
        .style9
        {
            width: 89px;
        }
        .style10
        {
            width: 365px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td colspan="7">
                    <span class="style4" dir="rtl">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Subject Registration</span>
            </td>
        </tr>
        <tr>
            <td colspan="7">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblmassage" runat="server" ForeColor="#CC9900" Font-Bold="True" 
                        Font-Size="Larger"></asp:Label>
                <br />
        <asp:Panel ID="Panel3" runat="server" BackColor="Lime" Height="1px">
        </asp:Panel>
                </td>
        </tr>
        <tr>
            <td class="style5" bgcolor="Lime" colspan="6">
                &nbsp;</td>
            <td rowspan="3">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                        <asp:Label ID="Label1" runat="server" Text="Subject ID :"></asp:Label>
                        </td>
            <td class="style3" colspan="2">
                        <asp:TextBox ID="txtSubjectID" runat="server" Width="274px" 
                    Wrap="False"></asp:TextBox>
                        </td>
            <td class="style6" colspan="2">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                        <asp:Label ID="Label2" runat="server" Text="Subject Name :"></asp:Label>
                        </td>
            <td class="style3" colspan="2">
                        <asp:TextBox ID="txtSubjectName" runat="server" Width="274px" 
                    Wrap="False"></asp:TextBox>
                        </td>
            <td class="style6" colspan="2">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                        <asp:Label ID="Label3" runat="server" Text="Description :"></asp:Label>
                        </td>
            <td class="style3" colspan="2">
                        <asp:TextBox ID="txtDescription" runat="server" Width="274px" 
                    Wrap="False"></asp:TextBox>
                        </td>
            <td class="style6" colspan="2">
                    &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
                        <asp:Label ID="Label4" runat="server" Text="Total Marks :"></asp:Label>
                        </td>
            <td class="style3" colspan="2">
                        <asp:TextBox ID="txtTotalMarks" runat="server" Width="274px" 
                    Wrap="False"></asp:TextBox>
                        </td>
            <td class="style6" colspan="2">
                    &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr bgcolor="Lime">
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style3" colspan="2">
                &nbsp;</td>
            <td class="style6" colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8">
                &nbsp;</td>
            <td>
            <asp:Button ID="btnNew" runat="server" Text="New" Width="95px" Height="24px" 
                    BorderStyle="Dashed" />
            &nbsp; </td>
            <td class="style9">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="95px" Height="24px" 
                    BorderStyle="Dashed" style="margin-left: 6px" />
            &nbsp;</td>
            <td class="style10">
            <asp:Button ID="btnClear" runat="server" Text="Clear" Width="95px" Height="24px" 
                    BorderStyle="Dashed" style="margin-left: 7px" />
            <asp:Button ID="btnClose" runat="server" Text="Close" Width="95px" Height="24px" 
                    BorderStyle="Dashed" style="margin-left: 9px" />
            </td>
            <td class="style6">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;</div>
    </form>
</body>
</html>
