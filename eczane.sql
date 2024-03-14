use EczaneProjesi

/*create table �lceler(�lceID int not null, �lceADI varchar(30) not null, Primary Key (�lceID))

create table Eczaneler(EczaneID int not null, EczaneADI varchar(30) not null, Adres varchar(150) not null,
Telefon bigint not null, �lceID int not null, Primary Key(EczaneID), Foreign Key(�lceID) REFERENCES �lceler(�lceID))

create table �laclar(�lacID int not null, �la�ADI varchar(30) not null, fiyat int not null, Primary Key(�lacID))

create table Musteriler(MusteriID int not null, Ad varchar(50) not null, Soyad varchar(50) not null, 
Telefon bigint not null, Adres varchar(150) not null, �lacID int not null, Primary Key(MusteriID),
Foreign Key(�lacID) REFERENCES �laclar(�lacID))

create table Tedarikci(TedarikciID int not null, Ad varchar(50) not null, Adres varchar(150) not null,
Telefon bigint not null, Primary Key(TedarikciID))

create table Siparisler(SiparisID int not null, EczaneID int not null, TedarikciID int not null, Siparis_Tarihi date not null,
teslim_tarihi date not null, Primary Key(SiparisID), Foreign Key(EczaneID) REFERENCES Eczaneler(EczaneID),
Foreign Key(TedarikciID) REFERENCES Tedarikci(TedarikciID))

create table SiparisDetay(SDID int not null, SiparisID int not null, �lacID int not null,
Miktar int not null, Fiyat int not null, Primary Key(SDID), Foreign Key(SiparisID) REFERENCES Siparisler(SiparisID),
Foreign Key(�lacID) REFERENCES �laclar(�lacID))

create table Sat�slar(Sat�sID int not null, MusteriID int not null, EczaneID int not null, Sat�s_Tarihi date not null,
Primary Key(Sat�sID), Foreign Key(EczaneID) REFERENCES Eczaneler(EczaneID))

create table Stoklar(StokID int not null, EczaneID int not null, �lacID int not null, Miktar int not null, Primary Key(StokID),
Foreign Key(EczaneID) REFERENCES Eczaneler(EczaneID), Foreign Key (�lacID) REFERENCES �laclar(�lacID))

create table Personeller(PersonelID int not null, Ad varchar(50) not null, Soyad varchar(50) not null, EczaneID int not null
Primary Key(PersonelID), Foreign Key(EczaneID) REFERENCES Eczaneler(EczaneID))

create table Sat�s_Detay(Sat�sDetayID int not null, Sat�sID int not null, �lacID int not null, Miktar int not null,
Fiyat int not null, Primary Key(Sat�sDetayID), Foreign Key(Sat�sID) REFERENCES Sat�slar(Sat�sID),
Foreign Key(�lacID) REFERENCES �laclar(�lacID))



INSERT INTO �lceler(�lceID,�lceADI) VALUES (1, 'Merkez'),(2, 'Ayd�ntepe'),(3, 'Demir�z�')

ALTER TABLE Eczaneler
ADD CONSTRAINT UC_Telefon UNIQUE (Telefon)

INSERT INTO Eczaneler (EczaneID, EczaneADI, Adres, Telefon, �lceID) VALUES (1,'Aymer Eczanesi','�irin Mahallesi, Dr.�lk� G�ney Caddesi No:5 Demir�z� / Bayburt ',04584116363, 3),
(2, 'BAYRAK ECZANES�', 'Cumhuriyet Cd. No:29 69000', '04582119100', 1),
(3, 'B��ra Eczanesi', 'Nihat ��y�ld�z Caddesi, No:11 Merkez / Bayburt',  '04582117180', 1),
(4, 'B�y�k Eczanesi', 'Tuzcuzade Mahallesi, Vali Nihat ��y�ld�z Caddesi No:1/A Merkez / Bayburt', '04582111060', 1),
(5, 'Cemre Eczanesi', '�ingah Mahallesi, Ibni Sina Caddesi, No:34/3 Merkez / Bayburt', '04583333434', 1),
(6, 'Derman Eczanesi', 'Vali Nihat ��y�ld�z Caddesi, Merkez / Bayburt', '04582112159', 1),
(7, 'Fatih Eczanesi', 'Camiikebir Mahallesi, Cumhuriyet Caddesi, No:1/A Merkez / Bayburt', '04582117172',1),
(8, 'Hanecio�lu Eczanesi', '�eyhhayran Mahallesi, Hoca Ahmet Yesevi Caddesi, No:3 Bayburt', '04582226934', 1),
(9, 'Hayat Eczanesi', 'Esentepe Mahallesi, Fatih Sultan Mehmet Caddesi No:1/D Demir�z� / Bayburt', '04584116465', 3),
(10, '�bni Sina Eczanesi', 'Hac� Ali Efendi Mahallesi, �sako�lu Sokak No:55/A Ayd�ntepe / Bayburt', '04583114545', 2),
(11, 'Ihlamur Eczanesi', 'Tuzcuzade Mahallesi, Vali Nihat ��y�ld�z Caddesi, No:56/A Bayburt', '04582223333', 1),
(12, 'I��k Eczanesi', '�eyh Hayran Mahallesi, �air Celali Caddesi, No:21 Merkez / Bayburt', '04582222020', 1),
(13, 'Lokman Eczanesi', 'Kaz�m K�kl� Caddesi No:5 / B-C Merkez / Bayburt', '04582121150', 1),
(14, 'Merkez Eczanesi', 'Sebahatt�n Savac� Caddesi No:23 Merkez / Bayburt', '04582117015',1),
(15, 'Purut Eczanesi', '�eyh Hayran Mahallesi, Cumhuriyet Caddesi No:27-E Bayburt', '04582112211', 1),
(16, 'YENI SA�LIK ECZANES�', 'Hoca Ahmet Yesevi Cd. No:50', '04582112000', 1)


INSERT INTO �laclar (�lacID, �la�ADI, fiyat) VALUES (1, 'Acetaminophen', 101),(2, 'Adderall', 200), (3, 'Amitriptyline', 305),
(4, 'Amlodipine', 47), (5, 'Amoxicillin', 74), (6, 'Ativan', 600), (7, 'Atorvastatin', 63), (8, 'Azithromycin', 800),
(9, 'Baclofen', 900), (10, 'Benadryl', 100), (11, 'Benzonatate', 255), (12, 'Bisoprolol', 98), (13, 'Boniva', 132),
(14, 'Bupropion', 85), (15, 'Buspirone', 1500), (16, 'Bystolic', 1600), (17, 'Celebrex', 1700),
(18, 'Celexa', 181), (19, 'Cephalexin', 50), (20, 'Ciprofloxacin', 421),(21, 'Citalopram', 852),(22, 'Clindamycin', 20),
(23, 'Clonazepam', 51), (24, 'Codeine', 240), (25, 'Colchicine', 2500), (26, 'Concerta', 357), (27, 'Coumadin', 270),
(28, 'Cozaar', 98),(29, 'Crestor', 98),(30, 'Cymbalta', 20),(31, 'Depakote', 51), (32, 'Desyrel', 20), (33, 'Dexilant', 270),
(34, 'Diazepam', 47), (35, 'Diclofenac', 2500);

ALTER TABLE Musteriler ADD CONSTRAINT UC_M�steri UNIQUE (Telefon)

INSERT INTO Musteriler (MusteriID, Ad, Soyad, Telefon, Adres, �lacID) VALUES 
(1, 'Ahmet', 'Y�lmaz', 905551112233, 'Bayburt Cad. No:1', 11), (2, 'Mehmet', 'Kaya', 905552223344, 'Demir�z� Cad. No:10', 22),
(3, 'Ay�e', 'Y�lmaz', 905553334455, 'Ayd�ntepe Bulvar� No:20', 3), (4, 'Fatma', '�elik', 905554445566, 'G�k�edere Mah. Sokak 3', 26),
(5, 'Mehmet', 'Kaya', 905555556677, 'Bayburt Cad. No:5', 5), (6, 'Veli', 'Kara', 905556667788, 'G�k�edere Mah. Sokak 3', 5),
(7, 'Deniz', 'Ko�', 905557778899, 'Yeni�ehir Cad. No:15', 11), (8, 'Zeynep', 'Arslan', 905558889910, 'Dede Korkut Mah. Sokak 2', 27),
(9, 'Murat', 'Uzun', 905559991011, 'So�uksu Bulvar� No:25', 23), (10, 'Can', 'Uzun', 9055510101122, 'Korular Mah. Sokak 4', 23),
(11, 'Can', 'Tekin', 9055511212233, 'Dede Korkut Mah. Sokak 2', 1), (12, 'Deniz', 'Ko�', 9055512323344, 'G�k�edere Mah. Sokak 3', 27),
(13, 'Emre', 'Y�ld�r�m', 9055513434455, 'Gen�osman Cad. No:30', 20), (14, 'Mehmet', 'Kaya', 9055514545566, 'K�rklartepe Mah. Sokak 5', 2),
(15, 'G�khan', '�zt�rk', 9055515656677, 'Korular Mah. Sokak 4', 34);


INSERT INTO Personeller (PersonelID, Ad, Soyad, EczaneID) VALUES (1,'Murat', 'Korkmaz', 1),(2,'Seda', 'T�rk',1),(3,'Seda','Bayrak',1),
(4,'Kurt','Can',2),(5, 'Bar��', 'Deniz', 2),(6, 'Sema', 'Da�', 2),
(7, 'Kadir', 'G�l', 3),(8, 'Murat', 'Kaya', 3), (9, 'Zeynep', 'Y�ld�z', 3), (10, 'Z�lf�', 'Y�ld�z', 3),
(11, 'Ay�e', '�zt�rk', 4),(12, 'Ali', 'Ko�', 4),(13,'Mehmet', 'Ayd�n',4),
(14, 'Fatma', 'Demir', 5),(15, 'Emine', 'Y�lmaz', 5),
(16, 'Sinan', 'Kara', 6),(17, 'G�l', 'Aslan', 6),(18, 'Mustafa', 'Korkmaz', 6),(19, 'Seda', 'T�rk', 6),(20, 'Kemal', 'Ta�', 6),(21, 'Bar��', 'Kurt', 6),
(22, 'Sema', 'G�ne�', 7),(23, 'Kadir', 'Deniz', 7),(24, 'Murat', 'Da�', 7),(25, 'Zeynep', 'G�l', 7),
(26, 'Kemal', 'Ayd�n', 8),(27, 'Demir', '�zt�rk', 8),(28, 'Sinan', 'Ko�', 8),(29, 'G�l', '�ahin', 8),(30, 'Mustafa', 'Demir', 8),
(31, 'Selim', 'Y�ld�r�m', 9),(32, 'Nurcan', 'Ko�', 9),(33, '�brahim', '�ahin', 9),(34, 'G�lay', 'Demir', 9),
(35, 'Yusuf', 'Erdo�an', 10),(36, 'Esra', '�zdemir', 10),(37, 'Cem', 'Y�ld�z', 10),(38, 'Figen', 'Ko�', 10),
(39, '�rem', 'Kurt', 11),(40, 'Onur','Sa�lam', 11),(41, 'B��ra','Y�ld�r�m', 11),(42,'Aslan','Kaplan',11),
(43,'Ege','Can',12),(44, 'Dilara','�ahin',12),(45,'Mesut','Muz',12),(46,'Sibel','Kot',12),(47,'Lale','G�l',12),(48,'Suna','Rahat',12),(49,'Ege','G�l',12),
(50,'Kerem','Solak',13),(51,'Cevat','�apan',13),(52, 'Erdal', 'K�van�', 13),
(53, 'Kerem', 'K�van�', 14),(54, 'Elif', 'Demirel', 14),(55, 'Deniz', 'Ko�', 14),
(56, 'Ceren', '�zt�rk', 15),(57, 'Selin', 'Kaya', 15),(58, 'Kaan', 'Ayd�n', 15),(59, 'Ceren', 'Y�ld�z', 15),(60, 'Bar��', 'Kaya', 15),
(61, 'Ege', 'Ta�', 16),(62, 'Irmak', 'G�ne�', 16),(63, 'Ya�mur', 'Deniz', 16),(64, 'R�zgar', 'Deniz', 16)

INSERT INTO Sat�slar (Sat�sID, MusteriID, EczaneID, Sat�s_Tarihi) VALUES (1, 1, 16, '2023-12-23'),(2, 1, 16, '2023-11-23'),
(3, 2, 15, '2023-10-25'),(4, 3, 15, '2023-10-25'),(5, 4, 15, '2023-10-25'),
(6, 5, 11, '2023-8-14'),(7, 4, 11, '2023-8-8'),(8, 6, 11, '2023-9-5'),
(9, 7, 8, '2023-5-9'),(10, 8, 8, '2023-5-9'),(11, 12, 8, '2023-7-3'),(12, 13, 8, '2023-7-3'),
(13, 9, 5, '2023-6-12'),(14, 15, 5, '2023-1-2'),(15,8,5, '2023-1-2'),(16,1, 15, '2023-11-9'),(17,11,5, '2023-10-4'),
(18, 10, 3, '2023-8-8'),(19, 14, 3, '2023-8-8'),(20, 14,3,'2023-6-3'),
(21, 14,4,'2023-6-3'),(22, 14,4,'2023-6-4'),
(23, 11,6,'2023-6-3'),(24, 1,6,'2023-1-5'),(25, 10,6,'2023-1-3'),(26, 11,6,'2023-3-3'),
(27, 15,7,'2023-2-3'),(28, 9,7,'2023-2-3'),(29, 3,7,'2023-2-2'),
(30,2,9,'2023-4-4'),(31,3,9,'2023-4-4'),
(32,7,10,'2023-3-9'),(33,12,10,'2023-4-6'),(34,7,10,'2023-9-9'),
(35,10,12,'2023-3-9'),(36,14,12,'2023-3-9'),(37,7,12,'2023-3-11'),(38,5,12,'2023-3-11'),
(39,6,13,'2023-2-11'),(40,7,13,'2023-2-11'),(41,7,13,'2023-11-12'),(42,3,13,'2023-5-21'),(43,5,13,'2023-5-21'),
(44,4,14,'2023-5-21'),(45,15,14,'2023-5-21'),(46,2,14,'2023-5-21'),(47,6,14,'2023-12-25'),(48,6,14,'2023-12-27'),
(49,11,1,'2023-12-23'),(50,14,1,'2023-12-23'),(51,3,1,'2023-12-12'),(52,2,1,'2023-10-25'),(53,3,14,'2023-11-17'),
(54,9,2,'2023-5-19'),(55,2,2,'2023-5-19'),(56,4,2,'2023-7-3')


ALTER TABLE Tedarikci
ADD CONSTRAINT C_Tedarikci UNIQUE (Telefon)


insert into Tedarikci values(1,'Y�ld�z Tedarik A�' ,'ankara k�z�lay','903124235423')
insert into Tedarikci values(2,'AY Tedarik AS','istanbul esenyurt','902129637596')
insert into Tedarikci values(3,'Eczac�Ba�� A�','istanbul ba�c�lar','902127539641')
insert into Tedarikci values(4,'Bayburt Tedarik A�','bayburt merkez','904586781937')
insert into Tedarikci values(5,'TEKDAG Tedarik A�','Tekirda� corlu','902826541567')

INSERT INTO Stoklar (StokID, EczaneID, �lacID, Miktar) VALUES
-- �la� 1 i�in
(1,1,1,100),(2,2,1,20),(3,3,1,15),(4,4,1,15),(5,5,1,55),(6,6,1,30),(7,7,1,10),(8,8,1,26),(9,9,1,150),(10,10,1,78),(11,11,1,555),(12,12,1,342),
(13,13,1,98),(14,14,1,3),(15,15,1,88),(16,16,1,88),
-- �la� 2 i�in
(17,1,2,22),(18,2,2,22),(19,3,2,22),(20,4,2,65),(21,5,2,87),(22,6,2,41),(23,7,2,220),(24,8,2,76),(25,9,2,99),(26,10,2,101),(27,11,2,202),(28,12,2,2),
-- �la� 3 i�in
(29,1,3,500),(30,2,3,4),(31,3,3,87),(32,4,3,65),(33,5,3,500),(34,6,3,99),(35,7,3,70),(36,8,3,63),(37,9,3,61),(38,10,3,61),(39,11,3,40),(40,12,3,707),
-- �la� 4 i�in
(41,1,4,74),(42,2,4,74),(43,3,4,95),(44,4,4,95),(45,5,4,95),(46,6,4,86),(47,7,4,7),(48,8,4,11),(49,9,4,21),(50,10,4,31),(51,11,4,69),(52,12,4,36),
(53,13,4,37),(54,14,4,37),(55,15,4,8),(56,16,4,4),
-- �la� 5 i�in
(57, 1, 5, 10),(58, 2, 5, 23),(59, 3, 5, 300),(60, 4, 5, 47),(61, 5, 5, 50),(62, 6, 5, 6),(63, 7, 5, 7),(64, 8, 5, 83),(65, 9, 5, 90), 
(66, 10, 5, 15),(67, 11, 5, 11),(68, 12, 5, 103),(69, 13, 5, 160),(70, 14, 5, 140),(71, 15, 5, 1),(72, 16, 5, 1),
-- �la� 6 i�in
(73, 1, 6, 15),(74, 2, 6, 2),(75, 3, 6, 30),(76, 4, 6, 47),(77, 5, 6, 5),(78, 6, 6, 54),(79, 7, 6, 14),(80, 8, 6, 80),(81, 9, 6, 99),
(82, 10, 6, 10),(83, 11, 6, 110),(84, 12, 6, 23),(85, 13, 6, 46),(86, 14, 6, 1),(87, 15, 6, 53),(88, 16, 6, 61),
-- �la� 7 i�in
(89,1,7,0),(90,2,7,0),(91,3,7,3),(92,4,7,20),(93,5,7,3),(94,6,7,6),(95,7,7,1),(96,8,7,2),(97,9,7,2),
(98,10,7,4),(99,11,7,11),(100,12,7,2),(101,13,7,3), (102,14,7,1),(103,15,7,3), (104,16,7,1),
-- �la� 8 i�in
(105,1,8,1),(106,2,8,2),(107,3,8,3),(108,4,8,4),(109,5,8,5),(110,6,8,6),(111,7,8,7),(112,8,8,8), 
(113,9,8,9),(114,10,8,10),(115,11,8,11),(116,12,8,12),(117,13,8,13),(118,14,8,14),(119,15,8,15),(120,16,8,16),
-- �la� 9 i�in
(121,1,9,90),(122,2,9,9),(123,3,9,50),(124,4,9,10),(125,5,9,2),(126,6,9,50),(127,7,9,30),(128,8,9,100),(129,9,9,45),(130,10,9,65),(131,11,9,74),
(132,12,9,75),(133,13,9,5),(134,14,9,1),(135,15,9,10),(136,16,9,43),
-- �la� 10 i�in
(137,1,10,80),(138,2,10,9),(139,3,10,80),(140,4,10,87),(141,5,10,21),(142,6,10,32),(143,7,10,32),(144,8,10,2),(145,9,10,10),(146,10,10,5),
(147,11,10,3),(148,12,10,2),(149,13,10,8),(150,14,10,78),(151,15,10,99),(152,16,10,35),
-- �la� 11 i�in
(153,1,11,62),(154,2,11,69),(155,3,11,96),(156,4,11,35),(157,5,11,3),(158,6,11,25),(159,7,11,3),(160,8,11,62),(161,9,11,31),(162,10,11,5),
(163,11,11,2),(164,12,11,77),(165,13,11,88),(166,14,11,1),(167,15,11,24),(168,16,11,97),
-- �la� 12 i�in
(169,1,12,53),(170,2,12,52),(171,3,12,11),(172,4,12,11),(173,5,12,100),(174,6,12,1),(175,7,12,122),(176,8,12,13),(177,9,12,13),(178,10,12,112),
(179,11,12,17),(180,12,12,17),(181,13,12,20),(182,14,12,19),(183,15,12,20),(184,16,12,2),
-- �la� 13 i�in
(185,1,13,41),(186,2,13,45),(187,3,13,40),(188,4,13,28),(189,5,13,28),(190,6,13,29),(191,7,13,5),(192,8,13,4),(193,9,13,53),(194,10,13,5),
(195,11,13,29),(196,12,13,33),(197,13,13,89),(198,14,13,151),(199,15,13,77),(200,16,13,3),
-- �la� 14 i�in
(201,1,14,2),(202,2,14,71),(203,3,14,71),(204,4,14,210),(205,5,14,100),(206,6,14,81),(207,7,14,67),(208,8,14,45),(209,9,14,60),(210,10,14,13),
(211,11,14,160),(212,12,14,160),(213,13,14,71),(214,14,14,71),(215,15,14,36),(216,16,14,36),
-- �la� 15 i�in
(217,1,15,8),(218,2,15,45),(219,3,15,45),(220,4,15,45),(221,5,15,99),(222,6,15,99),(223,7,15,14),(224,8,15,15),(225,9,15,10),(226,10,15,5),
(227,11,15,77),(228,12,15,44),(229,13,15,8),(230,14,15,15),(231,15,15,2),(232,16,15,5),
-- �la� 16 i�in
(233,1,16,61),(234,2,16,61),(235,3,16,84),(236,4,16,90),(237,5,16,101),(238,6,16,111),(239,7,16,5),(240,8,16,18),(241,9,16,28),(242,10,16,28),
(243,11,16,6),(244,12,16,6),(245,13,16,1),(246,14,16,19),(247,15,16,200),(248,16,16,155),
-- �la� 17 i�in
(249,1,17,37),(250,2,17,37),(251,3,17,40),(252,4,17,91),(253,5,17,91),(254,6,17,61),(255,7,17,20),(256,8,17,3),(257,9,17,53),(258,10,17,53),
(259,11,17,22),(260,12,17,37),(261,13,17,81),(262,14,17,11),(263,15,17,28),(264,16,17,35),
-- �la� 18 i�in
(265,1,18,94),(266,2,18,70),(267,3,18,94),(268,4,18,90),(269,5,18,105),(270,6,18,105),(271,7,18,15),(272,8,18,13),(273,9,18,140),(274,10,18,68),
(275,11,18,16),(276,12,18,89),(277,13,18,98),(278,14,18,90),(279,15,18,9),(280,16,18,9),
-- �la� 19 i�in
(281,1,19,9),(282,2,19,45),(283,3,19,43),(284,4,19,78),(285,5,19,30),(286,6,19,2),(287,7,19,2),(288,8,19,51),(289,9,19,51),(290,10,19,5),
(291,11,19,23),(292,12,19,32),(293,13,19,87),(294,14,19,1),(295,15,19,2),(296,16,19,3),
-- �la� 20 i�in
(297,1,20,25),(298,2,20,70),(299,3,20,8),(300,4,20,25),(301,5,20,103),(302,6,20,103),(303,7,20,14),(304,8,20,147),(305,9,20,14),(306,10,20,69),
(307,11,20,31),(308,12,20,1),(309,13,20,87),(310,14,20,97),(311,15,20,2),(312,16,20,2),
-- �la� 21 i�in
(313,1,21,5),(314,2,21,5),(315,3,21,40),(316,4,21,75),(317,5,21,30),(318,6,21,29),(319,7,21,205),(320,8,21,125),(321,9,21,140),(322,10,21,7),
(323,11,21,24),(324,12,21,33),(325,13,21,78),(326,14,21,15),(327,15,21,5),(328,16,21,37),
-- �la� 22 i�in
(329,1,22,60),(330,2,22,66),(331,3,22,66),(332,4,22,99),(333,5,22,109),(334,6,22,119),(335,7,22,19),(336,8,22,19),(337,9,22,14),(338,10,22,147),
(339,11,22,161),(340,12,22,7),(341,13,22,7),(342,14,22,7),(343,15,22,230),(344,16,22,210),
-- �la� 23 i�in
(345,1,23,11),(346,2,23,11),(347,3,23,11),(348,4,23,57),(349,5,23,59),(350,6,23,55),(351,7,23,20),(352,8,23,5),(353,9,23,1),(354,10,23,5),
(355,11,23,8),(356,12,23,3),(357,13,23,8),(358,14,23,105),(359,15,23,205),(360,16,23,35),
-- �la� 24 i�in
(361,1,24,8),(362,2,24,8),(363,3,24,88),(364,4,24,91),(365,5,24,91),(366,6,24,110),(367,7,24,111),(368,8,24,13),(369,9,24,10),(370,10,24,10),
(371,11,24,160),(372,12,24,170),(373,13,24,180),(374,14,24,190),(375,15,24,200),(376,16,24,210),
-- �la� 25 i�in
(377,1,25,3),(378,2,25,45),(379,3,25,47),(380,4,25,5),(381,5,25,3),(382,6,25,2),(383,7,25,87),(384,8,25,17),(385,9,25,19),(386,10,25,6),
(387,11,25,9),(388,12,25,31),(389,13,25,89),(390,14,25,69),(391,15,25,96),(392,16,25,57),
-- �la� 26 i�in
(393,1,26,64),(394,2,26,63),(395,3,26,62),(396,4,26,64),(397,5,26,107),(398,6,26,110),(399,7,26,121),(400,8,26,3),(401,9,26,4),(402,10,26,19),
(403,11,26,33),(404,12,26,44),(405,13,26,7),(406,14,26,68),(407,15,26,91),(408,16,26,91),
-- �la� 27 i�in
(409,1,27,89),(410,2,27,89),(411,3,27,98),(412,4,27,58),(413,5,27,59),(414,6,27,79),(415,7,27,91),(416,8,27,93),(417,9,27,97),(418,10,27,49),
(419,11,27,76),(420,12,27,67),(421,13,27,87),(422,14,27,33),(423,15,27,33),(424,16,27,33),
-- �la� 28 i�in
(425,1,28,112),(426,2,28,112),(427,3,28,88),(428,4,28,99),(429,5,28,1),(430,6,28,11),(431,7,28,12),(432,8,28,31),(433,9,28,285),(434,10,28,321),
(435,11,28,57),(436,12,28,305),(437,13,28,301),(438,14,28,301),(439,15,28,207),(440,16,28,217),
-- �la� 29 i�in
(441,1,29,222),(442,2,29,222),(443,3,29,82),(444,4,29,199),(445,5,29,299),(446,6,29,299),(447,7,29,2),(448,8,29,333),(449,9,29,84),(450,10,29,116),
(451,11,29,26),(452,12,29,3),(453,13,29,85),(454,14,29,159),(455,15,29,3),(456,16,29,166),
-- �la� 30 i�in
(457,1,30,266),(458,2,30,266),(459,3,30,87),(460,4,30,97),(461,5,30,1),(462,6,30,1),(463,7,30,1),(464,8,30,135),(465,9,30,16),(466,10,30,264),
(467,11,30,444),(468,12,30,354),(469,13,30,364),(470,14,30,374),(471,15,30,244),(472,16,30,254),
-- �la� 31 i�in
(473,1,31,444),(474,2,31,555),(475,3,31,421),(476,4,31,172),(477,5,31,172),(478,6,31,293),(479,7,31,293),(480,8,31,285),(481,9,31,357),
(482,10,31,655),(483,11,31,369),(484,12,31,331),(485,13,31,189),(486,14,31,153),(487,15,31,252),(488,16,31,357),
-- �la� 32 i�in
(489,1,32,601),(490,2,32,89),(491,3,32,8),(492,4,32,9),(493,5,32,109),(494,6,32,119),(495,7,32,229),(496,8,32,456),(497,9,32,546),(498,10,32,500),
(499,11,32,358),(500,12,32,329),(501,13,32,314),(502,14,32,167),(503,15,32,200),(504,16,32,211),
-- �la� 33 i�in
(505,1,33,57),(506,2,33,457),(507,3,33,409),(508,4,33,57),(509,5,33,38),(510,6,33,38),(511,7,33,288),(512,8,33,575),(513,9,33,305),(514,10,33,471),
(515,11,33,103),(516,12,33,38),(517,13,33,83),(518,14,33,1),(519,15,33,25),(520,16,33,377),
-- �la� 34 i�in
(521,1,34,111),(522,2,34,77),(523,3,34,326),(524,4,34,326),(525,5,34,126),(526,6,34,116),(527,7,34,126),(528,8,34,1),(529,9,34,180),(530,10,34,177),
(531,11,34,1),(532,12,34,1),(533,13,34,19),(534,14,34,19),(535,15,34,20),(536,16,34,21),
-- �la� 35 i�in
(537,1,35,232),(538,2,35,456),(539,3,35,409),(540,4,35,357),(541,5,35,3),(542,6,35,2),(543,7,35,2),(544,8,35,109),(545,9,35,109),(546,10,35,532),
(547,11,35,27),(548,12,35,39),(549,13,35,83),(550,14,35,175),(551,15,35,325),(552,16,35,325)*/


