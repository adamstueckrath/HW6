Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub tbsearch_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tbsearch.TextChanged

        Dim searchWord As String
        searchWord = "Select * From [Table] where (song Like '%" + tbsearch.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord

    End Sub

    Protected Sub tbsearch2_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tbsearch2.TextChanged

        Dim searchWord As String
        searchWord = "Select * From [Table] where (song Like '%" + tbsearch2.Text.ToString() + "%')"
        SqlDataSource1.SelectCommand = searchWord

    End Sub
End Class
