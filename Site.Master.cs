using System;
using System.Web;
using System.Web.UI;

namespace KTSAssignment2
{
    public partial class Site : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var settingsFilePath = Server.MapPath("~/Settings.xml");
                var settings = WebsiteSettings.Load(settingsFilePath);

                // Populate Header and Footer from settings
                lblHeaderText.Text = settings.HeaderText;
                lblPhoneNumber.Text = settings.PhoneNumber;
                lblFooterText.Text = settings.FooterText;
                lblVisitorCount.Text = settings.VisitorCount.ToString();

                // Check if the user is authenticated (logged in)
                if (Request.IsAuthenticated)
                {
                    // User is logged in, enable the Admin link
                    hlAdmin.CssClass = ""; // Remove any disabling class
                    hlAdmin.Enabled = true;
                }
                else
                {
                    // User is not logged in, grey out the Admin link
                    hlAdmin.CssClass = "disabled";
                    hlAdmin.Enabled = false;
                }
            }
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
            // Sign the user out of the application
            System.Web.Security.FormsAuthentication.SignOut();

            // Redirect them to the homepage
            Response.Redirect("~/Default.aspx");
        }
    }
}