<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wanted-details.aspx.cs" Inherits="MyOnlineComplaints.wanted_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Wanted Details</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong><span class="auto-style2">Wanted Criminal Details</span></strong><br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="400px" Width="400px" />
        <br />
        <br />
        <div align="center">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataSourceID="wantedDetails" ForeColor="#333333" GridLines="None" Height="50px" Width="494px" EmptyDataText="Some Error Occured!" HeaderText="Criminal Details">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                <asp:BoundField DataField="height" HeaderText="Height" SortExpression="height" />
                <asp:BoundField DataField="color" HeaderText="Color" SortExpression="color" />
                <asp:BoundField DataField="special_mark" HeaderText="Special Mark" SortExpression="special_mark" />
                <asp:BoundField DataField="last_seen" HeaderText="Last Seen At" SortExpression="last_seen" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="wantedDetails" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [name], [age], [address], [height], [color], [special_mark], [last_seen] FROM [wanted] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            <br />
            If you know about this person please call us immediately.</div>
    </div>
    </form>
</body>
</html>
