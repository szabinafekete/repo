using System.Text;

List<Eredmeny> eredmenyek = new List<Eredmeny>();
Beolvasas();

//hány eredmény van a listában?
Console.WriteLine($"1. feladat: A listában {eredmenyek.Count} eredmeny van.");

//rudugrásban hány első helyezet van?
int rudugrasElsoHelyezetjei = eredmenyek.Where(x => x.Vsenyszam == "rúdugrás")
                                .Where(x => x.Helyezes == 1)
                                .Count();

Console.WriteLine($"2. feladat: A rúdugrásban 1. helyezettek száma: {rudugrasElsoHelyezetjei}.");

//kik versenyeztek már S betűvel kezdődő országban?
List<string> versenyzokSNevuOrszagokban = eredmenyek.Where(x => x.Orszag.Contains('S', StringComparison.Ordinal)) //x.Orszag[0] == "S"
                                                                .Select(s => (s.Nev)).Distinct()
                                                                .ToList();


Console.WriteLine($"3. feladat: S betűvel kezdődő országokban résztvettek:");
foreach (string versenyzo in versenyzokSNevuOrszagokban)
{
    Console.WriteLine($" - {versenyzo}");
}

//sportáganként hány eredmény van a listában?
//Dictionary<string, int> szotar = new Dictionary<string, int>();
//int darabszam = 0;

//List<string> versenyszamok = eredmenyek.Select(x => x.Vsenyszam)
//                                        .Distinct()
//                                        .ToList();

//foreach (string versenyszam in versenyszamok)
//{
//    darabszam = eredmenyek.Count(x => x.Vsenyszam == versenyszam);
//    szotar.Add(versenyszam, darabszam);
//}

//Console.WriteLine($"4.1 feladat: Versenyszámok száma:");
//foreach(KeyValuePair<string,int> elem in szotar)
//{
//    Console.WriteLine($"- {elem.Key}: {elem.Value}");
//}

Console.WriteLine($"4.2 feladat: Versenyszámok száma:");
int darabszam = 0;

List<string> versenyszamok = eredmenyek.Select(x => x.Vsenyszam)
                                        .Distinct()
                                        .ToList();

foreach (string versenyszam in versenyszamok)
{
    darabszam = eredmenyek.Count(x => x.Vsenyszam == versenyszam);
    Console.WriteLine($"- {versenyszam}: {darabszam}");
}



Console.ReadKey();

void Beolvasas()
{
    Eredmeny eredmeny = null;
    string[] egySorAdatai = null;

    string[] allLines = File.ReadAllLines("eredmenyek.txt" , Encoding.UTF8);

    foreach (string line in allLines)
    {
        egySorAdatai = line.Split('\t');

        eredmeny = new Eredmeny();
        eredmeny.Nev = egySorAdatai[0];
        eredmeny.Ev = int.Parse(egySorAdatai[1]);
        eredmeny.Orszag = egySorAdatai[2];
        eredmeny.Varos = egySorAdatai[3];
        eredmeny.Vsenyszam = egySorAdatai[4];
        eredmeny.Helyezes = int.Parse(egySorAdatai[5]);

        eredmenyek.Add(eredmeny);
    }
}
