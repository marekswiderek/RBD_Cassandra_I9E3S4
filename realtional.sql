CREATE TABLE FAKTURA_DETALE
  (
    ID_DETALU      NUMBER (7) NOT NULL ,
    ILOSC_PRODUKTU NUMBER (3) NOT NULL ,
    CENA_ZAKUPU    NUMBER (11,2) ,
    id_produktu    NUMBER (5) NOT NULL ,
    id_faktury     NUMBER (7) NOT NULL
  ) ;


CREATE TABLE FAKTURA_NAGLOWEK
  (
    ID_FAKTURY      NUMBER (7) NOT NULL ,
    DATA_FAKTURY    DATE NOT NULL ,
    WARTOSC_FAKTURY NUMBER (15,2) ,
    id_klienta      NUMBER (9) NOT NULL ,
    id_pracownika   NUMBER (5) NOT NULL
  ) ;
ALTER TABLE FAKTURA_NAGLOWEK ADD CONSTRAINT Faktura_naglowek_PK PRIMARY KEY ( ID_FAKTURY ) ;


CREATE TABLE KLIENT
  (
    ID_KLIENTA NUMBER (9) NOT NULL ,
    IMIE       VARCHAR2 (20) NOT NULL ,
    NAZWISKO   VARCHAR2 (30) NOT NULL ,
    EMAIL      VARCHAR2 (30)
  ) ;
ALTER TABLE KLIENT ADD CONSTRAINT Klient_PK PRIMARY KEY ( ID_KLIENTA ) ;


CREATE TABLE PRACOWNIK
  (
    ID_PRACOWNIKA NUMBER (5) NOT NULL ,
    IMIE          VARCHAR2 (20) NOT NULL ,
    NAZWISKO      VARCHAR2 (30) NOT NULL ,
    PLEC          VARCHAR2 (1 CHAR) NOT NULL
  ) ;
ALTER TABLE PRACOWNIK ADD CONSTRAINT Pracownik_PK PRIMARY KEY ( ID_PRACOWNIKA ) ;


CREATE TABLE PRODUCENT
  (
    ID_PRODUCENTA    NUMBER (5) NOT NULL ,
    NAZWA_PRODUCENTA VARCHAR2 (40) NOT NULL
  ) ;
ALTER TABLE PRODUCENT ADD CONSTRAINT Producent_PK PRIMARY KEY ( ID_PRODUCENTA ) ;


CREATE TABLE PRODUKT
  (
    ID_PRODUKTU    NUMBER (5) NOT NULL ,
    NAZWA_PRODUKTU VARCHAR2 (30) NOT NULL ,
    CENA_PRODUKTU  NUMBER (8,2) NOT NULL ,
    id_sezonu      NUMBER (3) NOT NULL ,
    id_producenta  NUMBER (5) NOT NULL
  ) ;
ALTER TABLE PRODUKT ADD CONSTRAINT Produkt_PK PRIMARY KEY ( ID_PRODUKTU ) ;


CREATE TABLE SEZON
  (
    ID_SEZONU    NUMBER (3) NOT NULL ,
    NAZWA_SEZONU VARCHAR2 (10) NOT NULL ,
    OPIS_SEZONU  VARCHAR2 (60)
  ) ;
ALTER TABLE SEZON ADD CONSTRAINT Sezon_PK PRIMARY KEY ( ID_SEZONU ) ;


ALTER TABLE FAKTURA_DETALE ADD CONSTRAINT Faktura_naglowek_FK FOREIGN KEY ( id_faktury ) REFERENCES FAKTURA_NAGLOWEK ( ID_FAKTURY ) ;

ALTER TABLE FAKTURA_NAGLOWEK ADD CONSTRAINT Klient_FK FOREIGN KEY ( id_klienta ) REFERENCES KLIENT ( ID_KLIENTA ) ;

ALTER TABLE FAKTURA_NAGLOWEK ADD CONSTRAINT Pracownik_FK FOREIGN KEY ( id_pracownika ) REFERENCES PRACOWNIK ( ID_PRACOWNIKA ) ;

ALTER TABLE PRODUKT ADD CONSTRAINT Producent_FK FOREIGN KEY ( id_producenta ) REFERENCES PRODUCENT ( ID_PRODUCENTA ) ;

