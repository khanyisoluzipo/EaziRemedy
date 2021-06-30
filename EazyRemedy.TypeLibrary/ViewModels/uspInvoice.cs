using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EazyRemedy.TypeLibrary.ViewModels
{
    public class uspInvoice
    {
        public int SessionID { get; set; }
        public string ClientName { get; set; }
        public string CareRecipient { get; set; }
        public DateTime Date { get; set; }
        public string hoursWorked { get; set; }
        public string Type { get; set; }
    }
}
