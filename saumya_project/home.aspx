<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="saumya_project.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <style>
     .rightalign
{
float:initial;
}
     h4{
         
     }
     </style>
   <div>
       <h1>Welcome <asp:Label ID="Label9" runat="server" Text="Name"></asp:Label></h1>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:SaumyaTestConnectionString %>' SelectCommand="SELECT [Name], [DOB], [State], [Address], [PIN], [Mobile], [Email], [UserID] FROM [Table_2] WHERE ([ID] = @ID)">
           <SelectParameters>
               <asp:SessionParameter SessionField="ID" Name="ID" Type="Int32"></asp:SessionParameter>
           </SelectParameters>
       </asp:SqlDataSource>
       <h3>User Information</h3>
       <h4><strong>Name: </strong><asp:Label ID="Label1" runat="server" Text="Name" CssClass="rightalign"></asp:Label></h4>
       <h4><strong>DOB: </strong><asp:Label ID="Label2" runat="server" Text="DOB" CssClass="rightalign"></asp:Label> </h4>  
       <h4><strong>State: </strong><asp:Label ID="Label3" runat="server" Text="State" CssClass="rightalign"></asp:Label></h4>
       <h4><strong>Address: </strong><asp:Label ID="Label4" runat="server" Text="Address" CssClass="rightalign"></asp:Label></h4>
       <h4><strong>PIN: </strong><asp:Label ID="Label5" runat="server" Text="PIN" CssClass="rightalign"></asp:Label></h4>
       <h4><strong>Mobile: </strong><asp:Label ID="Label6" runat="server" Text="Mobile" CssClass="rightalign"></asp:Label></h4>
       <h4><strong>Email: </strong><asp:Label ID="Label7" runat="server" Text="Email" CssClass="rightalign"></asp:Label></h4>
       <h4><strong>UserID: </strong><asp:Label ID="Label8" runat="server" Text="UserID" CssClass="rightalign"></asp:Label></h4>
       <br /><br />
       <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="btnEdit" />
       <asp:Button ID="Button2" runat="server" Text="Delete Account" OnClick="btnDelete" />
</div>
</asp:Content>
