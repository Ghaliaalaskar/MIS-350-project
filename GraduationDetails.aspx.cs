using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MIS_350_project
{
    public partial class GraduationDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookingSelection.aspx");
        }
    }
}