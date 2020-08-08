<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Attendencesheet.aspx.vb" Inherits="Attendencesheet" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style4
        {
            width: 105px;
        }
        .style5
        {
            height: 11px;
        }
        .style7
        {
        }
        .style9
        {
            width: 81px;
        }
        .style10
        {
            width: 101px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <table class="style1">
        <tr>
            <td>
                    <span class="style4" dir="rtl" 
                        style="font-family: 'times New Roman', Times, serif; font-size: 27px; font-weight: normal; font-style: normal; font-variant: small-caps; text-transform: capitalize; color: #0000FF">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Attendece sheet</span></td>
        </tr>
    </table>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="2">
        <asp:Label ID="lblmessage" runat="server" ForeColor="Red" 
                    style="color: #800000; font-size: large; font-weight: 700"></asp:Label>
    
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Lime" class="style5" colspan="4">
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="Label2" runat="server" Text="Class"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DrpClassName" runat="server" Height="27px" 
                    Width="215px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Student ID</td>
            <td>
                <asp:DropDownList ID="DrpStudentID" runat="server" Height="27px" 
                    Width="215px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Student Name</td>
            <td>
                <asp:DropDownList ID="DrpStudentName" runat="server" Height="27px" 
                    Width="215px">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Status</td>
            <td>
                <asp:DropDownList ID="DrpStatus" runat="server" Height="27px" 
                    Width="215px">
                    <asp:ListItem>Absent</asp:ListItem>
                    <asp:ListItem>Present</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                Remark</td>
            <td>
                <asp:TextBox ID="TxtRemark" runat="server" Width="338px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Txtdate" runat="server" Width="212px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Lime" class="style7" colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="95px" 
                    Height="24px" />
            &nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" Width="95px" 
                    Height="24px" />
&nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" Width="95px" Height="24px" />
    
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style10">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    </form>
</body>
</html>
