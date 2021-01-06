CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `zapytanie6` AS
    SELECT 
        `pracownicy`.`imie` AS `imie`,
        `pracownicy`.`nazwisko` AS `nazwisko`,
        (2021 - YEAR(`pracownicy`.`data_urodzenia`)) AS `wiek`,
        `pracownicy`.`data_zatrudnienia` AS `data_zatrudnienia`,
        (2021 - YEAR(`pracownicy`.`data_zatrudnienia`)) AS `ilosc_lat_przepracowanych`
    FROM
        `pracownicy`
    ORDER BY (2021 - YEAR(`pracownicy`.`data_urodzenia`)) DESC