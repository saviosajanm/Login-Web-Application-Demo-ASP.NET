using System;
using System.Web.UI;

namespace KTSAssignment2
{
    // The class name "Admin" must match the 'Inherits' attribute in the @Page directive
    public partial class Admin : Page
    {
        private string settingsFilePath;

        protected void Page_Load(object sender, EventArgs e)
        {
            settingsFilePath = Server.MapPath("~/Settings.xml");

            if (!IsPostBack)
            {
                LoadSettings();
            }
        }

        private void LoadSettings()
        {
            var settings = WebsiteSettings.Load(settingsFilePath);
            txtDefaultPageText1.Text = settings.DefaultPageText1;
            txtDefaultPageText2.Text = settings.DefaultPageText2;
            txtHeaderText.Text = settings.HeaderText;
            txtFooterText.Text = settings.FooterText;
            txtPhoneNumber.Text = settings.PhoneNumber;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            var settings = WebsiteSettings.Load(settingsFilePath);

            settings.DefaultPageText1 = txtDefaultPageText1.Text;
            settings.DefaultPageText2 = txtDefaultPageText2.Text;
            settings.HeaderText = txtHeaderText.Text;
            settings.FooterText = txtFooterText.Text;
            settings.PhoneNumber = txtPhoneNumber.Text;

            settings.Save(settingsFilePath);
            lblSaveMessage.Text = "Settings saved successfully!";
        }
    }
}