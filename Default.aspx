<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
 
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
    <p>
</p>
<asp:SqlDataSource ID="SongsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SongWebSite %>" SelectCommand="SELECT * FROM [Table]" DeleteCommand="DELETE FROM [Table] WHERE [songID] = @songID" InsertCommand="INSERT INTO [Table] ([song], [album], [artist], [releasedate], [notes], [link]) VALUES (@song, @album, @artist, @releasedate, @notes, @link)" UpdateCommand="UPDATE [Table] SET [song] = @song, [album] = @album, [artist] = @artist, [releasedate] = @releasedate, [notes] = @notes, [link] = @link WHERE [songID] = @songID">
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="songID" DataSourceID="SongsDataSource" Width="1075px">
        <Columns>
            <asp:BoundField DataField="song" HeaderText="Song" SortExpression="song" />
            <asp:BoundField DataField="artist" HeaderText="Artist" SortExpression="artist" />
            <asp:HyperLinkField DataNavigateUrlFields="songID" DataNavigateUrlFormatString="songdetails.aspx?songID={0}" Text="View Details" />
        </Columns>
    </asp:GridView>
        
</asp:Content>

