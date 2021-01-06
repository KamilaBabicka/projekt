-- Pokazuje imie, nazwisko i numer telefonu klienta, który dokonał danego zamówienia.
SELECT klienci.imie, klienci.nazwisko, klienci.telefon, wypozyczenia.numer
FROM Klienci
LEFT OUTER JOIN Wypozyczenia ON klienci.nr_klienta=wypozyczenia.nr_klienta
ORDER BY wypozyczenia.numer;