ALTER TABLE FAKTURA_DETALE ADD CONSTRAINT Produkt_FK FOREIGN KEY ( id_produktu ) REFERENCES PRODUKT ( ID_PRODUKTU ) ;

ALTER TABLE PRODUKT ADD CONSTRAINT Sezon_FK FOREIGN KEY ( id_sezonu ) REFERENCES SEZON ( ID_SEZONU ) ;

ALTER TABLE FAKTURA_DETALE ADD CONSTRAINT Faktura_detale_PK PRIMARY KEY ( ID_FAKTURY, ID_DETALU ) ;

--Utworzenie sekwencji dla identyfikatorów

CREATE SEQUENCE SEQ_ID_KLIENTA INCREMENT BY 1 START WITH 1 MAXVALUE 999999999;

CREATE SEQUENCE SEQ_ID_PRACOWNIKA INCREMENT BY 1 START WITH 1 MAXVALUE 99999;

CREATE SEQUENCE SEQ_ID_FAKTURY INCREMENT BY 1 START WITH 1000000 MAXVALUE 9999999;

CREATE SEQUENCE SEQ_ID_PRODUCENTA INCREMENT BY 1 START WITH 1 MAXVALUE 99999;

CREATE SEQUENCE SEQ_ID_PRODUKTU INCREMENT BY 1 START WITH 1 MAXVALUE 99999;

CREATE SEQUENCE SEQ_ID_SEZONU INCREMENT BY 1 START WITH 1 MAXVALUE 999;

--Uzupelnienie bazy danymi
--TABELA KLIENT
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Łukasz','Nowacki','łukasznowacki1951@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Pola','Pawłowska','polapawłowska1964@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Oskar','Tomczak','oskartomczak1993@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Anna','Jankowska','annajankowska2003@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Jakub','Nowacki','jakubnowacki1946@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Maurycy','Lewandowski','maurycylewandowski1951@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Mateusz','Sobczak','mateuszsobczak1978@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Nikodem','Urbaniak','nikodemurbaniak1966@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Aleksander','Mazur','aleksandermazur1954@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Bartek','Dudek','bartekdudek1975@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Bartek','Małecki','bartekmałecki2017@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Zuzanna','Walczak','zuzannawalczak2004@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Adam','Kasprzak','adamkasprzak1945@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Nina','Jasińska','ninajasińska1985@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Igor','Szewczyk','igorszewczyk1968@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Natalia','Chmielewska','nataliachmielewska1945@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Sebastian','Barański','sebastianbarański1980@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Mateusz','Gajda','mateuszgajda1989@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Milena','Tomczak','milenatomczak1933@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Jakub','Jabłoński','jakubjabłoński1978@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Kacper','Kozłowski','kacperkozłowski1932@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Patrycja','Wieczorek','patrycjawieczorek2004@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Kornelia','Lewicka','kornelialewicka2004@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Maria','Krajewska','mariakrajewska1944@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Marta','Zając','martazając1990@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Oliwia','Dudek','oliwiadudek2007@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Zuzanna','Markowska','zuzannamarkowska1935@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Maksymilian','Wysocki','maksymilianwysocki1955@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Paweł','Mazurek','pawełmazurek2016@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Lena','Sikora','lenasikora1980@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Wiktor','Urbaniak','wiktorurbaniak1949@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Jakub','Jędrzejewski','jakubjędrzejewski1948@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Izabela','Mazur','izabelamazur1954@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Tadeusz','Kołodziej','tadeuszkołodziej1967@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Tymon','Kucharski','tymonkucharski1956@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Wiktoria','Krupa','wiktoriakrupa1994@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Maja','Wiśniewska','majawiśniewska2018@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Julia','Krajewska','juliakrajewska2004@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Julia','Stefaniak','juliastefaniak1966@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Wiktor','Chmielewski','wiktorchmielewski1999@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Wiktoria','Wiśniewska','wiktoriawiśniewska199@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Julia','Jaworska','juliajaworska1972@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Maja','Lis','majalis1973@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Maja','Pietrzak','majapietrzak1942@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Julian','Czajkowski','julianczajkowski1935@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Zofia','Bąk','zofiabąk1991@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Aleksandra','Włodarczyk','aleksandrawłodarczyk1@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Mikołaj','Łukasik','mikołajłukasik1966@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Piotr','Szymański','piotrszymański1949@mail.pl');
insert into KLIENT values(SEQ_ID_KLIENTA.nextval,'Maria','Kubiak','mariakubiak2008@mail.pl');

