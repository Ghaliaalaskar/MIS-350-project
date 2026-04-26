using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MIS_350_project
{
    public partial class myaccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void updateinfo_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            { Label1.Text = "data updated successfuly"; }
            else { Label1.Text = ""; }
        }

        protected void discard_Click(object sender, EventArgs e)
        {

        }
    }
}