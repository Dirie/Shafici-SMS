<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Teachers.aspx.vb" Inherits="Student" %>

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
        }
        .style3
        {
            width: 284px;
        }
        .style4
        {
            width: 105px;
        }
        .style5
        {
            width: 101px;
        }
        .style6
        {
            width: 265px;
        }
        .style7
        {
            width: 1px;
        }
        .style8
        {
            width: 3px;
        }
        .style9
        {
            width: 81px;
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
                        style="font-family: 'times New Roman', Times, serif; font-size: 27px; font-weight: normal; font-style: normal; font-variant: small-caps; text-transform: capitalize; color: #0000FF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    Teacher Registration</span></td>
        </tr>
    </table>
    
    </div>
    <table class="style1">
        <tr>
            <td bgcolor="Lime" colspan="6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td colspan="4">
        <asp:Label ID="lblmessage" runat="server" ForeColor="Red" 
                    style="color: #800000; font-size: large; font-weight: 700"></asp:Label>
    
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" Text="Teacher ID"></asp:Label>
            </td>
            <td class="style3" colspan="3">
                <asp:TextBox ID="txtTeacherID" runat="server" style="margin-left: 0px" 
                    Width="257px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label2" runat="server" Text="Teacher Name"></asp:Label>
            </td>
            <td class="style3" colspan="3">
                <asp:TextBox ID="TxtTeacherName" runat="server" style="margin-left: 0px" 
                    Width="258px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="style3" colspan="3">
                <asp:DropDownList ID="DpGender" runat="server" Height="27px" Width="192px">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="style3" colspan="3">
                <asp:TextBox ID="TxtAddress" runat="server" Height="20px" 
                    style="margin-left: 0px" Width="257px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label5" runat="server" Text="Mobile"></asp:Label>
            </td>
            <td class="style3" colspan="3">
                <asp:TextBox ID="TxtMobile" runat="server" style="margin-left: 0px" 
                    Width="256px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="Label6" runat="server" Text="Date"></asp:Label>
            </td>
            <td class="style3" colspan="3">
                <asp:TextBox ID="TxtDate" runat="server" style="margin-left: 0px" Width="256px" 
                    Wrap="False"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Lime" class="style2" colspan="6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
            <asp:Button ID="btnNew" runat="server" Text="New" Width="99px" Height="24px" />
            </td>
            <td class="style7">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="99px" 
                    Height="24px" />
            </td>
            <td class="style8">
            <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="99px" 
                    Height="24px" />
            </td>
            <td class="style9">
            <asp:Button ID="btnClear" runat="server" Text="Clear" Width="99px" Height="24px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td class="style3" colspan="3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
