<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewData.aspx.cs" Inherits="saumya_project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB"></asp:BoundField>
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State"></asp:BoundField>
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"></asp:BoundField>
                <asp:BoundField DataField="PIN" HeaderText="PIN" SortExpression="PIN"></asp:BoundField>
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString='<%$ ConnectionStrings:SaumyaTestConnectionString %>'
            SelectCommand="SELECT [Name], [DOB], [State], [Address], [PIN], [Mobile], [Email], [UserID] FROM [Table_2]" />
	</div>
    
</asp:Content>
