<%@ Page Language="VB" AutoEventWireup="false" CodeFile="frmPayment.aspx.vb" Inherits="frmPayment" uiCulture="Auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment Entry</title>
    <style type="text/css">
        .style1
        {
            width: 926px;
        }
        .style2
        {
            text-align: left;
        }
        .style5
        {
            width: 133px;
            text-align: right;
            height: 30px;
        }
        .style6
        {
            width: 257px;
            height: 25px;
        }
        .style7
        {
            width: 112px;
            text-align: right;
            height: 30px;
        }
        .style8
        {
            height: 25px;
            width: 353px;
            font-size:medium;
        }
        .style14
        {
            text-align: right;
            height: 23px;
            background-color: #CCCCCC;
        }
        .style15
        {
            width: 100%;
        }
        .style16
        {
            text-align: left;
        }
        .style20
        {
            text-align: right;
        }
        .style27
        {
        }
        .style28
        {
            width: 370px;
        }
        .style29
        {
            width: 94px;
            height: 23px;
            text-align: right;
        }
        .style30
        {
            width: 370px;
            height: 23px;
        }
        .style35
        {
            width: 94px;
            height: 26px;
            text-align: right;
        }
        .style36
        {
            width: 370px;
            height: 26px;
        }
        .style39
        {
            text-align: right;
            width: 94px;
        }
        .style41
        {
            width: 128px;
        }
        .style42
        {
            width: 103px;
        }
        .style43
        {
            width: 56px;
        }
        .style44
        {
            width: 90px;
        }
        .style45
        {
            height: 26px;
            text-align: right;
            width: 420px;
        }
        .style46
        {
            height: 26px;
            text-align: left;
            width: 203px;
        }
        .style47
        {
            height: 26px;
            text-align: right;
            width: 178px;
        }
        .style48
        {
            height: 26px;
            width: 73px;
        }
    </style>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1" frame="border">
            <tr>
                <td class="style5">
                    <asp:Label ID="Label1" runat="server" style="text-align: right" 
                        Text="Raadi No:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:DropDownList ID="drpSearchNo" runat="server" Height="25px" Width="257px" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td class="style7">
                    <asp:Label ID="Label2" runat="server" Text="Raadi Magac:"></asp:Label>
                </td>
                <td class="style8">
                    <asp:DropDownList ID="drSearchName" runat="server" Height="25px" Width="352px" 
                        style="font-size: medium" AutoPostBack="True" AppendDataBoundItems="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style14" colspan="4">
                    </td>
            </tr>
            <tr>
                <td class="style14" colspan="4">
                    <table class="style15">
                        <tr bgcolor="#FFFFCC">
                            <td class="style48">
                                <asp:Label ID="Label14" runat="server" Text="Receipt No:"></asp:Label>
                            </td>
                            <td align="left" class="style47">
                                <asp:TextBox ID="txtrecvoucher" runat="server" style="text-align: left" 
                                    Width="178px"></asp:TextBox>
                            </td>
                            <td class="style45">
                                <asp:Label ID="Label15" runat="server" Text="Date:"></asp:Label>
                            </td>
                            <td class="style46">
                                <asp:TextBox ID="txtdate" runat="server" Width="203px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="4">
                    <table class="style15">
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label3" runat="server" Text="STNO:"></asp:Label>
                            </td>
                            <td class="style28">
                                <asp:TextBox ID="txtstno" runat="server" Width="160px" ReadOnly="True"></asp:TextBox>
                            </td>
                            <td class="style27" rowspan="12">
                                <table class="style15">
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoAug" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountAug" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkAug" runat="server" Text="Aug" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoSep" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountSep" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkSep" runat="server" Text="Sep" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoOct" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountOct" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkOct" runat="server" Text="Oct" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoNov" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountNov" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkNov" runat="server" Text="Nov" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoDec" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountDec" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkDec" runat="server" Text="Dec" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoJan" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountJan" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkJan" runat="server" Text="Jan" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoFeb" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountFeb" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkFeb" runat="server" Text="Feb" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoMar" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountMar" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkMar" runat="server" Text="Mar" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoApr" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountApr" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkApr" runat="server" Text="Apr" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoMay" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountMay" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkMay" runat="server" Text="May" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoJune" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountJune" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkJune" runat="server" Text="June" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtBonoJuly" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style41">
                                            <asp:TextBox ID="txtamountJuly" runat="server" ReadOnly="True"></asp:TextBox>
                                        </td>
                                        <td class="style42">
                                            <asp:CheckBox ID="chkJuly" runat="server" Text="July" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style35">
                                <asp:Label ID="Label4" runat="server" Text="MAGACA:"></asp:Label>
                            </td>
                            <td class="style36">
                                <asp:TextBox ID="txtname" runat="server" Width="370px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style39">
                                <asp:Label ID="Label5" runat="server" style="text-align: right" Text="SCHOOL:"></asp:Label>
                            </td>
                            <td class="style16">
                                <asp:TextBox ID="txtschool" runat="server" Width="160px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style29">
                                <asp:Label ID="Label6" runat="server" Text="CLASS:"></asp:Label>
                            </td>
                            <td class="style30">
                                <asp:TextBox ID="txtclass" runat="server" Width="160px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label8" runat="server" Text="Fee Type:"></asp:Label>
                            </td>
                            <td class="style28">
                                <asp:DropDownList ID="drpdfeeType" runat="server" Height="19px" Width="160px" 
                                    AutoPostBack="True">
                                    <asp:ListItem>TUITION</asp:ListItem>
                                    <asp:ListItem>ADMISION</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label10" runat="server" Text="Amount:"></asp:Label>
                            </td>
                            <td class="style28">
                                <asp:TextBox ID="txtamount" runat="server" Width="160px" AutoPostBack="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label11" runat="server" Text="Amount In Words:"></asp:Label>
                            </td>
                            <td class="style28">
                                <asp:TextBox ID="txtamountInWords" runat="server" Height="33px" Rows="3" 
                                    Width="370px" ReadOnly="True"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label12" runat="server" Text="USD NO:"></asp:Label>
                            </td>
                            <td class="style28">
                                <asp:TextBox ID="txtusdno" runat="server" Width="160px" style="height: 22px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                <asp:Label ID="Label16" runat="server" Text="Bono(#):"></asp:Label>
                            </td>
                            <td class="style28">
                                <asp:TextBox ID="txtbono" runat="server" Height="22px" Width="160px"></asp:TextBox>
                                            <asp:Button ID="btngebono" runat="server" Height="22px" Text="Get BONO" 
                                                Width="90px" />
                                        </td>
                        </tr>
                        <tr>
                            <td class="style20">
                                &nbsp;</td>
                            <td class="style28">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td bgcolor="#CCCCCC" class="style20" colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style20" colspan="2">
                                <table class="style15">
                                    <tr>
                                        <td class="style43" style="text-align: left">
                                            &nbsp;</td>
                                        <td class="style44" style="text-align: left">
                                            <asp:Button ID="btnbixi" runat="server" Height="30px" Text="BIXI" 
                                                Width="90px" />
                                        </td>
                                        <td class="style44" style="text-align: left">
                                            <asp:Button ID="Button3" runat="server" Height="30px" Text="Print" 
                                                Width="87px" />
                                        </td>
                                        <td style="text-align: left">
                                            <asp:Button ID="btnprint" runat="server" Height="30px" Text="Mas'uul" 
                                                Width="90px" />
                                            <asp:Button ID="Button1" runat="server" Height="30px" Text="Reciept Info" 
                                                Width="78px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style2" bgcolor="#669999" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" bgcolor="#669999" colspan="4">
                    <asp:Label ID="LBLMESAGES" runat="server" Text="LBLMESSAGES" 
                        ForeColor="#FFFFCC"></asp:Label>
                </td>
            </tr>
            </table>
    
    </div>
    <p style="width: 927px">
                    <asp:Label ID="lblacedemicYear" runat="server" Visible="False"></asp:Label>
&nbsp;</p>
    <asp:Button ID="Button2" runat="server" Text="Payment Report" Width="98px" />
    <br />
    <asp:Button ID="Button4" runat="server" Text="Button" />
    </form>
</body>
<script language ="javascript"  type="text/javascript">
    function closeWindow() {
window.close 
    }

</script>
</html>
