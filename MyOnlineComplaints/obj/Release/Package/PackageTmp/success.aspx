<%@ Page Title="My Online Complaint: Success" Language="C#" MasterPageFile="~/users.Master" AutoEventWireup="true" CodeBehind="success.aspx.cs" Inherits="MyOnlineComplaints.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <p>
        Your Complaint Registerd Sucessfully.</p>
    <p>
        &nbsp;</p>
    <p>
        Complaint ID:&nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</asp:Content>
