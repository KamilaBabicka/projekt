-- Trigger nie pozwala dodać kolejnego rekordu w tabeli wypozyczenia, jeśli nie będzie się zgadzało id samochodu.
DELIMITER $$
CREATE TRIGGER samochod BEFORE INSERT ON wypozyczenia
FOR EACH ROW
BEGIN
IF(new.id_samochodu>20)
THEN
SIGNAL SQLSTATE '45000' SET message_text = 'Niepoprawne id samochodu';
END IF;
END$$