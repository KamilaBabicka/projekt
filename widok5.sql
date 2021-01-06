CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `zapytanie5` AS
    SELECT 
        `pracownicy`.`imie` AS `imie`,
        `pracownicy`.`nazwisko` AS `nazwisko`,
        (65 - (2021 - YEAR(`pracownicy`.`data_urodzenia`))) AS `ilosc_lat_do_wieku_emerytalnego`
    FROM
        `pracownicy`
    WHERE
        (NOT ((`pracownicy`.`imie` LIKE '%a')))