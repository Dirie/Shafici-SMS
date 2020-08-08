<%@ Page Language="VB" AutoEventWireup="false" CodeFile="StudentAttendence.aspx.vb" Inherits="StudentAttendence" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {}
        .style2
        {
            width: 189px;
        }
        .style3
        {
            width: 220px;
        }
        .style4
        {
            width: 150px;
            text-align: right;
        }
        .style5
        {
            width: 150px;
        }
        .style6
        {
            width: 111px;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style2" style="text-align: right">
                            Select School:</td>
                        <td class="style3">
                            <asp:DropDownList ID="drpschool" runat="server" AutoPostBack="True" 
                                Height="21px" Width="220px">
                            </asp:DropDownList>
                        </td>
                        <td class="style4">
                            Select Class:</td>
                        <td class="style5">
                            <asp:DropDownList ID="drpclass" runat="server" AutoPostBack="True" 
                                Height="19px" Width="150px">
                            </asp:DropDownList>
                        </td>
                        <td class="style6">
                            Date:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF99FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnsave" runat="server" Text="Save" Width="82px" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnclear" runat="server" Text="Clear Grid" Width="87px" />
&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td bgcolor="#FF99FF">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    Width="886px">
                    <Columns>
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" ReadOnly="True" 
                            SortExpression="StudentID" />
                        <asp:BoundField DataField="StudentName" HeaderText="Student Name" 
                            SortExpression="StudentName" />
                        <asp:CheckBoxField DataField="Status" HeaderText="Status" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
