<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Search Attendence.aspx.vb" Inherits="frmPaymentPerDate"  %>

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
            }
        .style4
        {
            height: 23px;
            width: 204px;
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
        }
        .style13
        {
            height: 23px;
            width: 324px;
        }
        .style14
        {
            height: 23px;
            width: 44px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style7">
        <tr>
            <td bgcolor="White">
                    <span class="style4" dir="rtl" 
                        style="font-family: 'times New Roman', Times, serif; font-size: 27px; font-weight: normal; font-style: normal; font-variant: small-caps; text-transform: capitalize; color: #0000FF">
                &nbsp; search Attendence</span></td>
        </tr>
        <tr>
            <td>
                <table class="style1" bgcolor="White">
                    <tr>
                        <td align="right" class="style3" bgcolor="Lime" colspan="5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style14">
                            Date :</td>
                        <td class="style4">
                            <asp:DropDownList ID="drpFrom" runat="server" Height="25px" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td class="style2">
                            <asp:Button ID="btnsearch" runat="server" Height="28px" Text="Search" 
                                Width="72px" />
                        </td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style14">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style2" colspan="2">
        <asp:Label ID="lblmwssage" runat="server" ForeColor="Red" 
                    style="color: #800000; font-size: large; font-weight: 700"></asp:Label>
    
                        </td>
                        <td class="style13">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" Height="93px" Width="797px" ShowFooter="True" 
                    BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" />
                        <asp:BoundField DataField="StudentName" HeaderText="StudentName" />
                        <asp:BoundField DataField="ClassName" HeaderText="ClassName" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />
                        <asp:BoundField DataField="Remark" HeaderText="Remark" SortExpression="MONTH" />
                        <asp:BoundField DataField="ADate" HeaderText="Date" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="style11" bgcolor="Lime">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                    &nbsp;</td>
        </tr>
    </table>
    <div style="height: 19px">
    
    </div>
    </form>
</body>
</html>
