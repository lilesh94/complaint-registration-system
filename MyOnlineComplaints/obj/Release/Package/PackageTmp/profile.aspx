<%@ Page Title="My Online Complaint: My Profile" Language="C#" MasterPageFile="~/users.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="MyOnlineComplaints.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div align="center"><h3>My Profile</h3></div>
        <br />
        <br />
        <div align="center">
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="profile" ForeColor="#333333" GridLines="None" Height="50px" Width="545px" EmptyDataText="You have not registered any complaints! Go to File Complaint section to fill details." style="margin-left: 0px" Font-Names="Arial">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="user_name" HeaderText="Name:" SortExpression="user_name" />
                    <asp:BoundField DataField="user_email" HeaderText="Email:" SortExpression="user_email" />
                    <asp:BoundField DataField="gender" HeaderText="Gender:" SortExpression="gender" />
                    <asp:BoundField DataField="address" HeaderText="Address:" SortExpression="address" />
                    <asp:BoundField DataField="mobile" HeaderText="Moile Number:" SortExpression="mobile" />
                    <asp:BoundField DataField="alt_mobile" HeaderText="Alternate Mobile Number:" SortExpression="alt_mobile" />
                    <asp:BoundField DataField="alt_email" HeaderText="Alternate Email ID:" SortExpression="alt_email" />
                    <asp:BoundField DataField="dob" HeaderText="Date of Birth:" SortExpression="dob" DataFormatString="{0:dd-M-yyyy}" />
                    <asp:BoundField DataField="age" HeaderText="Age:" SortExpression="age" />
                    <asp:BoundField DataField="aadhar" HeaderText="Aadhar Number:" SortExpression="aadhar" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" BorderStyle="Solid" BorderWidth="1px" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="profile" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon   %>" SelectCommand="SELECT users.user_name, users.user_email, user_details.gender, user_details.address, user_details.mobile, user_details.alt_mobile, user_details.alt_email, user_details.dob, user_details.age, user_details.aadhar FROM users INNER JOIN user_details ON users.user_id = user_details.user_id WHERE (users.user_id = @user_id)">
                <SelectParameters>
                <asp:SessionParameter Name="user_id" SessionField="userid" Type="Int64" />
            </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
        
    </form>
</asp:Content>
