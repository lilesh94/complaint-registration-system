<%@ Page Title="Police Station Registration" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="register-station.aspx.cs" Inherits="MyOnlineComplaints.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p>
        <div align="center"><h3>Police Station Registration Form</h3></div></p>
    <br />
    <br />

        <asp:Label ID="Label1" runat="server" Text="Station Name:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 38px" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Address:"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 72px" TextMode="MultiLine" CssClass="textbox" Height="43px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Landline:"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 68px" MaxLength="15" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Invalid Number" ForeColor="Red" ValidationExpression="^\+?[0-9-]{8,13}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Email-ID:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 65px" CssClass="textbox"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid Mail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email Already Registered" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 62px" TextMode="Password" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password length should be 6 to 10" ForeColor="Red" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^(.{6,10})$"></asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 9px" TextMode="Password" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Paasword doesn't match" ForeColor="Red"></asp:CompareValidator>
        <br />
        <br />
        <b>Note</b>: Head office will verify details and will approve your account.<br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
        <br />
        <br />
        <br />
    </form>

</asp:Content>
