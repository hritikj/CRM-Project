<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="NEWCRM.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style3 {
            height: 737px;
        }
        .auto-style4 {
            width: 400px;
            height: 360px;
            left: 550px;
            position: relative;
            top: 0px;
            background-color:rgba(0, 0, 0, 0.6);
        }

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 164px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3" style="background-image: url('image/MetalBall.jpg'); color: #7E275C;">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <div class="auto-style4" style="border-color: #FFFFFF; border-style: solid; font-family: 'Lucida Sans', 'Lucida Sans Regular', 
    'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; color: #FFFFFF; font-size: xx-large;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Login<br />
                &nbsp;<table class="auto-style1">
                    <tr>
                        <td class="auto-style2">&nbsp;
                            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Username"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="u_name" runat="server" Height="30px" Width="175px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;
                            <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Password"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="u_passwd" runat="server" Height="30px" TextMode="Password" Width="174px"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BorderStyle="Groove" Font-Names="Arial" Height="39px" OnClick="Button1_Click" Text="Login" Width="121px" />
            &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BorderStyle="Groove" Font-Names="Arial" Height="39px"  Text="SignUp" Width="121px" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
