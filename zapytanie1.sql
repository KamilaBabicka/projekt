-- Ilość samochodów danej marki 
SELECT marka, COUNT(ID) AS "Liczba samochodów danej marki" FROM Samochody GROUP BY marka;