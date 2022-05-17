using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atletika.Models
{
    [Table("Eredmenyek")]
    public class Eredmenyek
    {
        [ForeignKey("Helyszin")]
        public int HelyID { get; set; }
        public virtual Helyszin Helyszin { get; set; }

        [ForeignKey("Versenyzo")]
        public int VersID { get; set; }
        public virtual Versenyzo Versenyzo { get; set; }

        public string Vsenyszam { get; set; }
        public int? Helyezes { get; set; }


        public Eredmenyek()
        {

        }

        public Eredmenyek(int helyID, int versID, string vsenyszam, int helyezes)
        {
            HelyID = helyID;
            VersID = versID;
            Vsenyszam = vsenyszam;
            Helyezes = helyezes;
        }
    }
}