/*insert into Siparisler values(1,1,2,'2023-12-12','2023-12-21')
insert into Siparisler values(2,1,1,'2023-08-24','2023-09-02')
insert into Siparisler values(3,2,4,'2023-09-04','2023-09-18')
insert into Siparisler values(4,2,3,'2023-09-19','2023-09-29')
insert into Siparisler values(5,4,5,'2023-05-09','2023-05-21')
insert into Siparisler values(6,8,4,'2023-05-07','2023-05-19')
insert into Siparisler values(7,5,5,'2023-04-12','2023-04-23')
insert into Siparisler values(8,9,1,'2023-04-01','2023-04-15')
insert into Siparisler values(9,10,4,'2023-07-12','2023-08-01')
insert into Siparisler values(10,11,4,'2023-02-02','2023-02-19')
insert into Siparisler values(11,11,4,'2023-01-04','2023-01-20')
insert into Siparisler values(12,12,5,'2023-03-01','2023-03-27')
insert into Siparisler values(13,9,2,'2023-02-19','2023-03-02')
insert into Siparisler values(14,8,1,'2023-04-03','2023-04-30')
insert into Siparisler values(15,13,2,'2023-03-12','2023-03-29')
insert into Siparisler values(16,14,3,'2023-06-27','2023-07-12')
insert into Siparisler values(17,15,5,'2023-07-09','2023-07-19')
insert into Siparisler values(18,16,3,'2023-04-07','2023-04-27')
insert into Siparisler values(19,15,4,'2023-08-14','2023-08-28')
insert into Siparisler values(20,13,3,'2023-01-12','2023-01-29')
insert into Siparisler values(21,12,4,'2023-11-12','2023-11-30')
insert into Siparisler values(22,14,1,'2023-10-28','2023-11-19')
insert into Siparisler values(23,11,2,'2023-03-17','2023-04-10')
insert into Siparisler values(24,9,3,'2023-03-01','2023-04-01')
insert into Siparisler values(25,3,4,'2023-05-13','2023-05-19')
insert into Siparisler values(26,6,4,'2023-05-01','2023-06-01')
insert into Siparisler values(27,6,1,'2023-12-01','2023-12-19')
insert into Siparisler values(28,7,2,'2023-08-19','2023-08-29')
insert into Siparisler values(29,6,3,'2023-03-11','2023-03-21')
insert into Siparisler values(30,3,4,'2023-01-10','2023-01-30')
insert into Siparisler values(31,2,4,'2023-05-01','2023-06-01')
insert into Siparisler values(32,1,5,'2023-03-16','2023-03-23')
insert into Siparisler values(33,3,1,'2023-05-21','2023-06-11')
insert into Siparisler values(34,5,5,'2023-06-20','2023-06-30')
insert into Siparisler values(35,11,3,'2023-07-23','2023-07-30')



insert into SiparisDetay values (1,1,1,400,40400)
insert into SiparisDetay values (2,2,3,150,45750)
insert into SiparisDetay values (3,3,7,200,12600)
insert into SiparisDetay values (4,4,31,142,7242)
insert into SiparisDetay values (5,5,26,500,178500)
insert into SiparisDetay values (6,6,16,352,563200)
insert into SiparisDetay values (7,7,12,124,12152)
insert into SiparisDetay values (8,8,21,90,76680)
insert into SiparisDetay values (9,9,6,690,414000)
insert into SiparisDetay values (10,10,4,251,11797)
insert into SiparisDetay values (11,11,18,50,9050)
insert into SiparisDetay values (12,12,2,456,91200)
insert into SiparisDetay values (13,13,5,100,7400)
insert into SiparisDetay values (14,14,25,21,52500)
insert into SiparisDetay values (15,15,35,30,75000)
insert into SiparisDetay values (16,16,30,2100,4200)
insert into SiparisDetay values (17,17,23,700,35700)
insert into SiparisDetay values (18,18,19,410,20500)
insert into SiparisDetay values (19,19,11,310,79050)
insert into SiparisDetay values (20,20,32,168,3360)
insert into SiparisDetay values (21,21,15,160,240000)
insert into SiparisDetay values (22,22,13,40,5280)
insert into SiparisDetay values (23,23,9,436,392400)
insert into SiparisDetay values (24,24,8,32,25600)
insert into SiparisDetay values (25,25,4,1000,47000)
insert into SiparisDetay values (26,26,14,400,34000)
insert into SiparisDetay values (27,27,17,300,510000)
insert into SiparisDetay values (28,28,27,100,27000)
insert into SiparisDetay values (29,29,24,50,1200)
insert into SiparisDetay values (30,30,29,46,4508)
insert into SiparisDetay values (31,31,10,149,14900)
insert into SiparisDetay values (32,32,22,236,4720)
insert into SiparisDetay values (33,33,33,212,57240)
insert into SiparisDetay values (34,34,26,345,123165)
insert into SiparisDetay values (35,35,20,630,265230)



INSERT INTO Sat�s_Detay (Sat�sDetayID, Sat�sID, �lacID, Miktar, Fiyat) VALUES
(1,23,12,5,490.00),(2,45,28,3,294.00),(3,12,8,8,6400.00),(4,37,17,2,3400.00),(5,8,4,6,282.00),(6,52,31,4,204.00),(7,14,24,7,1680.00),
(8,34,16,1,1600.00),(9,2,2,9,1800.00),(10,18,33,5,1350.00),(11,49,7,3,189.00),(12,5,19,8,400.00),(13,42,23,2,102.00),(14,28,13,6,792.00),
(15,50,3,4,1220.00),(16,16,20,7,2947.00),(17,21,35,1,2500.00),(18,53,22,9,180.00),(19,9,1,5,505.00),(20,44,29,3,294.00),(21,33,26,8,2856.00),
(22,7,5,2,148.00),(23,31,32,6,120.00),(24,47,14,4,340.00),(25,27,11,7,1785.00),(26,1,30,1,20.00),(27,24,10,9,900.00),(28,39,9,5,4500.00),
(29,35,27,3,810.00),(30,48,25,8,20000.00),(31,41,6,2,1200.00),(32,54,15,6,9000.00),(33,19,18,4,724.00),(34,29,34,7,329.00),(35,25,21,1,852.00),
(36,3,4,9,423.00),(37,10,31,5,255.00),(38,51,25,7,17500.00),(39,13,16,3,4800.00),(40,38,8,8,6400.00),(41,20,1,4,404.00),(42,26,13,6,792.00),
(43,32,26,1,357.00),(44,15,10,2,200.00),(45,40,31,5,255.00),(46,22,18,3,543.00),(47,43,5,8,592.00),(48,11,20,2,842.00),(49,30,9,6,5400.00),
(50,17,3,4,1220.00),(51,36,35,7,17500.00),(52,46,29,1,98.00),(53,55,14,9,765.00),(54,4,6,5,3000.00),(55,6,2,3,600.00),(56,23,27,9,2430.00),
(57,45,24,5,1200.00),(58,12,14,7,595.00),(59,37,16,3,4800.00),(60,8,20,8,3368.00),(61,52,17,4,6800.00),(62,14,5,6,444.00),(63,34,31,1,51.00),
(64,2,13,2,264.00),(65,18,9,5,4500.00),(66,49,35,3,7500.00),(67,5,30,8,160.00),(68,42,29,2,196.00),(69,28,18,6,1086.00),(70,50,15,4,6000.00),
(71,16,3,7,2135.00),(72,21,31,1,51.00),(73,53,16,9,14400.00),(74,9,5,5,370.00),(75,44,30,3,60.00),(76,33,26,8,2856.00),(77,7,8,2,1600.00),
(78,31,35,6,15000.00),(79,47,14,4,340.00),(80,27,11,7,1785.00),(81,1,30,1,20.00),(82,24,10,9,900.00),(83,39,9,5,4500.00),(84,35,27,3,810.00),
(85,48,25,8,20000.00),(86,41,6,2,1200.00),(87,54,15,6,9000.00),(88,19,18,4,724.00),(89,29,34,7,329.00),(90,25,21,1,852.00),(91,3,4,9,423.00),
(92,10,31,5,255.00),(93,51,25,7,17500.00),(94,13,16,3,4800.00),(95,38,8,8,6400.00),(96,20,1,4,404.00),(97,26,13,6,792.00),(98,32,26,1,357.00),
(99,15,10,2,200.00),(100,40,31,5,255.00)*/


