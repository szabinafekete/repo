using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

namespace Feladat_04
{
    internal class Program
    {
        private static List<Konyv> _konyvek = new List<Konyv>();
        static void Main(string[] args)
        {
            Beolvasas("adatok.txt");



            //Írjuk ki a képernyőre az össz adatot

            Console.WriteLine("1. feladat:");
            Kiiras();

            //Keressük ki az informatika témajú könyveket és mentsük el őket az informatika.txt állömányba
            List<Konyv> informatikaKonyvek = _konyvek.Where(konyv => konyv.Tema.ToLower() == "informatika")
                                    .ToList();

            Mentes(informatikaKonyvek, "informatika.txt");
            Console.WriteLine("Informatikai konyvek mentese sikeres volt.");



            //Az 1900.txt állományba mentsük el azokat a könyveket amelyek az 1900 -as években íródtak
            List<Konyv> huszadikSzazadKonyvei = _konyvek.Where(konyv => konyv.KiadasiEv >= 1900)
                                                           .Where(konyv => konyv.KiadasiEv < 2000)
                                                           .ToList();

            Mentes(huszadikSzazadKonyvei, "1900.txt");
            Console.WriteLine("A huszadikszazad könyveinek mentése sikeres volt.");

            //Rendezzük az adatokat a könyvek oldalainak száma szerint csökkenő sorrendbe és a sorbarakott.txt állományba mentsük el.
            Mentes(_konyvek.OrderByDescending(konyv => konyv.Oldalszam).ToList(),"sorbarakott.txt");
            Console.WriteLine("A könyvek oldalszám szerinti rendezésének mentése sikeres volt.");

            /*
             „kategoriak.txt” állományba mentse el a könyveket téma szerint. Például:
                Thriller:
	                - könnyv1
	                - könnyv2
                Krimi:
	                - könnyv1
	                - könnyv2
            */
            Dictionary<string, List<Konyv>> temakoronkentiCsoportositas = TemakoronkentiCsoportositas();
            Mentes(temakoronkentiCsoportositas, "kategoriak.txt");

            Console.WriteLine("A könyvek témakörönkénti mentése sikeres volt.");
            Console.ReadKey();
        }
        //adatok beolvasása a megadott fájlból
        private static void Beolvasas(string file)
        {
            Konyv konyv = null;
            string egySorAdatai = string.Empty;
            string[] adatok = null;

            using (FileStream fs = new FileStream(file, FileMode.Open, FileAccess.Read, FileShare.None))
            {
                using (StreamReader sr = new StreamReader(fs, Encoding.UTF7))
                {
                    while (!sr.EndOfStream)
                    {
                        egySorAdatai = sr.ReadLine();
                        adatok = egySorAdatai.Split('\t');

                        konyv = new Konyv();
                        konyv.Vezeteknev = adatok[0];
                        konyv.Keresztnev = adatok[1];
                        konyv.SzuletesiDatum = adatok[2];
                        konyv.Cim = adatok[3];
                        konyv.ISBN = adatok[4];
                        konyv.Kiado = adatok[5];
                        konyv.KiadasiEv = int.Parse(adatok[6]);
                        konyv.Ar = double.Parse(adatok[7]);
                        konyv.Tema = adatok[8];
                        konyv.Oldalszam = int.Parse(adatok[9]);
                        konyv.Honorarium = double.Parse(adatok[10]);

                        _konyvek.Add(konyv);
                    }
                }
            }
        }
        /*private static void Mentes(ICollection<Konyv> konyvek, string file)
        {
            using(FileStream fs = new FileStream(file, FileMode.Create, FileAccess.Write, FileShare.None))
            {
                using(StreamWriter sw = new StreamWriter(fs, Encoding.UTF8))
                { 
                    foreach(Konyv konyv in konyvek)
                    {
                        sw.WriteLine(konyv);
                    }
                }
            }
        }*/
        private static void Mentes(ICollection<Konyv> konyvek, string file)
        {
            List<string> kimenet = new List<string>();
            foreach(Konyv konyv in konyvek)
            {
                kimenet.Add(konyv.ToString());
            }

            File.WriteAllLines(file, kimenet);
        }
        private static void Mentes(Dictionary<string, List<Konyv>> konyvek, string file)
        {
            using (FileStream fs = new FileStream(file, FileMode.Create, FileAccess.Write, FileShare.None))
            {
                using (StreamWriter sw = new StreamWriter(fs, Encoding.UTF8))
                {
                    foreach (KeyValuePair<string, List<Konyv>> item in konyvek)
                    {
                        sw.WriteLine($"{item.Key}:");
                        foreach(Konyv konyv in item.Value)
                        {
                            sw.WriteLine($"\t-{konyv.Cim}");
                        }
                    }
                }
            }
        }
        private static void Kiiras()
        {
            foreach(Konyv konyv in _konyvek)
            {
                Console.WriteLine(konyv);
            }
        }
        private static Dictionary<string, List<Konyv>> TemakoronkentiCsoportositas()
        {
            Dictionary<string, List<Konyv>> szotar = new Dictionary<string, List<Konyv>>();
            List<Konyv> temakorKonyvei = null;
            List<string> temakorok = _konyvek.Select(konyv => konyv.Tema)
                                                .Distinct()
                                                .ToList();

            foreach(string tema in temakorok)
            {
                temakorKonyvei = _konyvek.Where(konyv => konyv.Tema == tema)
                                            .ToList();
                szotar.Add(tema, temakorKonyvei);
            }
            return szotar;
        }

    }
}
