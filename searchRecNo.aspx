<%@ Page Language="VB" AutoEventWireup="false" CodeFile="searchRecNo.aspx.vb" Inherits="searchRecNo" %>

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
            width: 295px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td style="text-align: center">
                    <table class="style1">
                        <tr>
                            <td class="style2">
                                Search Receipt No:</td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtsearch" runat="server" Width="218px"></asp:TextBox>
&nbsp;&nbsp;
                                <asp:Button ID="btnsearch" runat="server" Height="26px" Text="Search" 
                                    Width="70px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="background-color: #99CCFF">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" Caption="Student List" 
                        CaptionAlign="Top" Width="1116px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