/*SELECT Eczaneler.EczaneID, Eczaneler.EczaneADI, Eczaneler.Adres, Eczaneler.Telefon, Eczaneler.�lceID, �lceler.�lceADI
FROM Eczaneler
INNER JOIN �lceler ON Eczaneler.�lceID = �lceler.�lceID;*/

/*SELECT Musteriler.MusteriID, Musteriler.Ad, Musteriler.Soyad, Musteriler.Telefon, Musteriler.Adres, Musteriler.�lacID, �laclar.�la�ADI, �laclar.fiyat
FROM Musteriler
INNER JOIN �laclar ON Musteriler.�lacID = �laclar.�lacID;*/


/*SELECT Siparisler.SiparisID, Siparisler.Siparis_Tarihi, Siparisler.teslim_tarihi, Eczaneler.EczaneID, Eczaneler.EczaneADI, Eczaneler.Adres, Eczaneler.Telefon, Eczaneler.�lceID, Tedarikci.TedarikciID, Tedarikci.Ad, Tedarikci.Adres, Tedarikci.Telefon
FROM Siparisler
INNER JOIN Eczaneler ON Siparisler.EczaneID = Eczaneler.EczaneID
INNER JOIN Tedarikci ON Siparisler.TedarikciID = Tedarikci.TedarikciID;*/

