<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FeeType.aspx.vb" Inherits="FeeType" %>

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
            width: 92px;
            font-size: xx-large;
            color: #0000FF;
        }
        .style5
        {
            width: 680px;
        }
        .style6
        {
            width: 333px;
        }
        .style7
        {
            height: 27px;
        }
        .style8
        {
        }
        .style9
        {
            width: 71px;
        }
        .style10
        {
            height: 27px;
            width: 243px;
        }
        .style11
        {
            width: 243px;
        }
        .style12
        {
            height: 27px;
            width: 333px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style4" dir="rtl">Fee Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;
                    <asp:Label ID="lblmassage" runat="server" ForeColor="#CC9900" Font-Bold="True" 
                        Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style5" colspan="4" bgcolor="Lime">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                </td>
            <td class="style7">
                <asp:Label ID="Label3" runat="server" Text="Fee Name"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="drpFeeName" runat="server" Height="27px" 
                    style="margin-bottom: 7px" Width="271px">
                </asp:DropDownList>
            </td>
            <td class="style7">
                <asp:Button ID="btnSearch" runat="server" Text="Search" Width="95px" 
                    Height="24px" />
                </td>
        </tr>
        <tr bgcolor="#66CCFF">
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td class="style6">
                        &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                <asp:Label ID="Label2" runat="server" Text="Fee ID"></asp:Label>
            </td>
            <td class="style6">
                        <asp:TextBox ID="txtFeeID" runat="server" Width="274px" Wrap="False"></asp:TextBox>
                        </td>
            <td>
&nbsp; 
                </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                Fee Name</td>
            <td class="style6">
                        <asp:TextBox ID="txtFeeName" runat="server" Width="273px" Wrap="False"></asp:TextBox>
                        </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
                Amount</td>
            <td class="style6">
                        <asp:TextBox ID="txtAmount" runat="server" Width="273px"></asp:TextBox>
                        </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" bgcolor="Lime">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style9">
            <asp:Button ID="btnNew" runat="server" Text="New" Width="95px" Height="24px" />
            </td>
            <td class="style6">
&nbsp;<asp:Button ID="btnUpdate" runat="server" Text="Update" Width="95px" Height="24px" />
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
