if object_id ('Klasa') is not null drop table Klasa

create table Klasa (
    NrKlasy char(2) primary key,
	Liczba_uczniow int default 0,
	Profil char(30)
)

if object_id ('Uczen') is not null drop table Uczen

create table Uczen (
    Imie char(20),
	Nazwisko char(20),
	Pesel char(11) primary key,
	NrKlasy char(2),
)


if object_id ('Nauczyciel') is not null drop table Nauczyciel

create table Nauczyciel (
    Imie char(20) NOT NULL,
	Nazwisko char(20) NOT NULL,
	Pesel char(11) primary key NOT NULL,
	Wychowawca char(2),
	IdPrzedmiotu int,
	DyzurID int
)


if object_id ('Dyzur') is not null drop table Dyzur

create table Dyzur (
    ID_dyzuru int primary key,
	Data int,
	NrSali int
)

if object_id ('Sala') is not null drop table Sala

create table Sala (
    Nr_Sali int primary key,
	Pietro int
)


if object_id ('Przedmiot') is not null drop table Przedmiot

create table Przedmiot (
    IdPrzedmiotu int primary key,
	Nazwa char(20)
)


if object_id ('Plan_lekcji') is not null drop table Plan_lekcji

create table Plan_lekcji (
    Id_zajec int primary key,
	Data int,
	NrKlasy char(2),
	Przedmiot int,
	Prowadzacy_pesel char(11),
	NrSali int
)


if object_id ('Data') is not null drop table Data

create table Data (
    Id_daty int primary key,
	Dzien char(20),
	Od char(5),
	Do char(5)
)


if object_id ('Pracownik') is not null drop table Pracownik

create table Pracownik (
    Imie char(20),
	Nazwisko char(20),
	Pesel char(11) primary key,
	Pensja int,
	IdZawodu int
)

if object_id ('Zawod') is not null drop table Zawod

create table Zawod (
    IdZawodu int primary key,
	Nazwa char(20)
)

if object_id ('Absolwenci') is not null drop table Absolwenci

create table Absolwenci (
    Imie char(20),
	Nazwisko char(20),
	Pesel char(11) primary key,
	Data_ukonczenia int
)

if object_id ('Sklepik') is not null drop table Sklepik

create table Sklepik (
    Id int primary key,
	Data_dostawy date,
	Data_sprzedazy date,
	Produkt int

)

if object_id ('Produkt') is not null drop table Produkt

create table Produkt (
    Id int primary key,
	Nazwa char(20),
	Cena int
)


if object_id ('Biblioteka') is not null drop table Biblioteka

create table Biblioteka (
    Id int primary key,
	Od_kiedy date,
	Do_kiedy date,
	Ksiazka int,
	Kto char(11)
)

if object_id ('Ksiazka') is not null drop table Ksiazka

create table Ksiazka (
    Id int primary key,
	Tytul char(40),
	Rok_wydania int,
	IdAutora int
)

if object_id ('Autor') is not null drop table Autor

create table Autor (
    IdAutora int primary key,
	Imie char(20),
	Nazwisko char(20)
)

if object_id ('Oceny') is not null drop table Oceny

create table Oceny (
    Id_oceny int PRIMARY KEY,
    Pesel_ucznia char(11),
	Przedmiot int,
	Ocena int
)

