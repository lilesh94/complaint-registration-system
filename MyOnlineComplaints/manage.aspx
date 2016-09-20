<%@ Page Title="Manage" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="manage.aspx.cs" Inherits="MyOnlineComplaints.WebForm29" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div align="center"><h3>Manage Stations</h3>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="user_id" DataSourceID="stations" ForeColor="#333333" GridLines="None" OnRowDeleting="OnRowDeleting" OnRowDataBound = "OnRowDataBound" EmptyDataText="No Registered Stations!" AllowPaging="True" Width="567px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="Station ID" InsertVisible="False" ReadOnly="True" SortExpression="user_id" />
            <asp:BoundField DataField="user_name" HeaderText="Name" SortExpression="user_name" />
            <asp:BoundField DataField="user_email" HeaderText="Email" SortExpression="user_email" />
            <asp:TemplateField HeaderText="Verified" SortExpression="verified">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("verified") %>' />
                </EditItemTemplate>
               
                <ItemTemplate><%# (Boolean.Parse(Eval("Verified").ToString())) ? "Yes" : "No" %></ItemTemplate>
                
            </asp:TemplateField>
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
        </div>
    <asp:SqlDataSource ID="stations" runat="server" ConnectionString="Data Source=LILESH\SQLSERVER;Initial Catalog=myonlinecomplaints;Persist Security Info=True;User ID=sa;Password=12345" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [user_id], [user_name], [user_email], [verified] FROM [users] WHERE ([user_type] = @user_type)">
        <SelectParameters>
            <asp:Parameter DefaultValue="station" Name="user_type" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

</form>

</asp:Content>
