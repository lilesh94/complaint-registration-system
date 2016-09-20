<%@ Page Title="My Online Complaint: Home" Language="C#" MasterPageFile="~/users.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MyOnlineComplaints.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div align="center">
      <h3>  <p>
    Hello 
            <asp:Label ID="Label1" runat="server"></asp:Label>
            ,</p>
        <br />
        <p>
            Welcome to Online Complaints Portal!</h3></p>
           
        <br />
        <p>
          <img src="complaint.png" />
            <br />
            <a href="file-complaints.aspx"><img src="submit-complaint.png" /></a>
        </p>
             </div>
    </form>
</asp:Content>
