CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `zapytanie3` AS
    SELECT 
        `samochody`.`id` AS `id`,
        `samochody`.`marka` AS `marka`,
        `samochody`.`model` AS `model`,
        `ubezpieczenia`.`OC` AS `oc`,
        `ubezpieczenia`.`AC` AS `ac`,
        `ubezpieczenia`.`Assistance` AS `assistance`,
        `ubezpieczenia`.`NNW` AS `nnw`
    FROM
        (`samochody`
        JOIN `ubezpieczenia` ON ((`samochody`.`ubezpieczenie` = `ubezpieczenia`.`kod`)))
    ORDER BY `samochody`.`id`