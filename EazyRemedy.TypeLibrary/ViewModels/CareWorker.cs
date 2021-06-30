using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EazyRemedy.TypeLibrary.ViewModels
{
    public class CareWorker
    {
        public int UserID { get; set; }
        public int WorkerID { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public DateTime DateOfBirth { get; set; }
    }
}