/*SELECT SiparisDetay.SDID, SiparisDetay.Miktar, SiparisDetay.Fiyat, Siparisler.EczaneID, Siparisler.TedarikciID, Siparisler.Siparis_Tarihi, Siparisler.teslim_tarihi, SiparisDetay.SiparisID, SiparisDetay.�lacID, �laclar.�la�ADI, �laclar.fiyat
FROM SiparisDetay
INNER JOIN Siparisler ON SiparisDetay.SiparisID = Siparisler.SiparisID
INNER JOIN �laclar ON SiparisDetay.�lacID = �laclar.�lacID;*/

/*SELECT Sat�slar.Sat�sID, Sat�slar.MusteriID, Sat�slar.Sat�s_Tarihi, Eczaneler.EczaneID, Eczaneler.EczaneADI, Eczaneler.Adres, Eczaneler.Telefon, Eczaneler.�lceID
FROM Sat�slar
INNER JOIN Eczaneler ON Sat�slar.EczaneID = Eczaneler.EczaneID;*/


/*SELECT Stoklar.StokID, Stoklar.Miktar, Eczaneler.EczaneID, Eczaneler.EczaneADI, Eczaneler.Adres, Eczaneler.Telefon, Eczaneler.�lceID, 
Stoklar.�lacID, �laclar.�la�ADI, �laclar.fiyat FROM Stoklar
INNER JOIN Eczaneler ON Stoklar.EczaneID = Eczaneler.EczaneID
INNER JOIN �laclar ON Stoklar.�lacID = �laclar.�lacID;*/

