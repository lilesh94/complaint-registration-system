<%@ Page Title="Banned Users" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="banned-user.aspx.cs" Inherits="MyOnlineComplaints.WebForm27" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div align="center">
        <h3>Banned User</h3>
        <br />
        Approve banned user from here.
    </div>
    <br />
    <br />
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="users" ForeColor="#333333" OnRowCommand="GridView1_RowCommand" GridLines="None" Width="559px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:ImageField DataImageUrlField="photo" DataImageUrlFormatString="photos/{0}" HeaderText="Photo" NullImageUrl="photos/default-img.png">
                    <ControlStyle Height="40px" Width="40px" />
                </asp:ImageField>
                <asp:BoundField DataField="user_id" HeaderText="User ID" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="user_name" HeaderText="Name" SortExpression="user_name" />
                <asp:BoundField DataField="user_email" HeaderText="Email" SortExpression="user_email" />
                <asp:TemplateField HeaderText="Approve">
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" ImageUrl="~/Assets/user-approve.png" CommandName="Approve" Text="Ban" Height="30px" Width="30px" OnClientClick="return confirm('Are you sure you want to approve?'); " CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
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
        <asp:SqlDataSource ID="users" runat="server" ConnectionString="Data Source=LILESH\SQLSERVER;Initial Catalog=myonlinecomplaints;Persist Security Info=True;User ID=sa;Password=12345" ProviderName="System.Data.SqlClient" SelectCommand="SELECT photos.photo, users.user_id, users.user_name, users.user_email FROM users FULL JOIN photos ON users.user_id = photos.user_id WHERE (users.user_type = 'User') AND (users.verified = 'False')"></asp:SqlDataSource>
    </form>

</asp:Content>
