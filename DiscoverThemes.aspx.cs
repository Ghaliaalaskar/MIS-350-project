using System;
using System.Web.UI.WebControls;

namespace MIS_350_project
{
    public partial class DiscoverThemes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void GoToDetails(object sender, EventArgs e)
        {
            LinkButton btn = (LinkButton)sender;
            string targetPage = btn.CommandArgument; 
            Response.Redirect(targetPage);
        }
        protected void RedirectToLogin(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}