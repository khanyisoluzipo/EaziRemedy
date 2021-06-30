using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EazyRemedy.TypeLibrary.ViewModels
{
    public class uspCareReports
    {
        public int SessionID { get; set; }
        public string FullName { get; set; }
        public DateTime Date { get; set; }
        public string Type { get; set; }
        public string hoursWorkerd { get; set; }
        public string Notes { get; set; }
    }
}
