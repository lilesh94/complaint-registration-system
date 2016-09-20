<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showdetails.aspx.cs" Inherits="MyOnlineComplaints.showdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Complaint Details</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <b>Complainant Details</b>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="user" Height="50px" Width="601px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="user_name" HeaderText="Name" SortExpression="user_name" />
                <asp:BoundField DataField="user_email" HeaderText="Email" SortExpression="user_email" />
                <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                <asp:BoundField DataField="alt_mobile" HeaderText="Alternate Mobile" SortExpression="alt_mobile" />
                <asp:BoundField DataField="alt_email" HeaderText="Alternate Email" SortExpression="alt_email" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="aadhar" HeaderText="Aadhar" SortExpression="aadhar" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="user" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT        users.user_name, users.user_email, user_details.gender, user_details.address, user_details.mobile, user_details.alt_mobile, user_details.alt_email, user_details.age, user_details.aadhar

FROM            users INNER JOIN
                         user_details
ON		users.user_id = user_details.user_id
WHERE        (users.user_id = (select user_id from complaints where complaint_id=@id))">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    
        <br />
        <br />
        <b>Complaint Details</b>
        <br />
        <br />

        <br />
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="complaint_id" DataSourceID="complaint" Height="50px" Width="601px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="complaint_id" HeaderText="Complaint ID" InsertVisible="False" ReadOnly="True" SortExpression="complaint_id" />
                <asp:BoundField DataField="nature" HeaderText="Nature" SortExpression="nature" />
                <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                <asp:BoundField DataField="incident_address" HeaderText="Incident Address" SortExpression="incident_address" />
                <asp:BoundField DataField="incident_date" HeaderText="Incident Date" SortExpression="incident_date" />
                <asp:BoundField DataField="complaint" HeaderText="Complaint" SortExpression="complaint" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:BoundField DataField="reg_date" HeaderText="Registered Date" SortExpression="reg_date" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="complaint" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [complaint_id], [nature], [subject], [incident_address], [incident_date], [complaint], [status], [reg_date] FROM [complaints] WHERE ([complaint_id] = @complaint_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="complaint_id" QueryStringField="id" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <input type ="button"  onclick="javascript:window.print()"   value="Print"/>
    </div>
    </form>
</body>
</html>
