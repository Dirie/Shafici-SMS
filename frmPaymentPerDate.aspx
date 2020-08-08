<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmPaymentPerDate.aspx.vb" Inherits="frmPaymentPerDate"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {}
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 144px;
        }
        .style4
        {
            height: 23px;
            width: 294px;
        }
        .style5
        {
            height: 23px;
            width: 162px;
        }
        .style7
        {
            width: 41px;
        }
        .style11
        {
            width: 141px;
        }
        .style12
        {
            width: 652px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style7">
        <tr>
            <td bgcolor="#666633" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td align="right" class="style3">
                            From Date:</td>
                        <td class="style4">
                            <asp:DropDownList ID="drpFrom" runat="server" Height="25px" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td class="style2">
                            ToDate:</td>
                        <td class="style5">
                            <asp:DropDownList ID="drpTo" runat="server" Height="23px" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnsearch" runat="server" Height="28px" Text="Search" 
                                Width="72px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style11">
    
        <asp:Button ID="btnToEcxel" runat="server" Font-Bold="True" Text="To Excel" 
            Width="141px" />
    
            </td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" Height="93px" Width="797px" ShowFooter="True">
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <Columns>
                        <asp:BoundField DataField="STNO" HeaderText="STNO" SortExpression="STNO" />
                        <asp:BoundField DataField="STNAME" HeaderText="Name" SortExpression="STNAME" />
                        <asp:BoundField DataField="School" HeaderText="School" />
                        <asp:BoundField DataField="Class" HeaderText="Class" />
                        <asp:BoundField DataField="MONTH" HeaderText="MONTH" SortExpression="MONTH" />
                        <asp:BoundField DataField="AMOUNT" HeaderText="AMOUNT" 
                            SortExpression="AMOUNT" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                    <asp:Label ID="LBLMESAGES" runat="server" Text="LBLMESSAGES" 
                        ForeColor="Black" Visible="False"></asp:Label>
                </td>
        </tr>
    </table>
    <div style="height: 19px">
    
    </div>
    </form>
</body>
</html>
