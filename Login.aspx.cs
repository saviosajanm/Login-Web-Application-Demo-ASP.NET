using System;
using System.Configuration;
using System.Web.Security;
using System.Web.UI;

namespace KTSAssignment2
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // No code needed here for loading settings anymore!
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string adminUser = System.Configuration.ConfigurationManager.AppSettings["adminUser"];
            string adminPass = System.Configuration.ConfigurationManager.AppSettings["adminPass"];

            if (txtUsername.Text == adminUser && txtPassword.Text == adminPass)
            {
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(adminUser, false);
            }
            else
            {
                // Display a clear, bold error message upon failure
                lblMessage.Text = "Invalid username or password. Please try again.";
                lblMessage.Font.Bold = true;
            }
        }
    }
}