CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `zapytanie1` AS
    SELECT 
        `samochody`.`marka` AS `marka`,
        COUNT(`samochody`.`id`) AS `Liczba samochodów danej marki`
    FROM
        `samochody`
    GROUP BY `samochody`.`marka`