<%@ Page Title="My Online Complaint: File Complaint" Language="C#" MasterPageFile="~/users.Master" AutoEventWireup="true" CodeBehind="file-complaints.aspx.cs" Inherits="MyOnlineComplaints.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
  
        <div align="center"><h3>File Complaint Here</h3></div>
        
   <br />
        <br />

        <asp:Label ID="Label1" runat="server" Text="Nature of Complaint:"></asp:Label>
        
        <asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 49px">
            <asp:ListItem>Select Complaint Type</asp:ListItem>
            <asp:ListItem>Theft</asp:ListItem>
            <asp:ListItem>Domestic Violence</asp:ListItem>
            <asp:ListItem>Lost Property</asp:ListItem>
            <asp:ListItem>Telephone Misuse</asp:ListItem>
            <asp:ListItem>Cyber Crime</asp:ListItem>
            <asp:ListItem>Alcohol Violation</asp:ListItem>
            <asp:ListItem>Noise Violation</asp:ListItem>
            <asp:ListItem>Credit/Debit Card Theft</asp:ListItem>
            <asp:ListItem>Threatning</asp:ListItem>
            <asp:ListItem>Identity Theft</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Please select complaint type." InitialValue="Select Complaint Type">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Police Station Name:"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 48px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True">Select Police Station</asp:ListItem>
            <asp:ListItem>Mulund</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Please select station name." InitialValue="Select Police Station">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="If Other Please Specify:"></asp:Label>
        <asp:TextBox ID="other_station" runat="server" style="margin-left: 33px" Enabled="False"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Subject:"></asp:Label>
        <asp:TextBox ID="subject" runat="server" style="margin-left: 121px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="subject" ErrorMessage="Please enter subject.">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Incident Address:"></asp:Label>
        <asp:TextBox ID="address" runat="server" style="margin-left: 63px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Incident Date:"></asp:Label>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"
        type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
        rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $('#ContentPlaceHolder1_date').datepicker({
                dateFormat: "dd/mm/yy",
                minDate: new Date(2000, 1 - 1, 1),
                maxDate: '0',
                changeMonth: true,
                changeYear: true
            });
        });
    </script>
        <asp:TextBox ID="date" runat="server" style="margin-left: 84px" Enabled="True"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="date" ErrorMessage="Invalid Date" ValidationExpression="^(?:[012]?[0-9]|3[01])[./-](?:0?[1-9]|1[0-2])[./-](?:[0-9]{2}){1,2}$">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Your Complaint:"></asp:Label>
        <br />
        <asp:TextBox ID="complaint" runat="server" style="margin-left: 170px; resize:none;" TextMode="MultiLine" Height="47px"></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="complaint" ErrorMessage="Please enter your complaint.">*</asp:RequiredFieldValidator>
        
        <br />
        <br />
        <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="reset" runat="server" Text="Reset" />
        <br />
        <br />
        <br />
        
    </form>
</asp:Content>
