-- Wyświetla imie, nazwisko i funkcję pracownika, który był odpowiedzialny za dane wypożyczenie
SELECT wypozyczenia.numer, wypozyczenia.samochod, pracownicy.imie, pracownicy.nazwisko, pracownicy.funkcja
FROM wypozyczenia LEFT JOIN pracownicy ON wypozyczenia.pracownik = pracownicy.kod
