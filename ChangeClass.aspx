<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ChangeClass.aspx.vb" Inherits="ChangeClass" %>

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
            width: 139px;
        }
        .style4
        {
        }
        .style5
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style4" dir="rtl" 
                        style="font-family: 'times New Roman', Times, serif; font-size: 27px; font-weight: normal; font-style: normal; font-variant: small-caps; text-transform: capitalize; color: #0000FF">
        Change Class</span><table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4" colspan="2">
        <asp:Label ID="lblmessage" runat="server" ForeColor="Red" 
                    style="color: #800000; font-size: large; font-weight: 700"></asp:Label>
    
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr bgcolor="Lime" 
                style="font-size: large; font-family: 'times New Roman', Times, serif; color: #0066FF">
                <td class="style2">
                    From</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    To</td>
                <td bgcolor="Lime">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    School Name</td>
                <td class="style5">
                    <asp:DropDownList ID="DrpfromSchoolName" runat="server" Height="26px" 
                        Width="167px">
                    </asp:DropDownList>
                </td>
                <td class="style3">
                    School Name</td>
                <td>
                    <asp:DropDownList ID="DrptoSchoolName" runat="server" Height="26px" 
                        Width="167px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Class Name</td>
                <td class="style5">
                    <asp:DropDownList ID="drpFromClassName" runat="server" Height="26px" 
                        Width="167px">
                    </asp:DropDownList>
                </td>
                <td class="style3">
                    Class Name</td>
                <td>
                    <asp:DropDownList ID="DrptoClassName" runat="server" Height="26px" 
                        Width="167px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td bgcolor="Lime" class="style2" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5" colspan="2">
            <asp:Button ID="btnchange" runat="server" Text="Change" Width="99px" Height="28px" />
            &nbsp;
            <asp:Button ID="btnClear" runat="server" Text="Clear" Width="99px" Height="28px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
