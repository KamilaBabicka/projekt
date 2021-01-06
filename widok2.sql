CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `zapytanie2` AS
    SELECT 
        `wypozyczenia`.`nr_klienta` AS `nr_klienta`,
        `klienci`.`imie` AS `imie`,
        `klienci`.`nazwisko` AS `nazwisko`,
        SUM(`wypozyczenia`.`suma`) AS `SUM(suma)`
    FROM
        (`wypozyczenia`
        LEFT JOIN `klienci` ON ((`wypozyczenia`.`nr_klienta` = `klienci`.`nr_klienta`)))
    GROUP BY `wypozyczenia`.`nr_klienta`
    ORDER BY `wypozyczenia`.`nr_klienta`