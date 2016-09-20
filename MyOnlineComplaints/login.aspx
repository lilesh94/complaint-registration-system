<%@ Page Title="My Online Complaints: Log In" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MyOnlineComplaints.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div align="center"><h3>Log in to continue!</h3></div>
        <br />
        <br />
        <table>
            <tr>
                <td>
        <asp:Image ID="Image1" runat="server" Height="20px" ImageUrl="Assets/login.png" Width="20px" /></td>
&nbsp;
                <td><asp:Label ID="Label1" runat="server">Login with your registered E-Maill and Password.</asp:Label></td>
           </tr> </table>
        <br />
         <br />
        Email:
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 37px" CssClass="textbox"></asp:TextBox>
        <br />
        <br />
        Password:
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 13px" TextMode="Password" CssClass="textbox"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" />
        <br />
        <br />
        Don't have an account? <a href="register.aspx">Sign Up</a>!<br />
        <br />
</form>
</asp:Content>
