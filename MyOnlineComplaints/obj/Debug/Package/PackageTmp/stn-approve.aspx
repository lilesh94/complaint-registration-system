<%@ Page Title="Approve" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="stn-approve.aspx.cs" Inherits="MyOnlineComplaints.WebForm24" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div align="center"><h3>Approve Stations</h3></div>
    <br />
    <br />
        <div align="center">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id" CellPadding="4" DataSourceID="stations" ForeColor="#333333" OnRowDeleting="OnRowDeleting" OnRowDataBound = "OnRowDataBound" GridLines="None" OnRowCommand="GridView1_RowCommand" Width="563px" AllowPaging="True" EmptyDataText="No New Stations!">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="ID" SortExpression="user_id" />
                <asp:BoundField DataField="user_name" HeaderText="Station Name" SortExpression="user_name" />
                <asp:BoundField DataField="user_email" HeaderText="Station Email" SortExpression="user_email" />
                <asp:BoundField DataField="landline" HeaderText="Phone" SortExpression="landline" />
                <asp:TemplateField HeaderText="Verified" SortExpression="verified">
                    <ItemTemplate><%# (Boolean.Parse(Eval("Verified").ToString())) ? "Yes" : "No" %></ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Approve">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" ImageUrl="~/approve.png" CommandName="Approve" Text="Approve" Height="30px" Width="30px" OnClientClick="return confirm('Are you sure you want to approve?'); " CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" ImageUrl="~/delete-icon.png" Text="Approve" CommandName="Delete" Height="30px" Width="30px" />
                    </ItemTemplate>
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


</div>
        <asp:SqlDataSource ID="stations" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT users.user_id, users.user_name, users.user_email, users.verified, station_details.landline FROM users INNER JOIN station_details ON users.user_id = station_details.user_id WHERE (users.user_type = @user_type) AND (users.verified = @verified)" ProviderName="System.Data.SqlClient">
            <SelectParameters>
                <asp:Parameter DefaultValue="station" Name="user_type" Type="String" />
                <asp:Parameter DefaultValue="False" Name="verified" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </form>


</asp:Content>
