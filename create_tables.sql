CREATE TABLE Pracownicy (
kod INT auto_increment primary KEY,
imie VARCHAR(30) NOT NULL,
nazwisko VARCHAR(30) NOT NULL,
data_urodzenia DATE NOT NULL,
data_zatrudnienia DATE NOT NULL,
pesel VARCHAR(11) NOT NULL,
funkcja VARCHAR(30) NOT NULL,
UNIQUE (pesel)
);
CREATE TABLE Ubezpieczenia (
kod int auto_increment primary KEY,
OC VARCHAR(3) NOT NULL,
AC VARCHAR(3) NOT NULL,
Assistance VARCHAR(3) NOT NULL,
NNW VARCHAR(3) NOT NULL
);
CREATE TABLE Samochody (
id INT auto_increment primary KEY,
marka VARCHAR(30) NOT NULL,
model VARCHAR(30) NOT NULL,
klasa VARCHAR(30) NOT NULL,
silnik VARCHAR(30) NOT NULL,
skrzynia_biegow VARCHAR(30) NOT NULL,
cena_za_dobe INT NOT NULL,
ubezpieczenie INT NOT NULL,
FOREIGN KEY (ubezpieczenie) REFERENCES Ubezpieczenia(Kod)
);
CREATE TABLE Klienci (
nr_klienta INT auto_increment primary KEY,
imie VARCHAR(30) NOT NULL,
nazwisko VARCHAR(30) NOT NULL,
telefon INT NOT NULL,
mail VARCHAR(30) NOT NULL,
staly_klient VARCHAR(3) NOT NULL,
ilosc_zamowien INT NOT NULL
);
CREATE TABLE Wypozyczenia (
numer INT auto_increment primary KEY,
nr_klienta INT NOT NULL,
id_samochodu INT NOT NULL,
samochod VARCHAR(40) NOT NULL,
ilosc_dni INT NOT NULL,
cena_za_dobe INT NOT NULL,
suma INT NOT NULL,
pracownik INT NOT NULL,
FOREIGN KEY (nr_klienta) REFERENCES Klienci(nr_klienta),
FOREIGN KEY (id_samochodu) REFERENCES Samochody(id),
FOREIGN KEY (pracownik) REFERENCES Pracownicy(kod)
);
