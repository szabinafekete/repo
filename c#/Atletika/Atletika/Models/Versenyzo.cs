using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Atletika.Models
{
    [Table("Versenyzo")]
    public class Versenyzo
    {
        [Key]
        public int VersID { get; set; }
        public string Nev { get; set; }
        public bool Neme { get; set; }
        public Versenyzo()
        {

        }

        public Versenyzo(int versID, string nev, bool neme)
        {
            VersID = versID;
            Nev = nev;
            Neme = neme;
        }
    }
}