--TABELA PRACOWNIK
insert into PRACOWNIK values(SEQ_ID_PRACOWNIKA.nextval,'Wiktoria','Król','K');
insert into PRACOWNIK values(SEQ_ID_PRACOWNIKA.nextval,'Barbara','Cieślik','K');
insert into PRACOWNIK values(SEQ_ID_PRACOWNIKA.nextval,'Aleksandra','Kołodziejczyk','K');
insert into PRACOWNIK values(SEQ_ID_PRACOWNIKA.nextval,'Rafał','Gajewski','M');
insert into PRACOWNIK values(SEQ_ID_PRACOWNIKA.nextval,'Antonina','Bednarek','K');
insert into PRACOWNIK values(SEQ_ID_PRACOWNIKA.nextval,'Wiktoria','Zając','K');
insert into PRACOWNIK values(SEQ_ID_PRACOWNIKA.nextval,'Dominika','Kwiatkowska','K');
insert into PRACOWNIK values(SEQ_ID_PRACOWNIKA.nextval,'Oliwia','Sobolewska','K');
insert into PRACOWNIK values(SEQ_ID_PRACOWNIKA.nextval,'Paweł','Majewski','M');
insert into PRACOWNIK values(SEQ_ID_PRACOWNIKA.nextval,'Szymon','Zakrzewski','M');

--TABELA SEZON
insert into SEZON values(SEQ_ID_SEZONU.nextval, 'Zimowy', 'Snowboard, narty, kombinezony, kaski oraz wiele wiecej');
insert into SEZON values(SEQ_ID_SEZONU.nextval, 'Letni', 'Sprzet przede wszystkim wodny');

--TABELA PRODUCENT
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'4F');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Adidas');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Air Jordan');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'AND1');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'ASICS');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Babolat');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Barnett');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'CamelBak Products');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Correct Craft');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Dainese');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Derbystar');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Diadora');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Diving Unlimited International');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Dunlop sport');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Erreà');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Everlast');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Fila');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Gilbert');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Hummel International');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'JAKO AG');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Joma');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Joola');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Kappa');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Kelme');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Koflach');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Kokott');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Kona');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Lacoste');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Le Coq Sportif');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Legea');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Lonsdale London');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Lotto Sport Italia');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Macron');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Masita');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Mikasa Sports');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Mitchell and Ness');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Mizuno');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'New Balance');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Nike');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'OTCF');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Outhorn');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Pearl Izumi');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Polsport');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Prince Sports');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Puma SE');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Quiksilver');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Rapha');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Reebok');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Regatta');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Reusch');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Spalding');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Sport-Tiedje');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Tamasu');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Tibhar');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Uhlsport');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Umbro');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Under Armour');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Warrior Sports');
insert into PRODUCENT values(SEQ_ID_PRODUCENTA.nextval,'Wilson Sporting Goods');

