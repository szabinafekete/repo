using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Feladat_04
{
    public class Konyv
    {
        public string Vezeteknev { get; set; }
        public string Keresztnev { get; set; }
        public string SzuletesiDatum { get; set; }
        public string Cim { get; set; }
        public string ISBN { get; set; }
        public string Kiado { get; set; }
        public int KiadasiEv { get; set; }
        public double Ar { get; set; }
        public string Tema { get; set; }
        public int Oldalszam { get; set; }
        public double Honorarium { get; set; }

        public Konyv()
        {

        }

        public Konyv(string vezeteknev, string keresztnev, string szuletesiDatum, string cim, string iSBN, string kiado, int kiadasiEv, double ar, string tema, int oldalszam, double honorarium)
        {
            Vezeteknev = vezeteknev;
            Keresztnev = keresztnev;
            SzuletesiDatum = szuletesiDatum;
            Cim = cim;
            ISBN = iSBN;
            Kiado = kiado;
            KiadasiEv = kiadasiEv;
            Ar = ar;
            Tema = tema;
            Oldalszam = oldalszam;
            Honorarium = honorarium;
        }

        public override string ToString()
        {
            return $"{ISBN}\n" +
                $"{Vezeteknev}{Keresztnev}\n" +
                $"{Cim}\n" +
                $"{KiadasiEv} {Kiado}\n" +
                $"{Tema}\n" +
                $"oldalszám: {Oldalszam}\n" +
                $"ár: {Ar}\n";
        }
    }
}
