<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Classes.aspx.vb" Inherits="Classes" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">

        .style2
        {
            font-size: xx-large;
            color: #0000FF;
        }
        .style3
        {
            width: 100%;
            margin-top: 0px;
        }
        .style4
        {
            width: 109px;
        }
        .style5
        {
        }
        .style6
        {
            width: 234px;
        }
        .style7
        {
            width: 49px;
            height: 28px;
        }
        .style8
        {
            width: 109px;
            height: 28px;
        }
        .style9
        {
            width: 234px;
            height: 28px;
        }
        .style10
        {
            height: 28px;
        }
        .style16
        {
            width: 113px;
        }
        .style17
        {
            width: 113px;
            height: 28px;
        }
        .style18
        {
            height: 29px;
        }
        .style19
        {
            width: 109px;
            height: 29px;
        }
        .style20
        {
            width: 234px;
            height: 29px;
        }
        .style21
        {
            width: 113px;
            height: 29px;
        }
        .style22
        {
            height: 29px;
        }
        .style23
        {
            height: 16px;
        }
        .style24
        {
            height: 18px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<span class="style2" dir="rtl">&nbsp;&nbsp;&nbsp;&nbsp; 
        Class Information</span><asp:Panel ID="Panel3" runat="server" BackColor="Lime" Height="1px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <code>
            <asp:Label ID="lblmassage" runat="server" 
                
                
                style="color: #008000; font-size: large; font-weight: 700; font-family: 'Times New Roman', Times, serif"></asp:Label>
            </code>
        </asp:Panel>
        <br />
        &nbsp;<table class="style3">
            <tr>
                <td class="style23" bgcolor="Lime" colspan="5">
                    </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style19">
                    Search By Name</td>
                <td class="style20">
                <asp:DropDownList ID="drpClassName" runat="server" Height="28px" 
                    style="margin-bottom: 7px" Width="202px">
                </asp:DropDownList>
                </td>
                <td class="style21">
                <asp:Button ID="btnSearch" runat="server" Text="Search" Width="95px" 
                    Height="30px" />
                </td>
                <td class="style22">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style24" bgcolor="#CC99FF" colspan="5">
                    </td>
            </tr>
            <tr>
                <td class="style18">
                    </td>
                <td class="style19">
        <asp:Label ID="Label1" runat="server" Text="Class ID :"></asp:Label>
                </td>
                <td class="style20">
        <asp:TextBox ID="txtclassID" runat="server" Width="193px"></asp:TextBox>
                </td>
                <td class="style21">
                </td>
                <td class="style22">
                </td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
        <asp:Label ID="Label2" runat="server" Text="Class Name :"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="txtClassName" runat="server" Width="194px"></asp:TextBox>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
        <asp:Label ID="Label3" runat="server" Text="School Name :"></asp:Label>
                </td>
                <td class="style6">
                    <asp:DropDownList ID="dpSchoolName" runat="server" Height="25px" Width="197px">
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
        <asp:Label ID="Label4" runat="server" Text="Part:"></asp:Label>
                </td>
                <td class="style6">
                    <asp:DropDownList ID="DpPart" runat="server" Height="24px" Width="196px">
                        <asp:ListItem>Arabic</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style16">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style7">
                </td>
                <td class="style8">
        <asp:Label ID="Label5" runat="server" Text="Status :"></asp:Label>
                </td>
                <td class="style9">
                    <asp:DropDownList ID="DpStatus" runat="server" Height="24px" Width="196px">
                        <asp:ListItem>Normal</asp:ListItem>
                        <asp:ListItem>Course</asp:ListItem>
                        <asp:ListItem>Crash Course</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style17">
                    &nbsp;</td>
                <td class="style10">
                </td>
            </tr>
            <tr>
                <td class="style5" bgcolor="Lime" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    &nbsp;</td>
                <td class="style4">
            <asp:Button ID="btnNew" runat="server" Text="New" Width="95px" Height="24px" 
                    BorderStyle="Dashed" />
                </td>
                <td class="style6">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="99px" Height="24px" 
                    BorderStyle="Dashed" style="margin-left: 10px" />
            <asp:Button ID="btnClear" runat="server" Text="Clear" Width="99px" Height="24px" 
                    BorderStyle="Dashed" style="margin-left: 15px" />
                </td>
                <td class="style16">
            <asp:Button ID="btnClose" runat="server" Text="Close" Width="99px" Height="24px" 
                    BorderStyle="Dashed" style="margin-left: 3px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <asp:Panel ID="Panel2" runat="server" BackColor="Lime" Height="1px">
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;
        &nbsp;
        &nbsp;
        &nbsp;
        <br />
&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
    </form>
</body>
</html>
