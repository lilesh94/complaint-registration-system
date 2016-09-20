<%@ Page Title="Station Profile" Language="C#" MasterPageFile="~/station.Master" AutoEventWireup="true" CodeBehind="stn-profile.aspx.cs" Inherits="MyOnlineComplaints.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <p><div align="center"><h3>Station Profile</h3></div>
        </p>
        <div align="center">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="StnProfile" Height="50px" Width="460px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="station_name" HeaderText="Name" SortExpression="station_name" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                <asp:BoundField DataField="landline" HeaderText="Landline Number" SortExpression="landline" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
            </div>
    <br />
        <asp:SqlDataSource ID="StnProfile" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [station_name], [address], [email], [landline] FROM [station_details] WHERE ([user_id] = @user_id)">
            <SelectParameters>
                <asp:SessionParameter Name="user_id" SessionField="userid" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    <br />
        <div align="center"><a href="stn-edit.aspx"><img src="Assets/edit.png"</a></div>
    </form>

</asp:Content>
