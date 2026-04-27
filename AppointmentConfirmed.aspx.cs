using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MIS_350_project
{
    public partial class AppointmentConfirmed : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGoDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("userbookingdetails.aspx");
        }
    }
}