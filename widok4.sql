CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `zapytanie4` AS
    SELECT 
        `samochody`.`marka` AS `marka`,
        `samochody`.`model` AS `model`,
        SUM(`wypozyczenia`.`ilosc_dni`) AS `SUM(ilosc_dni)`
    FROM
        (`samochody`
        LEFT JOIN `wypozyczenia` ON ((`samochody`.`id` = `wypozyczenia`.`id_samochodu`)))
    GROUP BY `wypozyczenia`.`ilosc_dni`
    ORDER BY SUM(`wypozyczenia`.`ilosc_dni`) DESC
    LIMIT 5