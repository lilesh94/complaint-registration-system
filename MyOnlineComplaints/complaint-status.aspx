<%@ Page Title="Complaint Status" Language="C#" MasterPageFile="~/station.Master" AutoEventWireup="true" CodeBehind="complaint-status.aspx.cs" Inherits="MyOnlineComplaints.WebForm22" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div align="center"><h3>Complaint Status</h3></div>
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="complaint_id" DataSourceID="complaints" ForeColor="#333333" GridLines="None" OnRowUpdating="update_status" Width="576px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="complaint_id" HeaderText="Complaint ID" InsertVisible="False" ReadOnly="True" SortExpression="complaint_id" />
            <asp:BoundField DataField="nature" HeaderText="Nature" SortExpression="nature" ReadOnly="True" />
            <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" ReadOnly="True" />
            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
            <asp:TemplateField HeaderText="Edit" ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
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
   
    <asp:SqlDataSource ID="complaints" runat="server" ConnectionString="Data Source=LILESH\SQLSERVER;Initial Catalog=myonlinecomplaints;Persist Security Info=True;User ID=sa;Password=12345" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [complaint_id], [nature], [subject], [status] FROM [complaints] WHERE ([station] = @station) ORDER BY [complaint_id] DESC" UpdateCommand="update complaints set status=@status where complaint_id=@complaint_id">
        <SelectParameters>
            <asp:SessionParameter Name="station" SessionField="username" Type="String" />
        </SelectParameters>
        <UpdateParameters>
        <asp:Parameter Name="status" Type="String" />
        <asp:Parameter Name="complain_id" Type="String" />
        
    </UpdateParameters>  
    </asp:SqlDataSource>
</form>

</asp:Content>
