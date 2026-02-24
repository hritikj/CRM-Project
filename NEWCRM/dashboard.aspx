<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="NEWCRM.css.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 898px;
    }
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" runat="server">
    <div class="auto-style1" style="font-size: 25px; color: #FFFFFF; background-image: url('image/sea.jpg'); background-attachment: fixed;">

        <br />
        &nbsp;&nbsp;&nbsp; Client Name&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="search_text" runat="server"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/download.png" OnClick="ImageButton1_Click" Width="23px" />
        <br />
        <br />
        <asp:GridView ID="dashboard12" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" Width="1517px" Font-Size="25px" Height="101px" OnSelectedIndexChanged="dashboard12_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="First_Name" HeaderText="First Name" />
                <asp:BoundField DataField="Middle_Name" HeaderText="Middle Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" />
                <asp:BoundField DataField="Location" HeaderText="Location" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" />
                <asp:BoundField DataField="District" HeaderText="District" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile No." />
                <asp:BoundField DataField="Date_of_Birth" FooterStyle-BorderWidth="400px" HeaderText="Date of Birth" >
<FooterStyle BorderWidth="400px"></FooterStyle>
                </asp:BoundField>
                <asp:BoundField DataField="File_No" HeaderText="File No" />
                
                <asp:CommandField SelectText="View" ShowSelectButton="True" />
                
            </Columns>
            <EditRowStyle BackColor="#2461BF" Width="150px" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" Width="150px" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [CRM_Details]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

    </div>
</asp:Content>