--TABELA PRODUKT
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty narciarskie Barnett',230.37,1,7);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kask Koflach',249.45,1,25);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Dainese',226.47,1,10);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Pianka surfingowa Sport-Tiedje',231.16,2,52);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie AND1',126.48,1,4);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Hummel International',250.91,2,19);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Warrior Sports',176.22,2,58);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Dunlop sport',137.88,1,14);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Pianka surfingowa Dunlop sport',140.84,2,14);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Kelme',215.92,1,24);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Derbystar',124.81,2,11);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Pianka surfingowa Fila',371.24,2,17);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Dunlop sport',183.54,2,14);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Pianka surfingowa Nike',240.2,2,39);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Piłka plażowa Joola',136.29,2,22);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Dainese',135.98,2,10);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie Lacoste',351.59,1,28);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak dwuosobowy Macron',185.57,2,33);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska Pearl Izumi',183.27,1,42);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kominiarka Barnett',327.97,1,7);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe ASICS',103.83,2,5);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie Tibhar',128.45,1,54);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty narciarskie Mizuno',76.82,1,37);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Under Armour',203.37,1,57);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Uhlsport',269.13,2,55);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska JAKO AG',310.63,1,20);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak dwuosobowy Adidas',91.61,2,2);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Masita',154.31,1,34);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Masita',261.31,1,34);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska Fila',328.67,1,17);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Piłka plażowa Koflach',330.68,2,25);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Spalding',103.62,2,51);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Kelme',211.01,2,24);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Lacoste',316.93,2,28);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Narty zjazdowe Kappa',400.14,1,23);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe Barnett',373.0,1,7);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Mikasa Sports',236.54,2,35);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kask+Google JAKO AG',124.18,1,20);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska snowboardowa Adidas',182.78,1,2);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Wilson Sporting Goods',183.86,2,59);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Reebok',76.73,2,48);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Narty zjazdowe Umbro',327.55,1,56);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Babolat',262.31,1,6);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe Uhlsport',82.69,1,55);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Narty zjazdowe Dainese',226.38,1,10);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Le Coq Sportif',77.3,2,29);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Adidas',240.0,2,2);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Legea',314.96,2,30);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Kokott',171.78,1,26);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Piłka plażowa Babolat',234.79,2,6);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kask+Google Nike',142.15,1,39);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Kokott',370.18,2,26);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Koflach',217.93,2,25);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Mizuno',386.14,1,37);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Kappa',148.49,2,23);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie Umbro',154.89,1,56);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Pianka surfingowa Pearl Izumi',105.12,2,42);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska snowboardowa Kelme',151.09,1,24);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie Mizuno',158.48,1,37);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Polsport',299.54,2,43);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Everlast',304.36,2,16);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Derbystar',353.78,2,11);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Narty Fila',251.11,1,17);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Rapha',151.31,2,47);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak dwuosobowy Sport-Tiedje',326.89,2,52);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe OTCF',312.56,1,40);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie Kokott',351.3,1,26);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Pianka surfingowa Spalding',213.11,2,51);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Derbystar',323.12,2,11);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Spalding',208.09,2,51);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Barnett',150.45,2,7);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Rapha',132.1,2,47);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe Polsport',364.22,1,43);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Masita',109.25,2,34);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Piłka plażowa Joola',291.11,2,22);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Joola',83.59,2,22);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe Regatta',345.64,1,49);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Reusch',178.52,2,50);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Quiksilver',281.23,2,46);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Piłka plażowa OTCF',254.06,2,40);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac JAKO AG',286.94,2,20);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Nike',262.68,2,39);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Pianka surfingowa Kelme',214.15,2,24);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Gilbert',124.62,2,18);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Outhorn',355.08,2,41);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Le Coq Sportif',202.2,2,29);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak dwuosobowy Kappa',214.52,2,23);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Lacoste',155.87,2,28);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy New Balance',104.24,2,38);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Barnett',247.43,2,7);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe Erreà',145.59,1,15);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Kona',251.34,2,27);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Reebok',381.62,1,48);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy AND1',146.47,2,4);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Erreà',356.02,1,15);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Kona',306.43,2,27);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Kokott',149.61,2,26);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Lotto Sport Italia',163.88,1,32);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe Masita',392.69,1,34);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Pianka surfingowa Babolat',113.92,2,6);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Everlast',361.9,2,16);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska snowboardowa Uhlsport',193.15,1,55);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty narciarskie Tamasu',233.18,1,53);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Polsport',281.59,2,43);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie Joma',129.69,1,21);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Spalding',266.87,2,51);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Uhlsport',365.91,2,55);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska snowboardowa Everlast',307.61,1,16);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Rapha',282.15,1,47);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska Legea',383.56,1,30);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie Diadora',244.79,1,12);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska New Balance',207.72,1,38);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Piłka plażowa Rapha',279.0,2,47);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska Outhorn',201.68,1,41);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska Fila',148.45,1,17);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Kelme',247.3,1,24);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Mikasa Sports',326.18,2,35);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska Dunlop sport',86.22,1,14);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kask+Google Reebok',128.32,1,48);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Narty Spalding',347.51,1,51);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kask Everlast',307.27,1,16);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Kappa',201.79,1,23);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kask Kelme',317.9,1,24);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Sport-Tiedje',115.48,2,52);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Regatta',259.63,2,49);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Polsport',270.49,2,43);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Narty Gilbert',199.19,1,18);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Macron',79.6,2,33);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie Rapha',117.31,1,47);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kask Lacoste',280.5,1,28);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Legea',120.63,2,30);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Joola',76.3,2,22);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak dwuosobowy Diadora',167.42,2,12);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Puma SE',398.27,1,45);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Masita',281.51,1,34);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kominiarka Everlast',103.17,1,16);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie JAKO AG',360.73,1,20);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak dwuosobowy Tibhar',116.83,2,54);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Reebok',163.19,2,48);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Piłka plażowa Dunlop sport',147.93,2,14);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Rapha',384.9,2,47);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Lacoste',388.0,2,28);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Adidas',182.23,1,2);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Joola',368.03,2,22);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Spodnie narciarskie Umbro',383.31,1,56);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe Joola',371.02,1,22);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak dwuosobowy Joola',229.84,2,22);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska Outhorn',261.28,1,41);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Lotto Sport Italia',184.45,1,32);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Lacoste',238.22,2,28);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Pianka surfingowa Gilbert',389.48,2,18);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Gilbert',223.75,2,18);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Joola',112.01,1,22);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty narciarskie Everlast',305.22,1,16);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe Uhlsport',310.29,1,55);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Puma SE',109.67,2,45);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe JAKO AG',236.33,2,20);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska snowboardowa OTCF',276.11,1,40);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Narty Macron',157.64,1,33);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Pianka surfingowa Tamasu',265.23,2,53);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe Fila',174.04,1,17);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Mikasa Sports',380.11,1,35);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak dwuosobowy New Balance',72.79,2,38);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty narciarskie Spalding',302.19,1,51);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska Koflach',252.9,1,25);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac ASICS',389.37,2,5);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Materac Prince Sports',86.29,2,44);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Buty snowboardowe Dainese',247.91,1,10);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Piłka plażowa Joola',186.44,2,22);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Google Erreà',358.88,1,15);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Mitchell and Ness',247.91,2,36);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kijki Kokott',107.22,1,26);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Canoe Regatta',92.64,2,49);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Mikasa Sports',85.74,2,35);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Macron',293.37,2,33);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kominiarka Erreà',221.02,1,15);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa AND1',364.65,2,4);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Mizuno',188.91,2,37);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kurtka narciarska Umbro',375.38,1,56);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Erreà',392.7,2,15);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Sport-Tiedje',95.95,2,52);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Kajak jednoosobowy Derbystar',314.43,2,11);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Macron',367.87,2,33);
insert into PRODUKT values(SEQ_ID_PRODUKTU.nextval,'Deska surfingowa Macron',201.46,2,33);

