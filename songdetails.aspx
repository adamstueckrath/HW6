<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="songdetails.aspx.vb" Inherits="detailsview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SongWebSite %>" SelectCommand="SELECT * FROM [Table] WHERE ([songID] = @songID)" DeleteCommand="DELETE FROM [Table] WHERE [songID] = @songID" InsertCommand="INSERT INTO [Table] ([song], [album], [artist], [releasedate], [notes], [link]) VALUES (@song, @album, @artist, @releasedate, @notes, @link)" UpdateCommand="UPDATE [Table] SET [song] = @song, [album] = @album, [artist] = @artist, [releasedate] = @releasedate, [notes] = @notes, [link] = @link WHERE [songID] = @songID">
        <DeleteParameters>
            <asp:Parameter Name="songID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="song" Type="String" />
            <asp:Parameter Name="album" Type="String" />
            <asp:Parameter Name="artist" Type="String" />
            <asp:Parameter DbType="Date" Name="releasedate" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="link" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="songID" QueryStringField="songID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="song" Type="String" />
            <asp:Parameter Name="album" Type="String" />
            <asp:Parameter Name="artist" Type="String" />
            <asp:Parameter DbType="Date" Name="releasedate" />
            <asp:Parameter Name="notes" Type="String" />
            <asp:Parameter Name="link" Type="String" />
            <asp:Parameter Name="songID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="songID" DataSourceID="SqlDataSource1" Height="50px" Width="1031px">
        <Fields>
            <asp:BoundField DataField="song" HeaderText="Song" SortExpression="song" />
            <asp:BoundField DataField="album" HeaderText="Album" SortExpression="album" />
            <asp:BoundField DataField="artist" HeaderText="Artist" SortExpression="artist" />
            <asp:BoundField DataField="releasedate" HeaderText="Release Date" SortExpression="releasedate" />
            <asp:BoundField DataField="notes" HeaderText="Description" SortExpression="notes" />
            <asp:BoundField DataField="link" HeaderText="Link" SortExpression="link" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
</asp:Content>

