<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="NEWCRM.details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        .auto-style4 {
            width: 309px;
            height: 40px;
        }
        .auto-style5 {
            height: 40px;
        }
        .auto-style12 {
        height: 898px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <div class="auto-style12" style="background-image: url('image/sea.jpg'); font-size: 18px; color: #FFFFFF; background-repeat: no-repeat;">
        




        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; First Name&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="f_name" runat="server" Height="25px" Width="210px" ReadOnly="True" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; Middle Name&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="m_name" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; Last Name&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="l_name" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; File No&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="file_no" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; Location&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="loc" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; Gender&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="gender" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; District&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="district" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp; Mobile No.</td>
                <td class="auto-style5">
                    <asp:TextBox ID="mob" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; Date of Birth</td>
                <td class="auto-style5">
                    <asp:TextBox ID="dob" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; Address</td>
                <td class="auto-style5">
                    <asp:TextBox ID="addr" runat="server" Width="386px" Columns="150" Height="83px" Rows="150" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp; Witness1 Name</td>
                <td class="auto-style5">
                    <asp:TextBox ID="w1_name" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; Witness1 No.</td>
                <td class="auto-style5">
                    <asp:TextBox ID="w1_no" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; Witness2 Name&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="w2_name" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp; Witness2 No.</td>
                <td class="auto-style5">
                    <asp:TextBox ID="w2_no" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp; Documents&nbsp;</td>
                <td class="auto-style5">
                    <asp:TextBox ID="doc" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp; Application Date</td>
                <td class="auto-style5">
                    <asp:TextBox ID="appdate" runat="server" Height="25px" Width="210px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
        </table>
     
       




    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
       




    </div>
</asp:Content>
