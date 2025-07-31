using System;
using System.Web.UI;

namespace LoginWebApp
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var settingsFilePath = Server.MapPath("~/Settings.xml");
                var settings = WebsiteSettings.Load(settingsFilePath);

                if (Session["AlternatingText"] == null || (int)Session["AlternatingText"] == 2)
                {
                    lblWebpageText.Text = settings.DefaultPageText1;
                    lblWebpageText.CssClass = "alternating-text text-red";
                    Session["AlternatingText"] = 1;
                }
                else
                {
                    lblWebpageText.Text = settings.DefaultPageText2;
                    lblWebpageText.CssClass = "alternating-text text-blue";
                    Session["AlternatingText"] = 2;
                }
            }
        }
    }
}