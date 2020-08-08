<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmPaymentInfo.aspx.vb" Inherits="frmPaymentInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
        }
        .style2
        {
            height: 38px;
            font-size: xx-large;
            text-align: center;
            width: 855px;
        }
        .style4
        {
            width: 220px;
        }
        .style20
        {
            width: 44px;
        }
        .style24
        {
            width: 220px;
            height: 26px;
        }
        .style25
        {
            width: 44px;
            height: 26px;
        }
        .style27
        {
            height: 26px;
        }
        .style28
        {
            width: 4px;
        }
        .style29
        {
            width: 56px;
        }
        .style33
        {
            width: 855px;
        }
        .style37
        {
            width: 78px;
            height: 26px;
        }
        .style38
        {
            width: 78px;
        }
        .style39
        {
            width: 104px;
        }
        .style40
        {
            width: 104px;
            height: 26px;
        }
        .style41
        {
            width: 49px;
        }
        .style42
        {
        }
        .style43
        {
            height: 52px;
        }
        .style44
        {
            width: 114px;
        }
        .style48
        {
            width: 136px;
        }
        .style49
        {
            width: 591px;
        }
        .style50
        {
            width: 861px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style50" frame="box">
            <tr>
                <td class="style2">
                                        Payment Report</td>
            </tr>
            <tr>
                <td bgcolor="#CCCCCC" class="style33">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style33">
                    <table class="style1">
                        <tr>
                            <td class="style39">
                                School:</td>
                            <td class="style4">
                                <asp:DropDownList ID="drpschool" runat="server" Height="25px" Width="220px" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style38">
                                Class:</td>
                            <td>
                                <asp:DropDownList ID="drpclass" runat="server" Height="25px" Width="220px" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style40">
                                Payment Type:</td>
                            <td class="style24">
                                <asp:DropDownList ID="drpPaymentType" runat="server" Height="25px" 
                                    Width="220px" AutoPostBack="True">
                                    <asp:ListItem>One Month</asp:ListItem>
                                    <asp:ListItem>Two Month</asp:ListItem>
                                    <asp:ListItem>Three Month</asp:ListItem>
                                    <asp:ListItem>Six Month</asp:ListItem>
                                    <asp:ListItem>One Year</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td class="style25">
                            </td>
                            <td class="style37">
                                <asp:Label ID="Label1" runat="server" style="text-align: right" 
                                    Text="Month Type"></asp:Label>
                            </td>
                            <td class="style27">
                                <asp:DropDownList ID="drpmonthType" runat="server" Height="25px" Width="220px" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style33">
                    <table class="style42">
                        <tr>
                            <td class="style28">
                                &nbsp;</td>
                            <td class="style29">
                                <asp:Button ID="btnboonoLacag" runat="server" Text="Boonooyinka Lacagta" 
                                    BorderStyle="None" ForeColor="#3333FF" Height="30px" />
                            </td>
                            <td class="style29">
                                <asp:Button ID="btnPreview" runat="server" Text="Preview" BorderStyle="None" 
                                    ForeColor="#3333FF" Height="30px" Width="97px" />
                            </td>
                            <td class="style41">
                                <asp:Button ID="btnclose" runat="server" Text="Close" BorderStyle="None" 
                                    ForeColor="#3333FF" Height="30px" Width="107px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td bgcolor="Silver" class="style33">
                </td>
            </tr>
            <tr>
                <td class="style33">
                    <table class="style43">
                        <tr>
                            <td class="style44">
                                <asp:RadioButton ID="rbPaid" runat="server" BorderStyle="None" Text="Paid" 
                                    GroupName="Paid" AutoPostBack="True" />
                            </td>
                            <td class="style48">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                            <td class="style49">
                                <asp:RadioButton ID="rbByschool" runat="server" Text="By School" 
                                    GroupName="T" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style44">
                                <asp:RadioButton ID="rbUnpaid" runat="server" Text="Un Paid" GroupName="Paid" 
                                    AutoPostBack="True" />
                            </td>
                            <td class="style48">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                &nbsp;</td>
                            <td class="style49">
                                <asp:RadioButton ID="rbAll" runat="server" Text="All" GroupName="T" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style33" bgcolor="Silver">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style33">
                    <asp:GridView ID="GridView1" runat="server" Width="988px" BackColor="White" 
                        BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                        CellPadding="4" ShowFooter="True" Font-Size="Small">
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <PagerStyle BackColor="#FFCCFF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style33">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style33">
                    <asp:Label ID="LBLMESAGES" runat="server" Text="LBLMESSAGES" 
                        ForeColor="Black"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:Label ID="lblaccedmicYear" runat="server" Text="lblaccedmicYear" 
        Visible="False"></asp:Label>
    </form>
</body>
</html>
