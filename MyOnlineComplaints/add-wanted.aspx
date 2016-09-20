<%@ Page Title="Add Wanted" Language="C#" MasterPageFile="~/station.Master" AutoEventWireup="true" CodeBehind="add-wanted.aspx.cs" Inherits="MyOnlineComplaints.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div align="center"><h3>Add Wanted Criminals</h3></div>
    <br />
    <br />

    Name:<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 54px" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
    <br />
    <br />
    Age:<asp:TextBox ID="TextBox2" runat="server" style="margin-left: 64px" CssClass="textbox"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid age" ForeColor="Red" ValidationExpression="^[1-9][0-9]?$" ControlToValidate="TextBox2"></asp:RegularExpressionValidator>
    <br />
    <br />
    Address:<asp:TextBox ID="TextBox3" runat="server" style="margin-left: 37px" CssClass="textbox"></asp:TextBox>
    <br />
    <br />
    Height:<asp:TextBox ID="TextBox4" runat="server" style="margin-left: 47px" CssClass="textbox"></asp:TextBox>
    <br />
    <br />
    Color:<asp:TextBox ID="TextBox5" runat="server" style="margin-left: 53px" CssClass="textbox"></asp:TextBox>
    <br />
    <br />
    Special Mark:<asp:TextBox ID="TextBox6" runat="server" style="margin-left: 8px" CssClass="textbox"></asp:TextBox>
    <br />
    <br />
    Last Seen:<asp:TextBox ID="TextBox7" runat="server" style="margin-left: 28px" CssClass="textbox"></asp:TextBox>
    <br />
    <br />
    Photo:<asp:FileUpload ID="photo" runat="server" style="margin-left: 50px" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
    <br />
        <br />
    <br />
</form>

</asp:Content>
