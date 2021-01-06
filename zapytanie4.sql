-- Wybiera 5 auta, które były wypożyczone na najdłuższy okres czasu
SELECT samochody.marka, samochody.model, SUM(ilosc_dni) 
FROM wypozyczenia RIGHT JOIN samochody ON samochody.id=wypozyczenia.id_samochodu 
GROUP BY ilosc_dni
ORDER BY SUM(ilosc_dni) DESC
LIMIT 5;
