<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Schools.aspx.vb" Inherits="School" %>

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
            width: 109px;
        }
        .style4
        {            color: #0000FF;
            font-size: x-large;
        }
        .style5
        {
            width: 230px;
        }
        .style6
        {
            width: 192px;
        }
        .style7
        {
            height: 18px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style4" dir="rtl">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;School 
        Registration
        <asp:Panel ID="Panel3" runat="server" BackColor="Lime" Height="1px">
        </asp:Panel>
        </span>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                    <code>
                    <asp:Label ID="lblmassage" runat="server" 
                        
                        
                    style="color: #008000; font-size: large; font-weight: 700; font-family: 'Times New Roman', Times, serif"></asp:Label>
                    </code>
                </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr bgcolor="Lime">
            <td class="style2" colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                        Search By Name</td>
            <td class="style5">
                <asp:DropDownList ID="drpSchoolName" runat="server" Height="28px" 
                    style="margin-bottom: 7px" Width="202px">
                </asp:DropDownList>
                        </td>
            <td class="style6">
                <asp:Button ID="btnSearch" runat="server" Text="Search" Width="95px" 
                    Height="30px" />
                </td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style2" bgcolor="#CC99FF" colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                        <asp:Label ID="Label1" runat="server" Text="Schoo ID :"></asp:Label>
                        </td>
            <td class="style5">
                        <asp:TextBox ID="txtschoolID" runat="server" Width="204px" 
                            CausesValidation="True"></asp:TextBox>
                        </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                        <asp:Label ID="Label2" runat="server" Text="Schoo Name:"></asp:Label>
                        </td>
            <td class="style5">
                        <asp:TextBox ID="txtschoolName" runat="server" Width="204px"></asp:TextBox>
                        </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                        <asp:Label ID="Label3" runat="server" Text="Address :"></asp:Label>
                        </td>
            <td class="style5">
                        <asp:TextBox ID="txtAddress" runat="server" Width="204px"></asp:TextBox>
                        </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                        <asp:Label ID="Label4" runat="server" Text="Phone:"></asp:Label>
                        </td>
            <td class="style5">
                        <asp:TextBox ID="txtPhone" runat="server" Width="204px"></asp:TextBox>
                        </td>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" colspan="5" bgcolor="Lime">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
            <asp:Button ID="btnNew" runat="server" Text="New" Width="95px" Height="24px" />
            </td>
            <td class="style4" colspan="2">
                &nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" Width="95px" 
                    Height="24px" />
            &nbsp;<asp:Button ID="btnClear" runat="server" Text="Clear" Width="95px" 
                    Height="24px" />
                &nbsp;&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
