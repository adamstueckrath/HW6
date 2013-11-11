
Partial Class detailsview
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted

        Dim delSong As String = e.Values("song").ToString()

        lbl_delSong.Text = "The record <span class=deletedsong>" & delSong & "</span> has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")

    End Sub

    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("./Default.aspx")
    End Sub
End Class
