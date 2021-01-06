CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `zapytanie7` AS
    SELECT 
        `samochody`.`marka` AS `marka`,
        AVG(`samochody`.`cena_za_dobe`) AS `Sredni koszt wypozyczenia`
    FROM
        `samochody`
    GROUP BY `samochody`.`marka`