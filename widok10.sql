CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `zapytanie10` AS
    SELECT 
        `klienci`.`imie` AS `imie`,
        `klienci`.`nazwisko` AS `nazwisko`,
        `klienci`.`telefon` AS `telefon`,
        `wypozyczenia`.`numer` AS `numer`
    FROM
        (`klienci`
        LEFT JOIN `wypozyczenia` ON ((`klienci`.`nr_klienta` = `wypozyczenia`.`nr_klienta`)))
    ORDER BY `wypozyczenia`.`numer`