<%@ Page Title="Welcome" Language="C#" MasterPageFile="~/station.Master" AutoEventWireup="true" CodeBehind="stn-home.aspx.cs" Inherits="MyOnlineComplaints.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
    <p style="font-size: large; text-align: center">
        <strong>Welcome <%= Session["username"].ToString() %> station! </strong></p>
    <br />
    <br />
    <img src="Assets/station.png" height="300px" width="300px"/>
        <br />
    <br />
        <strong><span class="auto-style1">Select left menu options to get started! 
</span></strong> 
</div>
</asp:Content>
