INSERT INTO Wypozyczenia (numer, nr_klienta, id_samochodu, samochod, ilosc_dni, cena_za_dobe, suma, pracownik)
VALUES
(101, 1, 3, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='3'), 7, (SELECT cena_za_dobe FROM Samochody WHERE id='3'), (SELECT cena_za_dobe*7 FROM Samochody WHERE id='3'), 105),
(102, 9, 2, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='2'), 2, (SELECT cena_za_dobe FROM Samochody WHERE id='2'), (SELECT cena_za_dobe*2 FROM Samochody WHERE id='2'), 110),
(103, 2, 14, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='14'), 3, (SELECT cena_za_dobe FROM Samochody WHERE id='14'), (SELECT cena_za_dobe*3 FROM Samochody WHERE id='14'), 106),
(104, 8, 7, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='7'), 11, (SELECT cena_za_dobe FROM Samochody WHERE id='7'), (SELECT cena_za_dobe*11 FROM Samochody WHERE id='7'), 107),
(105, 1, 8, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='8'), 5, (SELECT cena_za_dobe FROM Samochody WHERE id='8'), (SELECT cena_za_dobe*5 FROM Samochody WHERE id='8'), 102),
(106, 4, 4, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='4'), 4, (SELECT cena_za_dobe FROM Samochody WHERE id='4'), (SELECT cena_za_dobe*4 FROM Samochody WHERE id='4'), 105),
(107, 12, 5, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='5'), 1, (SELECT cena_za_dobe FROM Samochody WHERE id='5'), (SELECT cena_za_dobe*1 FROM Samochody WHERE id='5'), 112),
(108, 9, 1, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='1'), 3, (SELECT cena_za_dobe FROM Samochody WHERE id='1'), (SELECT cena_za_dobe*3 FROM Samochody WHERE id='1'), 111),
(109, 7, 13, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='13'), 7, (SELECT cena_za_dobe FROM Samochody WHERE id='13'), (SELECT cena_za_dobe*7 FROM Samochody WHERE id='13'), 101),
(110, 10, 6, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='6'), 6, (SELECT cena_za_dobe FROM Samochody WHERE id='6'), (SELECT cena_za_dobe*6 FROM Samochody WHERE id='6'), 109),
(111, 3, 9, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='9'), 12, (SELECT cena_za_dobe FROM Samochody WHERE id='9'), (SELECT cena_za_dobe*12 FROM Samochody WHERE id='9'), 106),
(112, 11, 10, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='10'), 8, (SELECT cena_za_dobe FROM Samochody WHERE id='10'), (SELECT cena_za_dobe*8 FROM Samochody WHERE id='10'), 103),
(113, 2, 5, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='5'), 3, (SELECT cena_za_dobe FROM Samochody WHERE id='5'), (SELECT cena_za_dobe*3 FROM Samochody WHERE id='5'), 104),
(114, 4, 11, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='11'), 2, (SELECT cena_za_dobe FROM Samochody WHERE id='11'), (SELECT cena_za_dobe*2 FROM Samochody WHERE id='11'), 107),
(115, 5, 9, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='9'), 5, (SELECT cena_za_dobe FROM Samochody WHERE id='9'), (SELECT cena_za_dobe*5 FROM Samochody WHERE id='9'), 102),
(116, 2, 8, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='8'), 4, (SELECT cena_za_dobe FROM Samochody WHERE id='8'), (SELECT cena_za_dobe*4 FROM Samochody WHERE id='8'), 106),
(117, 5, 1, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='1'), 6, (SELECT cena_za_dobe FROM Samochody WHERE id='1'), (SELECT cena_za_dobe*6 FROM Samochody WHERE id='1'), 111),
(118, 4, 6, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='6'), 7, (SELECT cena_za_dobe FROM Samochody WHERE id='6'), (SELECT cena_za_dobe*7 FROM Samochody WHERE id='6'), 108),
(119, 6, 4, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='4'), 11, (SELECT cena_za_dobe FROM Samochody WHERE id='4'), (SELECT cena_za_dobe*11 FROM Samochody WHERE id='4'), 107),
(120, 9, 10, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='10'), 10, (SELECT cena_za_dobe FROM Samochody WHERE id='10'), (SELECT cena_za_dobe*10 FROM Samochody WHERE id='10'), 102),
(121, 4, 12, (SELECT CONCAT(marka," ", model) FROM Samochody WHERE id='12'), 15, (SELECT cena_za_dobe FROM Samochody WHERE id='12'), (SELECT cena_za_dobe*15 FROM Samochody WHERE id='12'), 109);

