<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Students.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 120%;
        }
        .style7
        {
            width: 202px;
        }
        .style9
        {
        }
        .style15
        {
            width: 76px;
        }
        .style16
        {
            width: 194px;
        }
        .style18
        {
            width: 277px;
        }
        .newStyle1
        {
            border-style: double;
            border-width: thin;
        }
        .newStyle2
        {
            border-collapse: separate;
        }
        .style19
        {
            width: 106px;
        }
        .style20
        {
            width: 99px;
        }
        .style21
        {
            width: 119px;
        }
        .style4
        {
            width: 105px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 767px">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <table class="style1" bgcolor="White">
        <tr>
            <td class="style9" align="center" colspan="7">
                <span class="style4" dir="rtl" 
                        style="font-family: 'times New Roman', Times, serif; font-size: 27px; font-weight: normal; font-style: normal; font-variant: small-caps; text-transform: capitalize; color: #0000FF">
                Student Registration</span></td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style7" colspan="3">
                    <asp:Label ID="lblmessage" runat="server" ForeColor="#CC9900" Font-Bold="True" 
                        Font-Size="Larger"></asp:Label>
                </td>
            <td class="style18">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr bgcolor="Lime">
            <td class="style9" colspan="8">
                &nbsp;</td>
        </tr>
        <tr bgcolor="White">
            <td class="style9" colspan="2">
                &nbsp;</td>
            <td class="style9" colspan="2">
                Search By Student Name</td>
            <td class="style9" colspan="2">
                <asp:DropDownList ID="drpStudentName" runat="server" Height="33px" 
                    style="margin-bottom: 7px" Width="288px">
                </asp:DropDownList>
                </td>
            <td class="style9" colspan="2">
                <asp:Button ID="btnSearch" runat="server" Text="Search" Width="95px" 
                    Height="30px" />
                </td>
        </tr>
        <tr bgcolor="#CC99FF">
            <td class="style9" colspan="2" bgcolor="#CC99FF">
                &nbsp;</td>
            <td class="style9" colspan="2">
                &nbsp;</td>
            <td class="style9" colspan="2">
                &nbsp;</td>
            <td class="style9" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style7" colspan="3">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16" rowspan="5">
                    <asp:Image ID="Image1" runat="server" BorderWidth="1px" Height="127px" 
                        ImageUrl="~/Images/1295353122_administrator.png" Width="154px" />
                    </td>
            <td class="style16" rowspan="5">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                <asp:Label ID="Label8" runat="server" Text="Student ID" ForeColor="Black"></asp:Label>
            </td>
            <td class="style7" colspan="3">
                        <asp:TextBox ID="txtStudentID" runat="server" Width="175px"></asp:TextBox>
                        </td>
            <td class="style18">
                <asp:Label ID="Label15" runat="server" Text="Fee Status" ForeColor="Black"></asp:Label>
            </td>
            <td class="style16">
                <asp:DropDownList ID="dpFeeStatus" runat="server" Height="23px" Width="175px" 
                    TabIndex="7">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style21">
                <asp:Label ID="Label9" runat="server" Text="Student Name" ForeColor="Black" 
                    style="direction: ltr"></asp:Label>
            </td>
            <td class="style7" colspan="3">
                        <asp:TextBox ID="txtStudentName" runat="server" Width="285px" Wrap="False" 
                            style="margin-left: 0px" TabIndex="1"></asp:TextBox>
                        </td>
            <td class="style18">
                <asp:Label ID="Label16" runat="server" Text="Sponsor's Name" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td class="style16">
                <asp:DropDownList ID="drpSponsorName" runat="server" Height="23px" Width="175px" 
                    TabIndex="8">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style21">
                <asp:Label ID="Address" runat="server" Text="Address" ForeColor="Black"></asp:Label>
            </td>
            <td class="style7" colspan="3">
                        <asp:TextBox ID="txtAddress" runat="server" Width="287px" TabIndex="2"></asp:TextBox>
                        </td>
            <td class="style18">
                <asp:Label ID="Label17" runat="server" Text="School Name" ForeColor="Black"></asp:Label>
            </td>
            <td class="style16">
                <asp:DropDownList ID="dpSchool" runat="server" Height="23px" Width="175px" 
                    TabIndex="9">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style21">
                <asp:Label ID="Label11" runat="server" Text="Gender" ForeColor="Black"></asp:Label>
            </td>
            <td class="style7" colspan="3">
                        <asp:DropDownList ID="drpGender" runat="server" Height="31px" 
                    Width="176px" TabIndex="3">
                            <asp:ListItem>Select Gender</asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                        </td>
            <td class="style18">
                <asp:Label ID="Label18" runat="server" Text="Class" ForeColor="Black"></asp:Label>
            </td>
            <td class="style16">
                <asp:DropDownList ID="dpClass" runat="server" Height="23px" Width="175px" 
                    TabIndex="10">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style21">
                <asp:Label ID="Label12" runat="server" Text="DOB" ForeColor="Black"></asp:Label>
            </td>
            <td class="style7" colspan="3">
                        <asp:TextBox ID="txtdateofbirth" runat="server" Width="176px" 
                    Wrap="False" TabIndex="4"></asp:TextBox>
                        </td>
            <td class="style18">
                <asp:Label ID="Label19" runat="server" Text="Status" ForeColor="Black"></asp:Label>
            </td>
            <td class="style16">
                <asp:DropDownList ID="dpStudentStatus" runat="server" Height="23px" 
                    Width="175px" TabIndex="11">
                    <asp:ListItem>Enrolled</asp:ListItem>
                    <asp:ListItem>Graduated</asp:ListItem>
                    <asp:ListItem>Dropped</asp:ListItem>
                    <asp:ListItem>Death</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style16">
                &nbsp;&nbsp;&nbsp; <asp:Button ID="btnUpload" runat="server" Text="Upload" 
                    Height="25px" Width="115px" Font-Bold="True" />
            </td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                <asp:Label ID="Label13" runat="server" Text="POB" ForeColor="Black"></asp:Label>
            </td>
            <td class="style7" colspan="3">
                        <asp:TextBox ID="txtplaceofbirth" runat="server" Width="175px" TabIndex="5"></asp:TextBox>
                        </td>
            <td class="style18">
                <asp:Label ID="Label20" runat="server" Text="Registration Date" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="txtRegistrationDate" runat="server" EnableTheming="True" 
                            Height="22px" Width="172px" TabIndex="12"></asp:TextBox>
            </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
                <asp:Label ID="Label14" runat="server" Text="Mother Name" ForeColor="Black"></asp:Label>
            </td>
            <td class="style7" colspan="3">
                        <asp:TextBox ID="txtMotherName" runat="server" style="margin-left: 0px" 
                            Width="175px" TabIndex="6"></asp:TextBox>
                        </td>
            <td class="style18">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" bgcolor="Lime" colspan="8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style21">
            <asp:Button ID="btnNew" runat="server" Text="New" Width="99px" Height="24px" />
            </td>
            <td class="style19">
            <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="99px" 
                    Height="24px" />
            </td>
            <td class="style20">
            <asp:Button ID="btnClear" runat="server" Text="Clear" Width="99px" Height="24px" 
                    style="margin-left: 0px" />
            </td>
            <td class="style15">
                &nbsp;</td>
            <td class="style18">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9" colspan="8">
                &nbsp;</td>
        </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
