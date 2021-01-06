-- Wyświetla samochody, które nie były ani razu wypożyczone
SELECT marka, model
FROM samochody
WHERE id NOT IN (SELECT id_samochodu FROM wypozyczenia);