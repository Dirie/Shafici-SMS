<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Sponsors.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color: #0000FF;
            text-align: center;
        }
        .newStyle1
        {
            width: auto;
            height: auto;
            top: auto;
            right: auto;
        }
        .style28
        {
            width: 100%;
        }
        .style31
        {
            width: 317px;
        }
        .style33
        {
            width: 233px;
        }
        .style34
        {            height: 37px;
        }
        .style35
        {
        }
        .style36
        {
            width: 141px;
        }
        .style39
        {
            width: 268435488px;
        }
        .style40
        {
            width: 93px;
        }
        .style41
        {
            width: 265px;
        }
        .style42
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        &nbsp; Sponsor Registration<br />
        <asp:Label ID="lblmassage" runat="server" ForeColor="Red" 
                    style="color: #800000; font-size: large; font-weight: 700"></asp:Label>
    
    </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Panel ID="Panel3" runat="server" BackColor="Lime" Height="1px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp; <code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </code>
            <br />
            <br />
            <br />
        </asp:Panel>
        <table class="style28">
            <tr>
                <td class="style34" bgcolor="Lime" colspan="8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style42" colspan="2">
                    &nbsp;</td>
                <td class="style36" colspan="2">
                    Search By Name</td>
                <td class="style33" colspan="2">
                <asp:DropDownList ID="drpSponsorName" runat="server" Height="29px" 
                    style="margin-bottom: 7px" Width="261px">
                </asp:DropDownList>
                </td>
                <td class="style31" colspan="2">
                <asp:Button ID="btnSearch" runat="server" Text="Search" Width="95px" 
                    Height="30px" />
                </td>
            </tr>
            <tr>
                <td class="style42" colspan="8" bgcolor="#CC99FF">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style42" colspan="2">
                    &nbsp;</td>
                <td class="style36" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Sponsor ID :"></asp:Label>
                &nbsp;
                </td>
                <td class="style33" colspan="2">
                    <asp:TextBox ID="txtSponsorID" runat="server" Height="22px" Width="219px" 
                        style="margin-left: 0px"></asp:TextBox>
                </td>
                <td class="style31" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style42" colspan="2">
                    &nbsp;</td>
                <td class="style36" colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Sponsor Name :"></asp:Label>
                </td>
                <td class="style33" colspan="2">
                    <asp:TextBox ID="txtSponsorName" runat="server" Width="219px" Wrap="False"></asp:TextBox>
                </td>
                <td class="style31" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style42" colspan="2">
                    &nbsp;</td>
                <td class="style36" colspan="2">
                    <asp:Label ID="Label4" runat="server" Text="Gender :"></asp:Label></td>
                <td class="style33" colspan="2">
                    <asp:DropDownList ID="drpGender" runat="server" Height="23px" Width="145px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style31" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style42" colspan="2">
                    &nbsp;</td>
                <td class="style36" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>:</td>
                <td class="style33" colspan="2">
                    <asp:TextBox ID="txtAddress" runat="server" Width="218px"></asp:TextBox>
                </td>
                <td class="style31" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style42" colspan="2">
                    &nbsp;</td>
                <td class="style36" colspan="2">
                    Mobile 
                    :</td>
                <td class="style33" colspan="2">
                    <asp:TextBox ID="txtmobile" runat="server" Width="218px" Wrap="False"></asp:TextBox>
                </td>
                <td class="style31" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style42" colspan="2">
                    &nbsp;</td>
                <td class="style36" colspan="2">
                    Registration Date :</td>
                <td class="style33" colspan="2">
                    <asp:TextBox ID="txtRegistrationDate1" runat="server" EnableTheming="True" 
                        Height="23px" Width="218px"></asp:TextBox>
                </td>
                <td class="style31" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style35" bgcolor="Lime" colspan="8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style41" bgcolor="White">
                    &nbsp;&nbsp;</td>
                <td class="style35" bgcolor="White" colspan="2">
            <asp:Button ID="btnNew" runat="server" Text="New" Width="99px" Height="31px" 
                    style="margin-left: 0px" />
                </td>
                <td class="style40" bgcolor="White">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="99px" Height="31px" 
                    style="margin-left: 0px" />
                </td>
                <td bgcolor="White">
            <asp:Button ID="btnClear" runat="server" Text="Clear" Width="99px" Height="31px" 
                    style="margin-left: 0px" />
                </td>
                <td class="style35" bgcolor="White" colspan="2">
                    &nbsp;</td>
                <td class="style39" bgcolor="White">
                    &nbsp;</td>
            </tr>
        </table>
        <asp:Panel ID="Panel4" runat="server" BackColor="Lime" Height="16px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;&nbsp; <code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </code>
            <br />
            <br />
            <br />
        </asp:Panel>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp; 
    &nbsp; 
    &nbsp; 
    &nbsp;</p>
            </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
