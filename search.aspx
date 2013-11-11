<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SongWebSite %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
    
    <br />

    &nbsp;&nbsp;&nbsp;

    <%If Not IsPostBack Then%>

        <asp:Label ID="lbl_searchbar" runat="server" Text="Search for a song by name: "></asp:Label>
        <asp:TextBox ID="tbsearch" runat="server" BorderStyle="Inset"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbsearch" ErrorMessage="Please enter a song name."></asp:RequiredFieldValidator>

    <br />
    <br />

    <% Else%>

        &nbsp;&nbsp;&nbsp;

        <asp:Label ID="lbl_searchbar2" runat="server" Text="Search for another song by name: "></asp:Label>
        <asp:TextBox ID="tbsearch2" runat="server" BorderStyle="Inset"></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbsearch2" ErrorMessage="Please enter a song name."></asp:RequiredFieldValidator>
    
    <br />
    <br />  
      
    <asp:GridView 
        ID="GridView1" 
        runat="server" 
        HorizontalAlign="Center"
        AutoGenerateColumns="False" 
        DataKeyNames="songID" 
        DataSourceID="SqlDataSource1"
        Gridlines="None"
        CssClass="cssgridview"
        >
        <Columns>
            <asp:BoundField DataField="song" HeaderText="song" SortExpression="song" />
            <asp:BoundField DataField="album" HeaderText="album" SortExpression="album" />
            <asp:BoundField DataField="artist" HeaderText="artist" SortExpression="artist" />
            <asp:BoundField DataField="releasedate" HeaderText="releasedate" SortExpression="releasedate" />
            <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
            <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
        </Columns>
    </asp:GridView>


    <% End If%>
    <br />
    <br />    
</asp:Content>