/*SELECT Personeller.PersonelID, Personeller.Ad, Personeller.Soyad, Eczaneler.EczaneID, Eczaneler.EczaneADI, Eczaneler.Adres, Eczaneler.Telefon,
Eczaneler.�lceID FROM Personeller
INNER JOIN Eczaneler ON Personeller.EczaneID = Eczaneler.EczaneID;*/

/*SELECT Sat�s_Detay.Sat�sDetayID, Sat�s_Detay.Miktar, Sat�s_Detay.Fiyat, Sat�slar.MusteriID, Sat�slar.EczaneID, Sat�slar.Sat�s_Tarihi, Sat�s_Detay.Sat�sID, Sat�s_Detay.�lacID, �laclar.�la�ADI, �laclar.fiyat
FROM Sat�s_Detay
INNER JOIN Sat�slar ON Sat�s_Detay.Sat�sID = Sat�slar.Sat�sID
INNER JOIN �laclar ON Sat�s_Detay.�lacID = �laclar.�lacID;*/

--�lceler Tablosu i�in
/*SELECT * FROM �lceler;
SELECT * FROM �lceler WHERE �lceADI = 'Merkez';
SELECT * FROM �lceler ORDER BY �lceADI ASC; --k���kten b�y��e(Adan Zye)
SELECT * FROM �lceler ORDER BY �lceADI DESC; --b�y�kten k����e(Zden Aya)
SELECT COUNT(*) AS Say�, �lceADI FROM �lceler GROUP BY �lceADI; --�l�e ad�n�n tabloda ka� kez bulundu�unu g�sterdik
SELECT * FROM �lceler WHERE �lceADI LIKE 'D%';
SELECT * FROM �lceler WHERE �lceID BETWEEN 1 AND 2;
SELECT �lceID, COUNT(EczaneID) as EczaneSay�s� FROM Eczaneler GROUP BY �lceID ORDER BY EczaneSay�s� DESC;
--UPDATE �lceler SET �lceADI = 'Yeni Merkez' WHERE �lceADI = 'Merkez';
--DELETE FROM �lceler WHERE �lceADI = 'Ayd�ntepe';
-- Subquery sorgusu: �lceADI 'Merkez' olan il�enin �lceID'sini getirir
SELECT �lceID FROM �lceler WHERE �lceADI = (SELECT �lceADI FROM �lceler WHERE �lceADI = 'Merkez');*/
/*GO
CREATE TRIGGER IlceEklemeTrigger
ON �lceler
AFTER INSERT
AS
BEGIN
    DECLARE @IlceID int, @IlceAdi varchar(30);
    SELECT @IlceID = �lceID, @IlceAdi = �lceADI FROM inserted;
    PRINT 'Yeni bir il�e eklendi: ' + @IlceAdi + ' (�l�e ID: ' + CAST(@IlceID AS varchar(10)) + ')';
END;
GO*/
/*INSERT INTO �lceler (�lceID, �lceADI) 
VALUES (4, 'SAMANLIK');*/
/*GO
CREATE VIEW AHarfiIleBaslayanIlceler AS
SELECT �lceID, �lceADI
FROM �lceler
WHERE �lceADI LIKE 'A%';*/
--SELECT * FROM AHarfiIleBaslayanIlceler;
/*GO
CREATE FUNCTION CountDistrictsStartingWith(@letter char(1))
RETURNS int
AS
BEGIN
    DECLARE @count int;
    SELECT @count = COUNT(*)
    FROM �lceler
    WHERE �lceADI LIKE @letter + '%';
    RETURN @count;
END;*/
--SELECT dbo.CountDistrictsStartingWith('A');
/*GO
CREATE PROCEDURE GetDistrictsEndingWith @letter char(1)
AS
BEGIN
    SELECT �lceID, �lceADI
    FROM �lceler
    WHERE �lceADI LIKE '%' + @letter;
END;*/
--EXEC GetDistrictsEndingWith 'z';

