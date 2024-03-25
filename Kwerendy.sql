Insert Into Produkt Values
(1,'Lizak',2),
(2,'Czekolada',4),
(3,'Woda niegazowana',4),
(4,'Sok Jablkowy',5),
(5,'Sok pomaranczowy',5),
(6,'Woda gazowana',4),
(7, 'Drozdzowka', 3),
(8,'Coca-Cola',7),
(9,'Sprite',7),
(10,'Banan',3),
(11,'Jablko',3),
(12,'Snikers',4);

--Insert Into Sklepik Values

INSERT INTO Autor VALUES
(1,'Henryk','Sienkiewicz'),
(2,'Adam','Mickiewicz'),
(3,'Stephen','King');

INSERT INTO Ksiazka values
(1,'Potop',1886,1),
(2,'Ogniem i Mieczem',1884,1),
(3,'Pan Wolodyjowski',1888,1),
(4,'Dziady czesc II',1823,2),
(5,'Dziady czesc III',1832,2),
(6,'Dziady czesc IV',1823,2),
(7,'To',1986,3),
(8,'Carrie',1974,3),
(9,'Tomek Wilmowski', 2001, 1);


insert into Biblioteka values 
(1,'2019-02-22', '2019-02-23', 2, '98040203043');



INSERT INTO Zawod VALUES
(1,'Wozny'),
(2,'Ochroniarz'),
(3,'Sekretarka');

INSERT INTO Pracownik VALUES
('Michal', 'Krol', '84030204056', 1500, 1),
('Piotr', 'Kawiec', '82030204054', 2500, 2),
('Anna', 'Kowolska', '89030204016', 2200, 3);


INSERT INTO Absolwenci VALUES 
('Michal', 'Nowak', '92040203122',2013),
('Jakub', 'Lach', '93040203233',2014);


INSERT INTO data VALUES 
(1,'poniedzialek', '8:00', '8:45'),
(2,'poniedzialek', '8:55', '9:40'),
(3,'poniedzialek', '9:50', '10:35'),
(4,'wtorek', '8:00', '8:45'),
(5,'wtorek', '8:55', '9:40'),
(6,'sroda', '8:00', '8:45'),
(7,'czwartek', '8:00', '8:45'),
(8,'piatek', '9:50', '10:35');

INSERT INTO Sala VALUES 
(1, 0),
(2,0),
(3,0),
(4,0),
(11,1),
(12,1),
(13,1),
(21,2),
(22,2),
(23,2);


INSERT INTO Przedmiot VALUES 
(1,'muzyka'),
(2,'matematyka'),
(3,'fizyka'),
(4,'angielski');


INSERT INTO Klasa VALUES 
('1a',0, 'mat-fiz-inf'),
('1b',0, 'biol-chem'),
('2a',0, 'mat-fiz'),
('2b',0, 'biol-chem'),
('3a',0, 'mat-fiz-inf'),
('3b',0, 'biol-chem');


INSERT INTO Dyzur VALUES
(1, 1, 21),
(2, 2, 21),
(3, 3, 21),
(4, 3, 22),
(5, 4, 22),
(6, 5, 23);

INSERT INTO Nauczyciel VALUES
('Adam', 'Kowalski', 83030404097,'3a', 1, 5 ),
('Michal', 'Kowal', 83030404012,'3a', 3, 6 ),
('Maria', 'Kowalska', 83030404034,'3a', 2, 2 );


INSERT INTO Uczen VALUES
('Piotr', 'Nowak', 99040203043,'1a'),
('Piotr', 'Kowalski', 98040203043,'2a'),
('Sebastian', 'Nowak', 98040203123,'2b'),
('Maciej', 'Krzyk', 97040203043,'3b');



INSERT INTO Plan_lekcji VALUES
(1, 1, '1a',1, 83030404097, 1),
(2, 2, '1a',2, 83030404097, 1),
(3, 3, '1b',3, 83030404097, 2),
(4, 2, '2a',4, 83030404012, 3),
(5, 3, '2a',2, 83030404012, 11),
(6, 4, '2b',3, 83030404097, 13),
(7, 5, '3a',1, 83030404034, 1),
(8, 6, '3a',2, 83030404034, 2),
(9, 6, '3b',4, 83030404097, 12);


INSERT INTO Oceny VALUES 
(1,99040203043,1,2),
(2,98040203043,1,4),
(3,98040203043,2,4),
(4,97040203043,3,2),
(5,98040203123,4,4);


select * from Produkt
select * from Ksiazka
select * from Autor
Select * from Nauczyciel
Select * from Dyzur
Select * from Uczen
Select * from Klasa
Select * from Absolwenci
Select * from Plan_lekcji
select *from Sala
select *from Przedmiot

select dbo.cenaProduktu('banan') as Cena
select * from dbo.produktyNieDrozszeNiz(4)

exec czyIstniejeProdukt 
@nazwa = 'banan' 
Go

select * from dbo.ktoJestAutoremKsiazki('To')

Select dbo.cenaProduktu('Sok');

Select *
from dbo.produktyNieDrozszeNiz(5)

Select *
from dbo.ktoJestAutoremKsiazki('Tomek Wilmowski')



Select *
from dbo.DyzurNauczyciela('Adam', 'Kowalski')


Select *
from dbo.UczniowieKlasy('3b')


Select Imie, Nazwisko
from dbo.AbsolwenciRoku(2013)


Select *
from dbo.PlanLekcjiKlasy('3a')

select * from
dbo.ZajetaSala(2)




select *from Oceny
exec DodajOcene
@id = 12,
@imie = 'Piotr',
@nazwisko = 'Kowalski',
@ocena = 4,
@przedmiot = 'muzyka'
Go
select *from Oceny

--select *from oceny
--delete from Oceny where Pesel_ucznia is NULL

/*
delete from Plan_lekcji
delete from Absolwenci
delete from Uczen
delete from Klasa
delete from Oceny
delete from Przedmiot
delete from Sala
delete from Sklepik
delete from Produkt
delete from Nauczyciel
delete from Dyzur
delete from Data
delete from Pracownik
delete from Zawod
delete from Biblioteka
delete from Ksiazka
delete from Autor
*/