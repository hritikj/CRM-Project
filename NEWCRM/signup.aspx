<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="NEWCRM.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
    .auto-style1 {
        height: 898px;
    }

    .auto-style4 {
            width: 400px;
            height: 550px;
            left:550px;
            position: relative;
            top: 90px;
            background-color:rgba(0, 0, 0, 0.6);
        }

         .auto-style5 {
             width: 100%;
         }
         .auto-style9 {
             margin-top: 3px;
             Height:29px; Width:213px;
         }
         .auto-style12 {
             height: 50px;
             width: 236px;
         }
         .auto-style13 {
             height: 50px;
             width: 135px;
         }
         .auto-style14 {
             height: 50px;
             width: 67px;
         }
         </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('image/MetalBall.jpg')">
            <div class="auto-style4" style="border-color: #FFFFFF; font-size: 18px; color: #FFFFFF;">
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <p style="color:white; font-size:25px; align-content:center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SIGN UP</p>
                   <table class="auto-style5">
                       <tr>
                           <td class="auto-style13">&nbsp; Name</td>
                           <td class="auto-style12">
                               <asp:TextBox ID="name" runat="server" Height="29px" Width="213px"></asp:TextBox>
                           </td>
                           <td class="auto-style14">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style13">&nbsp; Email&nbsp;</td>
                           <td class="auto-style12">
                               <asp:TextBox ID="email" runat="server" CssClass="auto-style9" Height="29px" Width="211px"></asp:TextBox>
                           </td>
                           <td class="auto-style14">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style13">&nbsp; Mobile No</td>
                           <td class="auto-style12">
                               <asp:TextBox ID="mob" CssClass="auto-style9" runat="server"></asp:TextBox>
                           </td>
                           <td class="auto-style14">
                               &nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style13">&nbsp; User Name</td>
                           <td class="auto-style12">
                               <asp:TextBox ID="u_name" CssClass="auto-style9" runat="server"></asp:TextBox>
                           </td>
                           <td class="auto-style14">
                               <asp:Label ID="user_label" runat="server"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style13">&nbsp; Password</td>
                           <td class="auto-style12">
                               <asp:TextBox ID="passwd" CssClass="auto-style9" runat="server" TextMode="Password"></asp:TextBox>
                           </td>
                           <td class="auto-style14">&nbsp;</td>
                       </tr>
                       <tr>
                           <td class="auto-style13">&nbsp;Confirm<br />
&nbsp;Password</td>
                           <td class="auto-style12">
                               <asp:TextBox ID="passwd2" CssClass="auto-style9" runat="server" TextMode="Password"></asp:TextBox>
                           </td>
                           <td class="auto-style14">
                               <asp:Label ID="pass_label" runat="server"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td class="auto-style13">&nbsp;Admin Key&nbsp;</td>
                           <td class="auto-style12">
                               <asp:TextBox ID="adminkey" CssClass="auto-style9" runat="server" TextMode="Password"></asp:TextBox>
                           </td>
                           <td class="auto-style14">
                               &nbsp;</td>
                       </tr>
                   </table>
            
                   
                   

                   

            
                   
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="login.aspx" style="color:white;font-size=20px;"> Back To Login</a><br />
                   <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
                   
                   

                   

            
                   
                   <asp:Button ID="Button1" runat="server" BorderStyle="Groove" Font-Names="Arial" Height="39px"  Text="SignUp" Width="121px" OnClick="Button1_Click" />
                   <br />
                   
            </div>
        </div>
    </form>
</body>
</html>
