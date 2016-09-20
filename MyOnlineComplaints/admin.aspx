<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="MyOnlineComplaints.WebForm30" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <p class="auto-style1">
            <strong>Welcome to Administrator Tools!</strong></p>
        <p class="auto-style1">
            <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="Assets/admin-home.png" Width="500px" />
        </p>
        <p class="auto-style1">
            Select options from left sidebar menu to get started.</p>
    </form>

</asp:Content>
