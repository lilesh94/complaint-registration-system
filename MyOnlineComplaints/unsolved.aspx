<%@ Page Title="Unsolved" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="unsolved.aspx.cs" Inherits="MyOnlineComplaints.WebForm28" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div align="center">
        <h3>Unsolved Complaints</h3>
        <br />
        This list contains complaints with other stations
        <br />
        <br />
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="complaint_id" DataSourceID="complaints" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="576px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="complaint_id" HeaderText="Complaint ID" InsertVisible="False" ReadOnly="True" SortExpression="complaint_id" />
                    <asp:BoundField DataField="nature" HeaderText="Nature" SortExpression="nature" />
                    <asp:BoundField DataField="other_station" HeaderText="Station" />
                    <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                    <asp:TemplateField HeaderText="View Details">
                             <ItemTemplate>
                    <a onclick="javascript:window.open('showdetails.aspx?id=<%# Eval("complaint_id")%>','Details','height=500, width=700, scrollbars=yes');" href="#" id="view" >View</a>    
                    
                    
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
        <asp:SqlDataSource ID="complaints" runat="server" ConnectionString="Data Source=LILESH\SQLSERVER;Initial Catalog=myonlinecomplaints;Persist Security Info=True;User ID=sa;Password=12345" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [complaint_id], [nature], [subject], [status], [other_station] FROM [complaints] WHERE ([station] = @station) ORDER BY [complaint_id] DESC">
            <SelectParameters>
                <asp:Parameter DefaultValue="Other" Name="station" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    
    </form>
</asp:Content>
