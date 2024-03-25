

if OBJECT_ID('cenaProduktu') IS NOT NULL DROP Function cenaProduktu
Go

Create FUNCTION dbo.cenaProduktu (@nazwa AS VARCHAR(200)) RETURNS INT
AS
BEGIN
DECLARE @cena INT
set @cena = (select cena from Produkt where Nazwa = @nazwa)
return @cena
END

GO


if OBJECT_ID('produktyNieDrozszeNiz') IS NOT NULL DROP Function produktyNieDrozszeNiz
Go
Create Function dbo.produktyNieDrozszeNiz(@ile as int) 
returns table
AS
return (select * from Produkt where Cena <= @ile)

Go

IF OBJECT_ID('ktoJestAutoremKsiazki') IS NOT NULL DROP FUNCTION ktoJestAutoremKsiazki

GO
CREATE FUNCTION dbo.ktoJestAutoremKsiazki(@nazwa AS CHAR(200)) 
RETURNS TABLE
AS 
return (select Imie, Nazwisko from Autor A CROSS APPLY
	( 
	SELECT * FROM Ksiazka K where A.IdAutora = K.IdAutora
	) As I 
where I.Tytul = @nazwa
)
Go


if OBJECT_ID('ktoUczyPrzedmiotu') IS NOT NULL DROP Function ktoUczyPrzedmiotu
Go
CREATE FUNCTION dbo.ktoUczyPrzedmiotu(@nazwa AS CHAR(200)) 
returns table
as
return (select Imie, Nazwisko from Nauczyciel N Cross Apply
	(
	 Select * from Przedmiot P where N.IdPrzedmiotu = P.IdPrzedmiotu
	) as I
where I.Nazwa = @nazwa
)
Go


IF OBJECT_ID('DyzurNauczyciela') IS NOT NULL DROP FUNCTION DyzurNauczyciela

GO
CREATE FUNCTION dbo.DyzurNauczyciela(@imie AS CHAR(200),@nazwisko AS CHAR(200)) 
RETURNS TABLE
AS

return (select B.Imie, B.Nazwisko, C.Dzien, C.Od, C.Do, A.NrSali 
        from Dyzur A join Nauczyciel B on A.Id_dyzuru = B.DyzurID 
        join Data C on A.Data=C.Id_daty
        where B.Imie = @imie and B.Nazwisko=@nazwisko)
Go


IF OBJECT_ID('UczniowieKlasy') IS NOT NULL DROP FUNCTION UczniowieKlasy

GO
CREATE FUNCTION dbo.UczniowieKlasy(@nazwaklasy AS CHAR(3)) 
RETURNS TABLE
AS 

    return (select Imie, Nazwisko from Uczen A CROSS APPLY
	( 
	    SELECT * FROM Klasa K where A.NrKlasy = K.NrKlasy
	) As I 
where I.NrKlasy = @nazwaklasy
)
Go

IF OBJECT_ID('AbsolwenciRoku') IS NOT NULL DROP FUNCTION AbsolwenciRoku

Go
Create Function dbo.AbsolwenciRoku(@rok as int) 
returns table
AS
return (select * from Absolwenci where Data_ukonczenia <= @rok)

Go

IF OBJECT_ID('PlanLekcjiKlasy') IS NOT NULL DROP FUNCTION PlanLekcjiKlasy

GO
CREATE FUNCTION dbo.PlanLekcjiKlasy(@nazwaklasy AS CHAR(3)) 
RETURNS TABLE
AS 

return (select A.NrKlasy,B.Dzien, B.Od, B.Do, C.Nazwa, A.NrSali
        from Plan_lekcji A join Data B on A.Data = B.Id_daty 
        join Przedmiot C on A.Przedmiot=C.IdPrzedmiotu
        where A.NrKlasy = @nazwaklasy)

Go


IF OBJECT_ID('OcenyUcznia') IS NOT NULL DROP FUNCTION OcenyUcznia

GO
CREATE FUNCTION dbo.OcenyUcznia(@imie AS CHAR(200), @nazwisko AS CHAR(200)) 
RETURNS TABLE
AS 

return (select B.Imie, B.Nazwisko, A.Ocena, C.Nazwa as Przedmiot from Oceny A join Uczen B on A.Pesel_ucznia = B.Pesel 
        join Przedmiot C on A.Przedmiot = C.IdPrzedmiotu
        where B.Imie = @imie and
		      B.Nazwisko = @nazwisko)

Go

IF OBJECT_ID('ZajetaSala') IS NOT NULL DROP FUNCTION ZajetaSala

GO
CREATE FUNCTION dbo.ZajetaSala(@sala AS INT) 
RETURNS TABLE
AS 

return (select Nr_Sali, E.Dzien, E.Od, E.Do, C.Nazwa, B.NrKlasy, D.Imie, D.Nazwisko from Sala A join Plan_lekcji B on A.Nr_Sali = B.NrSali
        join Przedmiot C on B.Przedmiot = C.IdPrzedmiotu
		join Nauczyciel D on B.Prowadzacy_pesel = D.Pesel
		join Data E on B.Data = E.Id_daty
        where A.Nr_Sali = @sala)

Go