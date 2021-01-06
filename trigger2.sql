-- Trigger nie pozwala dodać kolejnego rekordu w tabeli samochody, jeśli nie będzie się zgadzał kod ubezpieczenia.
DELIMITER $$
CREATE TRIGGER ubezpieczenie BEFORE INSERT ON samochody
FOR EACH ROW
BEGIN
IF(new.ubezpieczenie>8)
THEN
SIGNAL SQLSTATE '45000' SET message_text = 'Niepoprawny kod ubezpieczenia';
END IF;
END$$