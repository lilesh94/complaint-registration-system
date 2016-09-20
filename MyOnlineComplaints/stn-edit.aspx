<%@ Page Title="Edit Stations" Language="C#" MasterPageFile="~/station.Master" AutoEventWireup="true" CodeBehind="stn-edit.aspx.cs" Inherits="MyOnlineComplaints.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div align="center"><h3>Edit Profile</h3></div>
    <br />
        Station Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Address:<br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="40px" style="margin-left: 120px" TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
    <br />
        Phone Number: <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 21px" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Phone" ForeColor="Red" ValidationExpression="^\+?[0-9-]{8,13}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Email:
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 79px" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
        <br />
        <br />
        <br />
    <br />
    </form>

</asp:Content>
