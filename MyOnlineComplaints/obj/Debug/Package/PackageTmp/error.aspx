<%@ Page Title="Error" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="MyOnlineComplaints.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    <p class="auto-style1">
        <strong>Invalid Login OR Unauthorized Access.</strong></p>

    <br />
    <br />
        <img src="Assets/error.jpg" />
</div>
</asp:Content>
