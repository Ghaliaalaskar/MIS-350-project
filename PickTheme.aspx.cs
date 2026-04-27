using System;
using System.Web.UI.WebControls;

namespace MIS_366_project
{
    public partial class PickTheme : System.Web.UI.Page
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

        protected void GoToBooking(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string themeName = btn.CommandArgument; 

            Session["SelectedTheme"] = themeName;

            Response.Redirect("BookYourAppointment.aspx");
        }
    }
}