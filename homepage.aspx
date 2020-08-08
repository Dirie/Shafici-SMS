<%@ Page Language="VB" AutoEventWireup="false" CodeFile="homepage.aspx.vb" Inherits="homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            height: 564px;
            width: 900px;
        }
        .style2
        {
            height: 107px;
        }
        .style5
        {
            height: 28px;
        }
        .style6
        {
            width: 4px;
        }
        .style7
        {
            width: 45px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" colspan="3">
                </td>
            </tr>
            <tr>
                <td class="style5" colspan="3">
                    <asp:Menu ID="Menu1" runat="server" BackColor="#B5C7DE" 
                        DynamicHorizontalOffset="2" Font-Names="Georgia" Font-Size="0.9em" 
                        ForeColor="#284E98" Height="32px" Orientation="Horizontal" 
                        StaticSubMenuIndent="10px" Width="896px">
                        <StaticSelectedStyle BackColor="#507CD1" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                        <DynamicMenuStyle BackColor="#B5C7DE" />
                        <DynamicSelectedStyle BackColor="#507CD1" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                        <Items>
                            <asp:MenuItem Text="Home" Value="Home"></asp:MenuItem>
                            <asp:MenuItem Text="Registrations" Value="Registrations"></asp:MenuItem>
                            <asp:MenuItem Text="Reciept Information" Value="Reciept Information">
                                <asp:MenuItem NavigateUrl="~/frmPayment.aspx" Text="New Reciept" 
                                    Value="New Reciept"></asp:MenuItem>
                                <asp:MenuItem Text="Print Reciepts" Value="Print Reciepts"></asp:MenuItem>
                                <asp:MenuItem Text="Search Reciept Info" Value="Search Reciept Info" 
                                    NavigateUrl="~/frmPaymentInfo.aspx">
                                </asp:MenuItem>
                                <asp:MenuItem Text="Search Reciept No" Value="Search Reciept No" 
                                    NavigateUrl="~/searchRecNo.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="Income Periods" Value="Income Periods" 
                                    NavigateUrl="~/frmPaymentPerDate.aspx"></asp:MenuItem>
                                <asp:MenuItem Text="UnPaid Student List" Value="UnPaid Student List">
                                </asp:MenuItem>
                                <asp:MenuItem Text="Specific Student List" Value="Specific Student List">
                                </asp:MenuItem>
                                <asp:MenuItem Text="Search Dolar No" Value="Search Dolar No" 
                                    NavigateUrl="~/SearchUSDNo.aspx"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Examination Recording" Value="Examination Recording">
                            </asp:MenuItem>
                            <asp:MenuItem Text="Attendence" Value="Attendence">
                                <asp:MenuItem Text="Students Attendence" Value="Students"></asp:MenuItem>
                                <asp:MenuItem Text="Staff Attendence" Value="Staff"></asp:MenuItem>
                            </asp:MenuItem>
                            <asp:MenuItem Text="Users" Value="Users"></asp:MenuItem>
                        </Items>
                    </asp:Menu>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
