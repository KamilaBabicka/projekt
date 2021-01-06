-- Pokazuje średni koszt wypożyczenia samochodu danej marki.
SELECT marka, AVG(cena_za_dobe) AS "Sredni koszt wypozyczenia" FROM Samochody GROUP BY marka;