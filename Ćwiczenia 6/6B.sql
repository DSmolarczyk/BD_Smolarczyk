/*
A.
UPDATE ksiegowosc.pracownicy SET telefon = CONCAT('(+48)',telefon)

Nale¿a³o zmieniæ typ kolumny "telefon" aby dodaæ (+48)
ALTER TABLE ksiegowosc.pracownicy ALTER COLUMN telefon varchar(15);

B.

UPDATE ksiegowosc.pracownicy
SET telefon = SUBSTRING(telefon, 1, 8) + '-' +
			  SUBSTRING(telefon, 9, 3) + '-' +
              SUBSTRING(telefon, 12, 4) 

SELECT * FROM ksiegowosc.pracownicy;
		
C.
SELECT UPPER(imie) AS IMIE, UPPER(nazwisko) AS NAZWISKO, UPPER(adres) AS ADRES, telefon
FROM ksiegowosc.pracownicy
WHERE LEN(nazwisko) = ( SELECT MAX(LEN(nazwisko)) FROM ksiegowosc.pracownicy);

D.
SELECT CONVERT(varchar, hashbytes('md5', pracownicy.imie ),2) AS IMIE, 
	   CONVERT(varchar, hashbytes('md5', pracownicy.nazwisko ),2) AS NAZWISKO,
	   CONVERT(varchar, hashbytes('md5', pracownicy.adres ),2) AS ADRES, 
	   CONVERT(varchar, hashbytes('md5', pracownicy.telefon ),2) AS TELEFON,
	   CONVERT(varchar(20), hashbytes('md5', CAST(pensje.kwota as VARCHAR) ),2) AS PENSJA
FROM ksiegowosc.pracownicy
INNER JOIN ksiegowosc.wynagrodzenie ON pracownicy.id_pracownika = wynagrodzenie.id_pracownika
INNER JOIN ksiegowosc.pensje ON wynagrodzenie.id_pensji = pensje.id_pensji;

E.
SELECT imie, nazwisko, ksiegowosc.pensje.kwota AS pensja, ksiegowosc.premie.kwota AS premia
FROM ksiegowosc.pracownicy
LEFT JOIN ksiegowosc.wynagrodzenie ON pracownicy.id_pracownika = wynagrodzenie.id_pracownika
LEFT JOIN ksiegowosc.pensje ON pensje.id_pensji = ksiegowosc.wynagrodzenie.id_pensji
LEFT JOIN ksiegowosc.premie ON premie.id_premii = ksiegowosc.wynagrodzenie.id_premii;

F.



SELECT 
CONCAT('Pracownik ',imie,' ',nazwisko,', ', 'w dniu ', godziny.data,' otrzyma³ pensjê ca³kowit¹ na kwotê ',
	pensje.kwota+premie.kwota+(godziny.liczba_godzin*40),' z³, gdzie wynagrodzenie zasadznicze wynosi³o: ',
	pensje.kwota, ' z³, premia: ',premie.kwota, ' z³, nadgodziny: ',godziny.liczba_godzin*40)
FROM ksiegowosc.pracownicy
JOIN ksiegowosc.wynagrodzenie ON pracownicy.id_pracownika = wynagrodzenie.id_pracownika
JOIN ksiegowosc.pensje ON pensje.id_pensji = ksiegowosc.wynagrodzenie.id_pensji
JOIN ksiegowosc.premie ON premie.id_premii = ksiegowosc.wynagrodzenie.id_premii
JOIN ksiegowosc.godziny ON godziny.id_godziny = ksiegowosc.wynagrodzenie.id_godziny;
*/