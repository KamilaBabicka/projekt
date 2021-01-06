CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `zapytanie9` AS
    SELECT 
        `wypozyczenia`.`numer` AS `numer`,
        `wypozyczenia`.`samochod` AS `samochod`,
        `pracownicy`.`imie` AS `imie`,
        `pracownicy`.`nazwisko` AS `nazwisko`,
        `pracownicy`.`funkcja` AS `funkcja`
    FROM
        (`wypozyczenia`
        LEFT JOIN `pracownicy` ON ((`wypozyczenia`.`pracownik` = `pracownicy`.`kod`)))