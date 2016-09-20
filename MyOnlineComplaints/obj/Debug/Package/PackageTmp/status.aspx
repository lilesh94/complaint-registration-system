<%@ Page Title="My Online Complaint: Status" Language="C#" MasterPageFile="~/users.Master" AutoEventWireup="true" CodeBehind="status.aspx.cs" Inherits="MyOnlineComplaints.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
   <div align="center"><h3>Your Complaint Status</h3></div>
    <br />
    <br />
    Your Complaint Status for Last 5 Complaints:

        <br />
        <br />
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="complaint_id" DataSourceID="complaint_status" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="547px" OnRowDeleting="OnRowDeleting" OnRowDataBound = "OnRowDataBound" EmptyDataText="You have not registered any complaints!">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="complaint_id" HeaderText="Complaint ID" InsertVisible="False" ReadOnly="True" SortExpression="complaint_id" />
                <asp:BoundField DataField="nature" HeaderText="Nature of Complaint" SortExpression="nature" />
                <asp:BoundField DataField="station" HeaderText="Police Station" SortExpression="station" />
                <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                <asp:BoundField DataField="reg_date" HeaderText="Registered Date" SortExpression="reg_date" DataFormatString="{0:dd-M-yyyy}" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" CommandName="Delete" ImageUrl="~/delete-icon.png" Text="Delete" />
                    </ItemTemplate>
                    <ControlStyle Height="35px" Width="35px" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="complaint_status" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon   %>" SelectCommand="SELECT TOP 5 [complaint_id], [nature], [station], [subject], [reg_date], [status] FROM [complaints] WHERE ([user_id] = @user_id) ORDER BY [complaint_id] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="user_id" SessionField="userid" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        </div>
    </form>

</asp:Content>
 