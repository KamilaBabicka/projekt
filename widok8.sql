CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `zapytanie8` AS
    SELECT 
        `samochody`.`marka` AS `marka`,
        `samochody`.`model` AS `model`
    FROM
        `samochody`
    WHERE
        `samochody`.`id` IN (SELECT 
                `wypozyczenia`.`id_samochodu`
            FROM
                `wypozyczenia`)
            IS FALSE