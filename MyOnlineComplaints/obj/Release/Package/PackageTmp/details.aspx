<%@ Page Title="" Language="C#" MasterPageFile="~/users.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="MyOnlineComplaints.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <div align="center"><h3>Submit your personal details.</h3></div>
    <br />
    <b>Before submitting a complaint, you have to submit your personal information in order to help you efficiently!</b>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" HeaderText="Following Error(s) Occured!" />
    <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name:"></asp:Label>
        &nbsp;<asp:Label ID="Label11" runat="server"></asp:Label>
        <br />
        <br />
        
        <asp:Label ID="Label2" runat="server" Text="Gender:"></asp:Label>
        <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal" style="margin-left: 78px">
            <asp:ListItem Selected="True">Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Address:"></asp:Label>
        <asp:TextBox ID="add" runat="server" Height="53px" MaxLength="100" style="margin-left: 119px; resize:none;" TextMode="MultiLine" Rows="5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="add" ErrorMessage="Address is required">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Mobile Number:"></asp:Label>
        &nbsp;<asp:TextBox ID="mob" runat="server" style="margin-left: 70px" MaxLength="10"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="mob" ErrorMessage="Mobile Number Required.">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="mob" ErrorMessage="Invalid Mobile Number" ValidationExpression="^\d{10}$">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Alternate Mobile Number:"></asp:Label>
        <asp:TextBox ID="altmob" runat="server" style="margin-left: 13px" MaxLength="10"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="altmob" ErrorMessage="Invalid Mobile Number." ValidationExpression="^\d{10}$">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="altmob" ErrorMessage="Alternate Mobile Number Required.">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Alternate Email ID:"></asp:Label>
        <asp:TextBox ID="altemail" runat="server" style="margin-left: 54px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="altemail" ErrorMessage="Invalid Email ID." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Date of Birth:"></asp:Label>
        &nbsp;<asp:DropDownList ID="bdate" runat="server" style="margin-left: 30px">
            <asp:ListItem>Date</asp:ListItem>
<asp:ListItem>01</asp:ListItem><asp:ListItem>02</asp:ListItem><asp:ListItem>03</asp:ListItem>
<asp:ListItem>04</asp:ListItem><asp:ListItem>05</asp:ListItem><asp:ListItem>06</asp:ListItem>
<asp:ListItem>07</asp:ListItem><asp:ListItem>08</asp:ListItem><asp:ListItem>09</asp:ListItem>
<asp:ListItem>10</asp:ListItem><asp:ListItem>11</asp:ListItem><asp:ListItem>12</asp:ListItem>
<asp:ListItem>13</asp:ListItem><asp:ListItem>14</asp:ListItem><asp:ListItem>15</asp:ListItem>
<asp:ListItem>16</asp:ListItem><asp:ListItem>17</asp:ListItem><asp:ListItem>18</asp:ListItem>
<asp:ListItem>19</asp:ListItem><asp:ListItem>20</asp:ListItem><asp:ListItem>21</asp:ListItem>
<asp:ListItem>22</asp:ListItem><asp:ListItem>23</asp:ListItem><asp:ListItem>24</asp:ListItem>
<asp:ListItem>25</asp:ListItem><asp:ListItem>26</asp:ListItem><asp:ListItem>27</asp:ListItem>
<asp:ListItem>28</asp:ListItem><asp:ListItem>29</asp:ListItem><asp:ListItem>30</asp:ListItem>
<asp:ListItem>31</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="bmonth" runat="server" style="margin-left: 16px">
            <asp:ListItem>Month</asp:ListItem>
<asp:ListItem>JAN</asp:ListItem><asp:ListItem>FEB</asp:ListItem><asp:ListItem>MAR</asp:ListItem>
<asp:ListItem>APR</asp:ListItem><asp:ListItem>MAY</asp:ListItem><asp:ListItem>JUN</asp:ListItem>
<asp:ListItem>JUL</asp:ListItem><asp:ListItem>AUG</asp:ListItem><asp:ListItem>SEP</asp:ListItem>
<asp:ListItem>OCT</asp:ListItem><asp:ListItem>NOV</asp:ListItem><asp:ListItem>DEC</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="byear" runat="server" style="margin-left: 15px" AutoPostBack="True" OnSelectedIndexChanged="byear_SelectedIndexChanged">
            <asp:ListItem>Year</asp:ListItem>
<asp:ListItem>1978</asp:ListItem><asp:ListItem>1979</asp:ListItem><asp:ListItem>1980</asp:ListItem>
<asp:ListItem>1981</asp:ListItem><asp:ListItem>1982</asp:ListItem><asp:ListItem>1983</asp:ListItem>
<asp:ListItem>1984</asp:ListItem><asp:ListItem>1985</asp:ListItem><asp:ListItem>1986</asp:ListItem>
<asp:ListItem>1987</asp:ListItem><asp:ListItem>1988</asp:ListItem><asp:ListItem>1989</asp:ListItem>
<asp:ListItem>1990</asp:ListItem><asp:ListItem>1991</asp:ListItem><asp:ListItem>1992</asp:ListItem>
<asp:ListItem>1993</asp:ListItem><asp:ListItem>1994</asp:ListItem><asp:ListItem>1995</asp:ListItem>
<asp:ListItem>1996</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="bdate" ErrorMessage="Birth Date Required." InitialValue="Date">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="bmonth" ErrorMessage="Birth Month Required." InitialValue="Month">*</asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="byear" ErrorMessage="Birth Year Required." InitialValue="Year">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label8" runat="server" Text="Age:"></asp:Label>
        <asp:TextBox ID="age" runat="server" Enabled="False" ReadOnly="True" style="margin-left: 85px" Width="57px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label9" runat="server" Text="Aadhar Card Number:"></asp:Label>
        <asp:TextBox ID="aadhar" runat="server" MaxLength="12" style="margin-left: 33px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="aadhar" ErrorMessage="Aadhar Number Required.">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label10" runat="server" Text="Photo:"></asp:Label>
        <asp:FileUpload ID="photo" runat="server" style="margin-left: 36px" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="photo" ErrorMessage="Your Photo Required.">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="photo" ErrorMessage="Invalid file type. Please upload jpg, jpeg or png image." ValidationExpression="^.*\.(jpg|JPG|jpeg|JPEG|png|PNG)$">*</asp:RegularExpressionValidator>
        <br />
        <br />
        <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Reset" runat="server" Text="Reset" />
        <br />
        <br />
        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
    <br />

    </form>

</asp:Content>
