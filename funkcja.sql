SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER $$
CREATE FUNCTION
ilosc_osob_zatrudnionych_w_roku(x int)
RETURNS INT
BEGIN
SELECT COUNT(kod) FROM pracownicy
WHERE year(data_zatrudnienia)=x INTO x;
RETURN x;
END $$