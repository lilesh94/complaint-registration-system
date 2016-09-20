<%@ Page Title="Wanted" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="wanted.aspx.cs" Inherits="MyOnlineComplaints.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div align="center"><h3>Wanted List</h3></div>
    <br />
        <div align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="wanted" ForeColor="#333333" GridLines="None" Width="571px" AllowPaging="True">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:ImageField DataImageUrlField="photo" DataImageUrlFormatString="wanted/{0}" HeaderText="Photo">
                    <ControlStyle Height="60px" Width="60px" />
                </asp:ImageField>
                <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                <asp:BoundField DataField="last_seen" HeaderText="Last Seen At" SortExpression="last_seen" />
                <asp:TemplateField HeaderText="View Details">
                    <ItemTemplate>
                    <a onclick="javascript:window.open('wanted-details.aspx?id=<%# Eval("id")%>','Details','height=500, width=700, scrollbars=yes');" href="#" id="view" >View</a>    
                    
                    
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
        <asp:SqlDataSource ID="wanted" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT [id], [photo], [name], [age], [last_seen] FROM [wanted] ORDER BY [id] DESC"></asp:SqlDataSource>
    <br />
            </div>
    </form>

</asp:Content>
