using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EazyRemedy.TypeLibrary.Models
{
    public class addNotes
    {
        //public int SessionID { get; set; }
        public int RecipientID { get; set; }
        public DateTime Date { get; set; }
        public string Notes { get; set; }
    }
}
