/* 
CREATE DATABASE firma
	
CREATE SCHEMA rozliczenia
	CREATE TABLE pracownicy (id_pracownika INT NOT NULL PRIMARY KEY, imie VARCHAR(30), nazwisko VARCHAR(30), adres VARCHAR(50), telefon INT)
	CREATE TABLE godziny (id_godziny INT NOT NULL PRIMARY KEY, data date, liczba_godzin INT, id_pracownika INT NOT NULL)
	CREATE TABLE premie (id_premii INT NOT NULL PRIMARY KEY, rodzaj VARCHAR(30), kwota INT)
	CREATE TABLE pensje (id_pensji INT NOT NULL PRIMARY KEY, stanowisko VARCHAR(30), kwota INT, id_premii INT NOT NULL)

ALTER TABLE rozliczenia.godziny ADD FOREIGN KEY (id_pracownika) REFERENCES rozliczenia.pracownicy(id_pracownika)
ALTER TABLE rozliczenia.pensje ADD FOREIGN KEY (id_premii) REFERENCES rozliczenia.premie(id_premii);


INSERT INTO rozliczenia.pracownicy VALUES(1, 'Aleksandra', 'Pi³a', 'ul. Kwiatowa 3', 348724879);
INSERT INTO rozliczenia.pracownicy VALUES(2, 'Marek', 'Modry', 'ul. Tulipanowa 4a', 572942853);
INSERT INTO rozliczenia.pracownicy VALUES(3, 'Tomasz', 'Ogórek', 'ul. Kwaœna 5/16', 098765432);
INSERT INTO rozliczenia.pracownicy VALUES(4, 'Przemys³aw', 'Nowak', 'ul. Krakowska 6', 123456789);
INSERT INTO rozliczenia.pracownicy VALUES(5, 'Konrad', 'Nowakowski', 'al. Mickiewicza 64b', 345987123);
INSERT INTO rozliczenia.pracownicy VALUES(6, 'Monika', 'Kot', 'ul. Myszkowska 19', 567543679);
INSERT INTO rozliczenia.pracownicy VALUES(7, 'Bart³omiej', 'Kowalski', 'ul. Wolna 24b', 123876908);
INSERT INTO rozliczenia.pracownicy VALUES(8, '£ukasz', 'D³ugopis', 'ul. Uwa¿na 5/20', 987678098);
INSERT INTO rozliczenia.pracownicy VALUES(9, 'Joanna', 'Pi³a', 'ul. Cwana 67', 157253638);
INSERT INTO rozliczenia.pracownicy VALUES(10, 'Franciszek', 'Pierwszy', 'al. Królewska 3', 726392692);

INSERT INTO rozliczenia.godziny VALUES(1, '2021-01-12', 8, 1);
INSERT INTO rozliczenia.godziny VALUES(2, '2021-01-12', 9, 2);
INSERT INTO rozliczenia.godziny VALUES(3, '2021-01-12', 6, 4);
INSERT INTO rozliczenia.godziny VALUES(4, '2021-01-13', 8, 5);
INSERT INTO rozliczenia.godziny VALUES(5, '2021-01-13', 7, 3);
INSERT INTO rozliczenia.godziny VALUES(6, '2021-01-15', 7, 1);
INSERT INTO rozliczenia.godziny VALUES(7, '2021-01-15', 8, 6);
INSERT INTO rozliczenia.godziny VALUES(8, '2021-01-16', 9, 7);
INSERT INTO rozliczenia.godziny VALUES(9, '2021-01-16', 8, 8);
INSERT INTO rozliczenia.godziny VALUES(10,'2021-01-17', 10, 10);

INSERT INTO rozliczenia.premie VALUES(1, 'regulaminowa', 100);
INSERT INTO rozliczenia.premie VALUES(2, 'uznaniowa', 200);
INSERT INTO rozliczenia.premie VALUES(3, 'regulaminowa', 50);
INSERT INTO rozliczenia.premie VALUES(4, 'uznaniowa', 250);
INSERT INTO rozliczenia.premie VALUES(5, 'regulaminowa', 100);
INSERT INTO rozliczenia.premie VALUES(6, 'uznaniowa', 200);
INSERT INTO rozliczenia.premie VALUES(7, 'regulaminowa', 100);
INSERT INTO rozliczenia.premie VALUES(8, 'regulaminowa', 50);
INSERT INTO rozliczenia.premie VALUES(9, 'uznaniowa', 200);
INSERT INTO rozliczenia.premie VALUES(10,'regulaminowa', 100);

INSERT INTO rozliczenia.pensje VALUES(1, 'menad¿er', 3000, 1);
INSERT INTO rozliczenia.pensje VALUES(2, 'informatyk', 5000, 3);
INSERT INTO rozliczenia.pensje VALUES(3, 'informatyk', 4500, 4);
INSERT INTO rozliczenia.pensje VALUES(4, 'menad¿er', 3500, 2);
INSERT INTO rozliczenia.pensje VALUES(5, 'ksiêgowa', 2500, 5);
INSERT INTO rozliczenia.pensje VALUES(6, 'informatyk', 7200, 6);
INSERT INTO rozliczenia.pensje VALUES(7, 'sprz¹taczka', 2700, 7);
INSERT INTO rozliczenia.pensje VALUES(8, 'ksiêgowa', 3100, 8);
INSERT INTO rozliczenia.pensje VALUES(9, 'menad¿er', 3800, 10);
INSERT INTO rozliczenia.pensje VALUES(10,'informatyk', 5300, 9);

SELECT nazwisko, adres FROM rozliczenia.pracownicy;

SELECT DATEPART(weekday, data) AS 'Dzieñ tygodnia', DATEPART(MONTH, data) AS 'Miesi¹c' FROM rozliczenia.godziny;

SELECT id_pensji, stanowisko, kwota as kwota_brutto, kwota+(kwota*0.23) AS kwota_netto, id_premii FROM rozliczenia.pensje;
*/

