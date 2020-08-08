<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SchoolLog.aspx.vb" Inherits="UniversityLog" %>

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
        }
        .style7
        {
        }
        .style8
        {
        }
        .style9
        {
            width: 145px;
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
                        style="font-family: 'times New Roman', Times, serif; font-size: 27px; font-weight: normal; font-style: normal; font-variant: small-caps; text-transform: capitalize; color: #0000FF">School LoG</span></td>
        </tr>
    </table>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td colspan="4">
        <asp:Label ID="lblmessage" runat="server" ForeColor="Red" 
                    style="color: #800000; font-size: large; font-weight: 700"></asp:Label>
    
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Lime" colspan="6">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                Search By Title</td>
            <td class="style7" colspan="2">
                <asp:DropDownList ID="drpTitle" runat="server" Height="29px" 
                    style="margin-bottom: 7px" Width="261px">
                </asp:DropDownList>
                <asp:Button ID="btnSearch" runat="server" Text="Search" Width="95px" 
                    Height="30px" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style8" bgcolor="#CCCCFF" colspan="5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Log ID"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TxtlogID" runat="server" Width="179px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="Txtdate" runat="server" Width="179px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="Txttitle" runat="server" Width="543px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Detail"></asp:Label>
            </td>
            <td colspan="3" rowspan="6">
                <asp:TextBox ID="Txtdetail" runat="server" Height="132px" Width="541px" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Lime" class="style5" colspan="5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
            <asp:Button ID="btnNew" runat="server" Text="New" Width="99px" Height="24px" />
            </td>
            <td colspan="3">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="99px" 
                    Height="24px" />
            &nbsp;
            <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="99px" 
                    Height="24px" />
            &nbsp;<asp:Button ID="btnclose" runat="server" Text="Clear" Width="99px" 
                    Height="24px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
