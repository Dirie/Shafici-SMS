<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmPaymentVoucher.aspx.vb" Inherits="frmPaymentVoucher" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style2
        {
            text-align: center;
        }
        .style8
        {
        }
        .style10
        {
            width: 180px;
        }
        .style14
        {
            width: 110px;
        }
        .style16
        {
            width: 746px;
        }
        .style18
        {
            text-align: center;
            font-size: xx-large;
            color: #999999;
        }
        .style19
        {
            width: 740px;
        }
        .style20
        {
            width: 280px;
        }
        .style21
        {
            text-align: center;
            width: 280px;
        }
        .style22
        {
            height: 23px;
        }
        .style23
        {
            width: 110px;
            height: 23px;
        }
        .style24
        {
            width: 280px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <input id="Button1" type="button" value="PRINT" />
        <input id="Button2" type="button" value="CLOSE" /><table align="center" 
            class="style16">
            <tr>
                <td>
                    <table class="style19">
                        <tr>
                            <td class="style2" colspan="2">
                                <img alt="Logo" src="Images/LOGO.PNG" style="width: 76px; height: 74px" /></td>
                            <td class="style21" colspan="2">
                                MU&#39;ASSADA&nbsp; AL-IMAMU AL-SHAFICI<br />
                                &nbsp;859088 / 216184 - 17 / 851227 - 17<br />
                                CADDEYNTA LACAG QABASHADA</td>
                            <td class="style18" colspan="2" align="right">
                                ASAL</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label1" runat="server" Text="VOUCHER NO:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtbonoA" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label8" runat="server" Text="DATE:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtdateA" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label2" runat="server" Text="STNO:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtstnoA" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label9" runat="server" Text="NAME:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtnameA" runat="server" BorderStyle="Outset" Width="280px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label3" runat="server" Text="SCHOOL:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtschoolA" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label10" runat="server" Text="CLASS:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtclassA" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label4" runat="server" Text="AMOUNT:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtamountA" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label5" runat="server" Text="AMOUNT IN WORDS:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtamountInWordsA" runat="server" BorderStyle="Outset" Height="36px" 
                                    Width="212px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label11" runat="server" Text="MONTHS:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtmonthsA" runat="server" BorderStyle="Outset" Height="36px" 
                                    Width="280px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label6" runat="server" Text="DOLAR NO:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtusdnoA" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style10" colspan="2">
                                &nbsp;</td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style8" colspan="3">
                                <asp:Label ID="Label7" runat="server" Text="SAXIIXA MAS'UULKA"></asp:Label>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                                <asp:Label ID="Label12" runat="server" Text="SAXIIXA Cashier"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" colspan="3">
                                ____________________</td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                                ____________________</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    __________________________________________________________________________________________</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="style19">
                        <tr>
                            <td class="style2" colspan="2">
                                <img alt="Logo" src="Images/LOGO.PNG" style="width: 76px; height: 74px" /></td>
                            <td class="style21" colspan="2">
                                MU&#39;ASSADA&nbsp; AL-IMAMU AL-SHAFICI<br />
                                &nbsp;859088 / 216184 - 17 / 851227 - 17<br />
                                CADDEYNTA LACAG QABASHADA</td>
                            <td class="style18" colspan="2" align="right">
                                COPY</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label13" runat="server" Text="VOUCHER NO:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtbonoC" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label14" runat="server" Text="DATE:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtdateC" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label15" runat="server" Text="STNO:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtstnoC" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label16" runat="server" Text="NAME:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtnameC" runat="server" BorderStyle="Outset" Width="280px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label17" runat="server" Text="SCHOOL:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtschoolC" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label18" runat="server" Text="CLASS:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtclassC" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label19" runat="server" Text="AMOUNT:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtamountC" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label20" runat="server" Text="AMOUNT IN WORDS:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtamountInWordsC" runat="server" BorderStyle="Outset" Height="36px" 
                                    Width="212px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label21" runat="server" Text="MONTHS:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtmonthsC" runat="server" BorderStyle="Outset" Height="36px" 
                                    Width="280px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label22" runat="server" Text="DOLAR NO:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtusdnoC" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style10" colspan="2">
                                &nbsp;</td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22" colspan="3">
                                <asp:Label ID="Label23" runat="server" Text="SAXIIXA MAS'UULKA"></asp:Label>
                            </td>
                            <td class="style23" colspan="2">
                                </td>
                            <td class="style24">
                                <asp:Label ID="Label24" runat="server" Text="SAXIIXA Cashier"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" colspan="3">
                                ____________________</td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                                ____________________</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;
                    __________________________________________________________________________________________</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table class="style19">
                        <tr>
                            <td class="style2" colspan="2">
                                <img alt="Logo" src="Images/LOGO.PNG" style="width: 76px; height: 74px" /></td>
                            <td class="style21" colspan="2">
                                MU&#39;ASSADA&nbsp; AL-IMAMU AL-SHAFICI<br />
                                &nbsp;859088 / 216184 - 17 / 851227 - 17<br />
                                CADDEYNTA LACAG QABASHADA</td>
                            <td class="style18" colspan="2" align="right">
                                COPY</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label25" runat="server" Text="VOUCHER NO:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtbonoC0" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label26" runat="server" Text="DATE:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtdateC0" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label27" runat="server" Text="STNO:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtstnoC0" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label28" runat="server" Text="NAME:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtnameC0" runat="server" BorderStyle="Outset" Width="280px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label29" runat="server" Text="SCHOOL:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtschoolC0" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label30" runat="server" Text="CLASS:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtclassC0" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label31" runat="server" Text="AMOUNT:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtamountC0" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label32" runat="server" Text="AMOUNT IN WORDS:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtamountInWordsC0" runat="server" BorderStyle="Outset" Height="36px" 
                                    Width="212px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label33" runat="server" Text="MONTHS:"></asp:Label>
                            </td>
                            <td class="style20">
                                <asp:TextBox ID="txtmonthsC0" runat="server" BorderStyle="Outset" Height="36px" 
                                    Width="280px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                <asp:Label ID="Label34" runat="server" Text="DOLAR NO:"></asp:Label>
                            </td>
                            <td class="style10" colspan="2">
                                <asp:TextBox ID="txtusdnoC0" runat="server" BorderStyle="Outset" Width="180px"></asp:TextBox>
                            </td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style8">
                                &nbsp;</td>
                            <td class="style10" colspan="2">
                                &nbsp;</td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style22" colspan="3">
                                <asp:Label ID="Label35" runat="server" Text="SAXIIXA MAS'UULKA"></asp:Label>
                            </td>
                            <td class="style23" colspan="2">
                                </td>
                            <td class="style24">
                                <asp:Label ID="Label36" runat="server" Text="SAXIIXA Cashier"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8" colspan="3">
                                ____________________</td>
                            <td class="style14" colspan="2">
                                &nbsp;</td>
                            <td class="style20">
                                ____________________</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
