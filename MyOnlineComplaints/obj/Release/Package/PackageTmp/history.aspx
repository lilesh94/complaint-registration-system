<%@ Page Title="My Online Complaint: History" Language="C#" MasterPageFile="~/users.Master" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="MyOnlineComplaints.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div align="center"><h3>Previous Complaint History</h3></div>
   <br />
    <br />
    Your Complaint History:
    <br />
    <br />
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="complaint_id" DataSourceID="historyData" ForeColor="#333333" GridLines="None" EmptyDataText="You have not registered any complaint!">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="complaint_id" HeaderText="Complaint ID" InsertVisible="False" ReadOnly="True" SortExpression="complaint_id" />
                <asp:BoundField DataField="nature" HeaderText="Nature of Complaint" SortExpression="nature" />
                <asp:BoundField DataField="station" HeaderText="Police Station" SortExpression="station" />
                <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                <asp:BoundField DataField="reg_date" DataFormatString="{0:dd-M-yyyy}" HeaderText="Registered Date" SortExpression="reg_date" />
                <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
        <asp:SqlDataSource ID="historyData" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [complaint_id], [nature], [station], [subject], [reg_date], [status] FROM [complaints] WHERE ([user_id] = @user_id) ORDER BY [complaint_id] DESC">
            <SelectParameters>
                <asp:SessionParameter Name="user_id" SessionField="userid" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
            </div>
    </form>

    </asp:Content>
