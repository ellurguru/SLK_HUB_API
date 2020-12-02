using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SLK_HUB_WEBAPI.Models
{
    public class CustomerModule
    {
        public string customer { get; set; }
        public string solution { get; set; }
        public string year { get; set; }
        public string slk_champion { get; set; }
        public string slug { get; set; }
        public string title { get; set; }
        public string[] timeline { get; set; }
        public detail detail { get; set; }
        public List<docs> docs { get; set; }
        public List<values> values { get; set; }
        public List<external_links> external_links { get; set; }
        public List<slk_team> slk_team { get; set; }
        public List<client_team> client_team { get; set; }
    }

    public class detail
    {
        public string title { get; set; }
        public string type { get; set; }
        public string summary { get; set; }
        public string[] keywords { get; set; }
    }

    public class external_links
    {
        public string url { get; set; }
        public string text { get; set; }
    }

    public class docs
    {
        public string video { get; set; }
        public string title { get; set; }
        public string tag { get; set; }
    }

    public class values
    {
        public string year { get; set; }
        public string value { get; set; }
        public string about { get; set; }
    }

    public class slk_team
    {
        public string name { get; set; }
        public string designation { get; set; }
        public string email { get; set; }
        public string contact { get; set; }
        public string avatar { get; set; }

    }

    public class client_team
    {
        public string name { get; set; }
        public string designation { get; set; }
        public string email { get; set; }
        public string contact { get; set; }
        public string avatar { get; set; }
    }


}