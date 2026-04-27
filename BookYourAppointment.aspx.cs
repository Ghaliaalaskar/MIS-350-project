using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MIS_350_project
{
    public partial class BookYourAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["SelectedTheme"] == null)
                {
                }
            }
        }

        protected void ddlDate_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlTime.Items.Clear();

            if (ddlDate.SelectedValue != "0")
            {
                ddlTime.Items.Add(new ListItem("-- Select Available Time --", "0"));

                ddlTime.Items.Add(new ListItem("04:00 PM - 06:00 PM", "1"));
                ddlTime.Items.Add(new ListItem("07:00 PM - 09:00 PM", "2"));
                ddlTime.Items.Add(new ListItem("10:00 PM - 12:00 AM", "3"));
            }
            else
            {
                
                ddlTime.Items.Add(new ListItem("-- Select Date First --", "0"));
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ddlDate.SelectedValue == "0" || ddlTime.SelectedValue == "0")
            {
                
                return;
            }

            
            string finalDate = ddlDate.SelectedItem.Text;
            string finalTime = ddlTime.SelectedItem.Text;
            string location = txtLocation.Text;
            string notes = txtNotes.Text;
            string theme = Session["SelectedTheme"] != null ? Session["SelectedTheme"].ToString() : "Not Specified";

          
            Session["ConfirmedBooking"] = theme + " on " + finalDate + " at " + finalTime;

            Response.Redirect("AppointmentConfirmed.aspx");
        }

        protected void ddlTime_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}