/*BEGIN TRANSACTION UpdateDistrictName
BEGIN TRY
    -- �lceID'si 1 olan il�enin ad�n� g�ncelle
    UPDATE �lceler
    SET �lceADI = 'Saraybosna'
    WHERE �lceID = 1;

    -- ��lemi onayla
    COMMIT TRANSACTION UpdateDistrictName;
END TRY
BEGIN CATCH
    -- Hata olu�ursa i�lemi geri al
    ROLLBACK TRANSACTION UpdateDistrictName;
END CATCH;*/
/*UPDATE �lceler
SET �lceADI = 'Merkez'
WHERE �lceID = 1;*/

/*CREATE INDEX idx_�lceADI
ON �lceler (�lceADI);
SELECT i.name AS IndexName, o.name AS TableName
FROM sys.indexes i
JOIN sys.objects o ON i.object_id = o.object_id
WHERE i.name = 'idx_�lceADI' AND o.name = '�lceler';*/



--Eczaneler tablosu i�in


/*IF EXISTS (SELECT * FROM sys.triggers WHERE name = 'EczaneEklemeTrigger')
   DROP TRIGGER EczaneEklemeTrigger;
GO*/ --var olan triggeri silme 

--DELETE FROM Eczaneler WHERE EczaneID IN (17)

