using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SLK_HUB_WEBAPI.Models
{
    public class EmployeeJourney
    {
        public string empid { get; set; }
        public string name { get; set; }
        public string image { get; set; }
        public string video_link { get; set; }
        public string video_description { get; set; }
        public List<records> records { get; set; }

    }

    public class records
    {
        public bool? highlight { get; set; }
        public bool? star { get; set; }
        public string title { get; set; }
        public string year { get; set; }
    }
   }