<%@ Page Title="My Online Complaint: Register" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="MyOnlineComplaints.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div align="center"><h3>Register for lodging complaint online</h3>
    <br /> </div>
    <form id="form1" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="Following Errors Occured" BorderStyle="Outset" BorderWidth="1px" ForeColor="#FF3300" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        :
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 48px" MaxLength="30" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is required." SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Name" ValidationExpression="^[a-zA-Z\s]+$">*</asp:RegularExpressionValidator>
        <br />
        <br />
        Email ID:
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 32px" TextMode="Email" MaxLength="30" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email Required" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email Already Exist" OnServerValidate="CustomValidator2_ServerValidate">*</asp:CustomValidator>
        <br />
        <br />
        Password:
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 28px" TextMode="Password" MaxLength="10" CssClass="textbox" Height="15px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password Required" SetFocusOnError="True">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password length should be 6 to 10 " ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^(.{6,10})$" SetFocusOnError="True">*</asp:RegularExpressionValidator>
        <br />
        <br />
        Confirm Password:
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 14px" TextMode="Password" MaxLength="10" CssClass="textbox"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Password doesn't match." SetFocusOnError="True">*</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please confirm password" SetFocusOnError="True" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
        &nbsp; I agree to the <a href="disclaimer.aspx">Disclaimer</a>
        <asp:CustomValidator ID="CustomValidator1" runat="server" OnServerValidate="cValidator" ErrorMessage="Please agree to Disclaimer">*</asp:CustomValidator>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Sign Up" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2" runat="server" Text="Reset" CausesValidation="False" OnClick="Button2_Click" />
        <br />
        
        <br />
        <br />
        Already have an account? <a href="login.aspx">Sign In</a>!<br />
        <br />
        Police Stations can register <a href="register-station.aspx">Here</a>.</form>
    </asp:Content>
