using System;
using System.IO;

namespace LoginWebApp
{
    public class Global : System.Web.HttpApplication
    {
        // This object is used to prevent multiple sessions from trying to write to the XML file at the exact same time.
        private static readonly object VisitorCounterLock = new object();

        protected void Application_Start(object sender, EventArgs e)
        {
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            lock (VisitorCounterLock)
            {
                var settingsFilePath = Server.MapPath("~/Settings.xml");

                if (File.Exists(settingsFilePath))
                {
                    var settings = WebsiteSettings.Load(settingsFilePath);
                    settings.VisitorCount++;
                    settings.Save(settingsFilePath);
                }
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {
        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {
        }

        protected void Application_Error(object sender, EventArgs e)
        {
        }

        protected void Session_End(object sender, EventArgs e)
        {
        }

        protected void Application_End(object sender, EventArgs e)
        {
        }
    }
}