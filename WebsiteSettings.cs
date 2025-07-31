using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Xml.Serialization;

namespace LoginWebApp
{
    public class WebsiteSettings
    {
        public string HeaderText { get; set; }
        public string FooterText { get; set; }
        public string DefaultPageText1 { get; set; }
        public string DefaultPageText2 { get; set; }
        public string PhoneNumber { get; set; }
        public int VisitorCount { get; set; }

        public void Save(string filePath)
        {
            using (var stream = new StreamWriter(filePath))
            {
                var serializer = new XmlSerializer(typeof(WebsiteSettings));
                serializer.Serialize(stream, this);
            }
        }

        public static WebsiteSettings Load(string filePath)
        {
            if (!File.Exists(filePath)) return new WebsiteSettings();

            using (var stream = new StreamReader(filePath))
            {
                var serializer = new XmlSerializer(typeof(WebsiteSettings));
                return (WebsiteSettings)serializer.Deserialize(stream);
            }
        }
    }
}