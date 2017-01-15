<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Adduser.aspx.cs" Inherits="saumya_project.Adduser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
  
 
}
        .cell
{
text-align:left;
}

.righttextbox
{
float:initial;
}
.rightalign
{
float:right;
}
h4{
    text-align:right;
}
        h5{
    text-align:right;
                    
            }
    
    </style>
<asp:Login ID = "Login1" runat = "server" CssClass="rightalign" OnAuthenticate= "ValidateUser"></asp:Login>
      <asp:Label ID="lblMsg" runat="server" Text=""/>

    <td colspan="2" class="cell">
        
        <h6>Name</h6>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="righttextbox"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter username"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="TextBox1" ID="RegularExpressionValidator1" ValidationExpression="^[\s\S]{0,50}$" runat="server" ErrorMessage="Maximum 50 characters allowed."></asp:RegularExpressionValidator>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:SaumyaTestConnectionString %>' SelectCommand="SELECT * FROM [Table_2]"></asp:SqlDataSource>
        <h6>DOB</h6>
        <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="righttextbox"></asp:TextBox>
        <h6>State</h6>
        <asp:DropDownList ID="State" runat="server" CssClass="righttextbox">
            <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
            <asp:ListItem>Andhra Pradesh</asp:ListItem>
            <asp:ListItem>Arunachal Pradesh</asp:ListItem>
            <asp:ListItem>Assam</asp:ListItem>
            <asp:ListItem>Bihar</asp:ListItem>
            <asp:ListItem>Chandigarh</asp:ListItem>
            <asp:ListItem>Chattisgarh</asp:ListItem>
            <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
            <asp:ListItem>Daman and Diu</asp:ListItem>
            <asp:ListItem>Delhi</asp:ListItem>
            <asp:ListItem>Goa</asp:ListItem>
            <asp:ListItem>Gujarat</asp:ListItem>
            <asp:ListItem>Haryana</asp:ListItem>
            <asp:ListItem>Himachal Pradesh</asp:ListItem>
            <asp:ListItem>Jammu and Kashmir</asp:ListItem>
            <asp:ListItem>Jharkhand</asp:ListItem>
            <asp:ListItem>Karnataka</asp:ListItem>
            <asp:ListItem>Kerala</asp:ListItem>
            <asp:ListItem>Lakshadweep</asp:ListItem>
            <asp:ListItem>Madhya Pradesh</asp:ListItem>
            <asp:ListItem>Maharashtra</asp:ListItem>
            <asp:ListItem>Manipur</asp:ListItem>
            <asp:ListItem>Meghalaya</asp:ListItem>
            <asp:ListItem>Mizoram</asp:ListItem>
            <asp:ListItem>Nagaland</asp:ListItem>
            <asp:ListItem>Orissa</asp:ListItem>
            <asp:ListItem>Pondicherry</asp:ListItem>
            <asp:ListItem>Punjab</asp:ListItem>
            <asp:ListItem>Rajasthan</asp:ListItem>
            <asp:ListItem>Sikkim</asp:ListItem>
            <asp:ListItem>Tamil Nadu</asp:ListItem>
            <asp:ListItem>Tripura</asp:ListItem>
            <asp:ListItem>Uttarakhand</asp:ListItem>
            <asp:ListItem>Uttaranchal</asp:ListItem>
            <asp:ListItem>Uttar Pradesh</asp:ListItem>
            <asp:ListItem>West Bengal</asp:ListItem>
        </asp:DropDownList>
        <h6>Address:</h6>
        <asp:TextBox ID="txtTextArea" runat="server" CssClass="righttextbox" TextMode="MultiLine" />

                <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="txtTextArea" ID="RegularExpressionValidator3" ValidationExpression="^[\s\S]{0,500}$" runat="server" ErrorMessage="Maximum 500 characters allowed."></asp:RegularExpressionValidator>

        <h6>PIN</h6>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="righttextbox"></asp:TextBox>
        <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="TextBox5" ID="RegularExpressionValidator4" ValidationExpression="^[\s\S]{0,6}$" runat="server" ErrorMessage="Maximum 6 characters allowed."></asp:RegularExpressionValidator>
        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
            ControlToValidate="TextBox5" ErrorMessage="Value must be an integer" />
        <h6>Mobile</h6>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="righttextbox"></asp:TextBox>
        <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="TextBox6" ID="RegularExpressionValidator5" ValidationExpression="^[\s\S]{0,15}$" runat="server" ErrorMessage="Maximum 15 characters allowed."></asp:RegularExpressionValidator>

        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer"
            ControlToValidate="TextBox6" ErrorMessage="Value must be an integer" />
        <h6>Email</h6>
        <asp:TextBox ID="TextBox7" runat="server" CssClass="righttextbox"></asp:TextBox>
        <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="TextBox7" ID="RegularExpressionValidator6" ValidationExpression="^[\s\S]{0,50}$" runat="server" ErrorMessage="Maximum 50 characters allowed."></asp:RegularExpressionValidator>
        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox7" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
        <h6>User ID</h6>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="TextBox8" ID="RegularExpressionValidator7" ValidationExpression="^[\s\S]{0,20}$" runat="server" ErrorMessage="Maximum 20 characters allowed."></asp:RegularExpressionValidator>



        <h6>Password</h6>

        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" CssClass="righttextbox"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter passsword"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator Display="Dynamic" ControlToValidate="TextBox2" ID="RegularExpressionValidator2" ValidationExpression="^[\s\S]{0,20}$" runat="server" ErrorMessage="Maximum 20 characters allowed."></asp:RegularExpressionValidator>

        <h6>Confirm Password</h6>
        <asp:TextBox ID="ConfirmPass" runat="server" TextMode="Password" CssClass="righttextbox"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server"
            ControlToValidate="ConfirmPass"
            CssClass="ValidationError"
            ControlToCompare="TextBox2"
            ErrorMessage="No Match"
            ToolTip="Password must be the same" />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
            ErrorMessage="&laquo; (Required)"
            ControlToValidate="ConfirmPass"
            CssClass="ValidationError"
            ToolTip="Compare Password is a REQUIRED field">
        </asp:RequiredFieldValidator>
        <br />
        <br />
    </td>
    <asp:Button ID="Button1" runat="server" OnClick="btnConfirm_Click" Text="Add" />
    <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

</asp:Content>

