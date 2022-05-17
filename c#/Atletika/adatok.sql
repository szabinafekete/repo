SET IDENTITY_INSERT [Helyszin] ON  
INSERT INTO
	[Helyszin]
	([helyID], [ev], [orszag], [varos])
	VALUES
(1,2000,' Belgium','Gent'),
(2,2002,' Ausztria','Bécs'),
(3,2005,' Spanyolország','Madrid'),
(4,2007,' Nagy-Britannia','Birmingham'),
(5,2009,' Olaszország','Torino'),
(6,2011,' Franciaország','Párizs'),
(7,2013,' Svédország','Göteborg'),
(8,2015,' Csehország','Prága'),
(9,2017,' Szerbia','Belgrád'),
(10,2019,' Nagy-Britannia','Glasgow'),
(11,2021,' Lengyelország','Toruń')
SET IDENTITY_INSERT [Helyszin] OFF  

SET IDENTITY_INSERT [Versenyzo] ON  
INSERT INTO
	[Versenyzo]
	([versID], [nev], [neme])
 VALUES
(1,'Szögi István',1),
(2,'Jankovics Dániel',1),
(3,'Krizsán Xénia',0),
(4,'Kozák Luca',0),
(5,'Nemes Rita',0),
(6,'Márton Anita',0),
(7,'Kerekes Gréta',0),
(8,'Farkas Györgyi',0),
(9,'Baji Balázs',1),
(10,'Szabó Barbara',0),
(11,'Kürty Lajos',1),
(12,'Takács Dávid',1),
(13,'Bene Barnabás',1),
(14,'Zsivoczky Attila',1),
(15,'Papp Krisztina',0),
(16,'Győrffy Dóra',0),
(17,'Ajkler Zita',0),
(18,'Korányi Balázs',1),
(19,'Németh Roland',1),
(20,'Czingler Zsolt',1),
(21,'Szabó Ambrus',1),
(22,'Vaszi Tünde',0),
(23,'Tölgyesi Péter',1);
SET IDENTITY_INSERT [Versenyzo] OFF 

INSERT INTO
	[Eredmenyek]
	([helyID], [versID],[Vsenyszam],[helyezes])
VALUES
(1,18,'800 m',3),
(1,14,'hétpróba',4),
(1,20,'hármasugrás',4),
(1,19,'60 m',5),
(1,22,'távolugrás',5),
(1,21,'hármasugrás',7),
(1,17,'távolugrás',NULL),
(2,16,'magasugrás',2),
(2,14,'hétpróba',5),
(2,11,'hétpróba',6),
(2,17,'távolugrás',6),
(2,22,'rúdugrás',NULL),
(3,14,'hétpróba',5),
(3,15,'3000 m',6),
(3,23,'hármasugrás',7),
(3,22,'távolugrás',NULL),
(4,13,'1500 m',5),
(4,12,'800 m',6),
(5,11,'súlylökés',5),
(5,6,'súlylökés',NULL),
(5,9,'60 m gát',NULL),
(5,12,'800 m',NULL),
(5,13,'1500 m',NULL),
(6,6,'súlylökés',5),
(6,9,'60 m gát',NULL),
(6,11,'súlylökés',NULL),
(7,9,'60 m gát',8),
(7,6,'súlylökés',NULL),
(8,6,'súlylökés',1),
(8,8,'ötpróba',6),
(8,9,'60 m gát',7),
(8,10,'magasugrás',8),
(9,6,'súlylökés',1),
(9,8,'ötpróba',3),
(9,3,'ötpróba',4),
(9,4,'60 m gát',NULL),
(9,7,'60 m gát',NULL),
(9,9,'60 m gát',NULL),
(10,6,'súlylökés',3),
(10,7,'60 m gát',5),
(10,3,'ötpróba',7),
(10,4,'60 m gát',NULL),
(11,3,'ötpróba',3),
(11,5,'ötpróba',6),
(11,1,'1500 m',8),
(11,2,'magasugrás',8),
(11,4,'60 m gát',8),
(11,7,'60 m gát',NULL),
(11,9,'60 m gát',NULL)