/*GO
CREATE TRIGGER EczaneEklemeTrigger
ON Eczaneler
AFTER INSERT
AS
BEGIN
    DECLARE @EczaneID int, @EczaneAdi varchar(30), @IlceID int;
    SELECT @EczaneID = EczaneID, @EczaneAdi = EczaneADI, @IlceID = �lceID FROM inserted;
    PRINT 'Yeni eczane eklendi: ' + @EczaneAdi + ' (Eczane ID: ' + CAST(@EczaneID AS varchar(10)) + ', �l�e ID: ' + CAST(@IlceID AS varchar(10)) + ')';
END;
GO

INSERT INTO Eczaneler (EczaneID, EczaneADI, Adres, Telefon, �lceID) 
VALUES (17, 'Yeni Eczane', 'Yeni Adres', '4572142050', 1)

INSERT INTO Eczaneler (EczaneID, EczaneADI, Adres, Telefon, �lceID) 
VALUES (18, 'D�ld�l Eczane', 'Yeni �i�ek Mahallesi NO:13', '4592842031', 1)*/
--SELECT*FROM Eczaneler

/*UPDATE Eczaneler
SET Telefon = '8878878877'
WHERE EczaneID = 4;

SELECT*FROM Eczaneler*/

--DELETE FROM Eczaneler WHERE EczaneID IN (17,18)
/*SELEcT* FROM Eczaneler
SELECT �lceID, COUNT(*) as EczaneSay�s� FROM Eczaneler GROUP BY �lceID;
SELECT �lceID, COUNT(*) as EczaneSay�s� FROM Eczaneler GROUP BY �lceID HAVING COUNT(*) <5;
SELECT * FROM Eczaneler WHERE EczaneID = ( SELECT MAX(EczaneID) FROM Eczaneler) --subquery var i� i�e sorgu demek*/
/*GO
CREATE VIEW EczaneView AS
SELECT EczaneID, EczaneADI
FROM Eczaneler
GO
SELECT* FROM EczaneView */

/*GO
CREATE FUNCTION getEczaneSayisi (@IlceID int)
RETURNS int 
AS 
BEGIN
    DECLARE @EczaneSayisi int;
    SELECT @EczaneSayisi = COUNT(*) FROM Eczaneler WHERE �lceID = @IlceID;
    RETURN @EczaneSayisi;
END;
GO
SELECT dbo.getEczaneSayisi(1)*/

/*GO
CREATE PROCEDURE InsertIntoEczaneler
    @EczaneID int OUTPUT,
    @EczaneADI varchar(30),
    @Adres varchar(150),
    @Telefon bigint,
    @IlceID int
AS
BEGIN
    INSERT INTO Eczaneler (EczaneID, EczaneADI, Adres, Telefon, �lceID) 
    VALUES (@EczaneID, @EczaneADI, @Adres, @Telefon, @IlceID)
END
GO
DECLARE @MyEczaneID int = 18; -- Burada yeni bir EczaneID de�eri at�yoruz
EXEC InsertIntoEczaneler @EczaneID = @MyEczaneID OUTPUT, @EczaneADI = 'Ya� Eczanesi', @Adres = 'G�l Caddesi NO:9', @Telefon = 1221221221, @IlceID = 2;
SELECT @MyEczaneID as EczaneID;*/

/*BEGIN TRANSACTION
BEGIN TRY
    INSERT INTO Eczaneler (EczaneID, EczaneADI, Adres, Telefon, �lceID) 
    VALUES (17, 'Sar� Eczanesi', 'A Caddesi', 1234567891, 2),
    (18, 'Sak�z Eczanesi', '15 �apka mahalle,', 1234567892, 3);
 COMMIT
END TRY
BEGIN CATCH
    ROLLBACK
END CATCH*/
/*CREATE INDEX idx_Eczaneler_EczaneADI
ON Eczaneler (EczaneADI);
SELECT i.name AS IndexName
FROM sys.indexes i
JOIN sys.objects o ON i.object_id = o.object_id
WHERE o.type = 'U' AND o.name = 'Eczaneler'*/

/*SELECT COUNT(*) FROM Eczaneler;
SELECT �lceID, COUNT(*) FROM Eczaneler GROUP BY �lceID;
SELECT �lceID, COUNT(*) as EczaneSayisi
FROM Eczaneler
GROUP BY �lceID
HAVING COUNT(*) > 5;
SELECT DISTINCT EczaneADI FROM Eczaneler;
SELECT * FROM Eczaneler WHERE EczaneADI LIKE 'L%';*/

--�laclar tablosu i�in

