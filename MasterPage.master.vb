
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        lbl_copy.Text = DateTime.Now.Year
        lbl_date.Text = DateTime.Now.ToLongDateString
    End Sub
End Class

