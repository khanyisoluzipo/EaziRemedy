using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EazyRemedy.TypeLibrary.Models
{
    public class addReport
    {
        public int? WorkerID { get; set; }
        public int RecipientID { get; set; }
        public DateTime Date { get; set; }
        public int? activityID { get; set; }
        public string hoursWorked { get; set; }
        public string Notes { get; set; }
    }
}