--UPDATE �laclar SET fiyat = 150 WHERE �lacID = 2;
--DELETE FROM �laclar WHERE �lacID = 1;
/*SELECT * FROM �laclar WHERE fiyat > 500;
SELECT * FROM �laclar WHERE fiyat > (SELECT AVG(fiyat) FROM �laclar); 
SELECT �la�ADI, COUNT(*) FROM �laclar GROUP BY �la�ADI HAVING COUNT(*) > 1; 
SELECT �la�ADI, AVG(fiyat) FROM �laclar GROUP BY �la�ADI;
SELECT * FROM �laclar WHERE fiyat BETWEEN 320 AND 550; 
SELECT AVG(fiyat) FROM �laclar;
SELECT SUM(fiyat) FROM �laclar;
SELECT * FROM �laclar ORDER BY fiyat DESC;
SELECT * FROM �laclar ORDER BY �la�ADI;
SELECT DISTINCT �la�ADI FROM �laclar;
SELECT DISTINCT fiyat FROM �laclar;
SELECT * FROM �laclar WHERE �la�ADI LIKE 'B%' AND fiyat LIKE '1%';*/ -- 'A' ile ba�layan ila� adlar�na ve '1' ile ba�layan fiyatlar�na sahip ila�lar� listeler

/*IF OBJECT_ID ('dbo.ilac_tetikleyici', 'TR') IS NOT NULL 
    DROP TRIGGER dbo.ilac_tetikleyici;*/

/*GO
CREATE TRIGGER ilac_tetikleyici
ON �laclar
FOR INSERT, DELETE
AS
BEGIN
    DECLARE @price int;
    SELECT @price = fiyat FROM inserted;
    IF @price > 1000
    BEGIN
        PRINT 'Uyar�: �la� fiyat� 1000 birimin �zerinde.';
    END
END;
INSERT INTO �laclar (�lacID, �la�ADI, fiyat) VALUES (36, 'Yeni �la�', 1500);*/
--DELETE FROM �laclar WHERE �lacID = 36;
/*GO
CREATE VIEW ExpensiveDrugs AS
SELECT �lacID, �la�ADI, fiyat
FROM �laclar
WHERE fiyat > 500;*/
--SELECT * FROM ExpensiveDrugs;
/*GO
CREATE FUNCTION CountExpensiveDrugs(@price int)
RETURNS int
AS
BEGIN
    DECLARE @count int;
    SELECT @count = COUNT(*)
    FROM �laclar
    WHERE fiyat > @price;
    RETURN @count;
END;*/
--SELECT dbo.CountExpensiveDrugs(800);
/*GO
CREATE PROCEDURE GetAffordableBDrugs
AS
BEGIN
    SELECT �lacID, �la�ADI, fiyat
    FROM �laclar
    WHERE �la�ADI LIKE 'B%' AND fiyat < 500;
END;*/
--EXEC GetAffordableBDrugs;

/*BEGIN TRANSACTION UpdatePrice
BEGIN TRY
    -- �lacID'si 1 olan ilac�n fiyat�n� g�ncelle
    UPDATE �laclar
    SET fiyat = 150
    WHERE �lacID = 11;

    -- ��lemi onayla
    COMMIT TRANSACTION UpdatePrice;
END TRY
BEGIN CATCH
    -- Hata olu�ursa i�lemi geri al
    ROLLBACK TRANSACTION UpdatePrice;
END CATCH;*/
/*UPDATE �laclar
SET fiyat = 255
WHERE �lacID = 11;*/
/*CREATE INDEX �la�ADI
ON �laclar (�la�ADI);

SELECT i.name AS IndexName, o.name AS TableName
FROM sys.indexes i
JOIN sys.objects o ON i.object_id = o.object_id
WHERE i.name = '�la�ADI' AND o.name = '�laclar';*/


--Musteriler tablosu i�in

--DELETE FROM Musteriler WHERE MusteriID = 1;
--UPDATE Musteriler SET Ad = 'Ali' WHERE MusteriID = 2;
--SELECT * FROM Musteriler WHERE �lacID IN (SELECT �lacID FROM �laclar WHERE �la�Ad� = 'Aspirin');
--SELECT �lacID, COUNT(*) FROM Musteriler GROUP BY �lacID HAVING COUNT(*) > 1;
--SELECT * FROM Musteriler ORDER BY Ad;
--SELECT �lacID, COUNT(*) FROM Musteriler GROUP BY �lacID;
/*SELECT AVG(Telefon) FROM Musteriler;
SELECT SUM(Telefon) FROM Musteriler;
SELECT SUM(Telefon) FROM Musteriler;
SELECT * FROM Musteriler WHERE Ad LIKE 'A%';
SELECT DISTINCT Ad FROM Musteriler;
SELECT COUNT(*) FROM Musteriler;*/
/*GO
CREATE VIEW MusteriGorunumu AS
SELECT MusteriID, Ad, Soyad, Telefon, Adres, �lacID
FROM Musteriler;*/
--SELECT * FROM MusteriGorunumu;
/*GO
CREATE PROCEDURE MusteriEkle
    @MusteriID int,
    @Ad varchar(50),
    @Soyad varchar(50),
    @Telefon bigint,
    @Adres varchar(150),
    @�lacID int
AS
BEGIN
    INSERT INTO Musteriler (MusteriID, Ad, Soyad, Telefon, Adres, �lacID)
    VALUES (@MusteriID, @Ad, @Soyad, @Telefon, @Adres, @�lacID);
END;*/
--EXEC MusteriEkle 16, 'Ali', 'Veli', 9055512345678, 'Test Adres', 1;
--DELETE FROM Musteriler WHERE MusteriID = 16;
/*GO
CREATE TRIGGER MusteriEklemeTrigger
ON Musteriler
AFTER INSERT
AS
BEGIN
    DECLARE @MusteriID int, @Ad varchar(50), @Soyad varchar(50), @Telefon bigint, @Adres varchar(150), @�lacID int;
    SELECT @MusteriID = MusteriID, @Ad = Ad, @Soyad = Soyad, @Telefon = Telefon, @Adres = Adres, @�lacID = �lacID FROM inserted;
    PRINT 'Yeni m��teri eklendi: ' + @Ad + ' ' + @Soyad + ' (M��teri ID: ' + CAST(@MusteriID AS varchar(10)) + ', �la� ID: ' + CAST(@�lacID AS varchar(10)) + ')';
END;
GO*/
--INSERT INTO Musteriler (MusteriID, Ad, Soyad, Telefon, Adres, �lacID) 
--VALUES (16, 'Ali', 'Veli', 9055512345678, 'Test Adres', 1);
--DELETE FROM Musteriler WHERE MusteriID = 16;

/*BEGIN TRANSACTION MusteriIslemi;

-- Yeni bir m��teri ekleyin
INSERT INTO Musteriler (MusteriID, Ad, Soyad, Telefon, Adres, �lacID) 
VALUES (16, 'Ali', 'Veli', 9055512345678, 'Test Adres', 1);

-- M��teriyi g�ncelleyin
UPDATE Musteriler SET Ad = 'Ahmet' WHERE MusteriID = 16;

-- ��lemi onaylay�n
COMMIT TRANSACTION MusteriIslemi;*/

/*CREATE INDEX idx_Musteriler_Ad
ON Musteriler (Ad);

SELECT i.name AS IndexName, o.name AS TableName
FROM sys.indexes i
JOIN sys.objects o ON i.object_id = o.object_id
WHERE o.type = 'U' AND i.is_primary_key = 0 AND i.type = 2 AND o.name = 'Musteriler';*/















































































































































































