--zapytania
--producenci, od których posiadamy ponad 3 produkty na sprzedaż
select COUNT(p.ID_PRODUCENTA) as ILOSC_PRODUKTOW, x.NAZWA_PRODUCENTA as PRODUCENT, s.NAZWA_SEZONU
from PRODUKT p, PRODUCENT x, SEZON s
where p.ID_PRODUCENTA = x.ID_PRODUCENTA and p.ID_SEZONU = s.ID_SEZONU
group by x.NAZWA_PRODUCENTA, s.NAZWA_SEZONU
having count(p.ID_PRODUCENTA) > 3
order by x.NAZWA_PRODUCENTA;

--roczne przychody ze sprzedazy
select to_char(DATA_FAKTURY,'YYYY') as ROK, SUM(WARTOSC_FAKTURY) as PRZYCHOD
from FAKTURA_NAGLOWEK
group by to_char(DATA_FAKTURY, 'YYYY')
order by to_char(DATA_FAKTURY, 'YYYY') desc;

--trzech pracowników wystawiających najwięcej faktur = najlepsi sprzedawcy
select p.IMIE||' '||p.NAZWISKO as PRACOWNIK, count(f.ID_FAKTURY) as "ILOSC WYSTAWIONYCH FAKTUR"
from PRACOWNIK p, FAKTURA_NAGLOWEK f
where p.ID_PRACOWNIKA = f.ID_PRACOWNIKA
group by p.IMIE||' '||p.NAZWISKO
order by count(f.ID_FAKTURY) desc
fetch first 3 rows only;




