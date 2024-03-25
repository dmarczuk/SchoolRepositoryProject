--1--

IF OBJECT_ID('dodajUcznia') IS NOT NULL DROP PROC dodajUcznia

GO
CREATE PROC dodajUcznia(
@imie char(200),
@nazwisko char(200),
@pesel char(11),
@klasa char(2)
)
AS
BEGIN TRY

IF(EXISTS(SELECT Pesel FROM UCZEN where Pesel = @pesel))
BEGIN
	RAISERROR('UCZEN KTOREGO PESEL TO: %s JUZ ISTNIEJE W BAZIE!',16,1,@pesel)
END

INSERT INTO Uczen values(@imie, @nazwisko, @pesel, @klasa)

Update Klasa set Liczba_uczniow += 1 where NrKlasy = @klasa

END TRY
BEGIN CATCH
	DECLARE @ErrorMessage VARCHAR(4000)
	DECLARE @ErrorSeverity INT
	DECLARE @ErrorState INT
	SET @ErrorMessage = ERROR_MESSAGE()
	SET @ErrorSeverity = ERROR_SEVERITY()
	SET @ErrorState = ERROR_STATE()
	RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
END CATCH

GO
/*
exec dodajUcznia
@imie = 'Adam',
@nazwisko = 'Pierwszy',
@pesel = '1',
@klasa = '1'
Go
*/


--2--

IF OBJECT_ID('usunUcznia') IS NOT NULL DROP PROC usunUcznia

GO
CREATE PROC usunUcznia(
@imie char(200),
@nazwisko char(200),
@pesel char(11),
@klasa char(2)
)
AS
BEGIN TRY

IF(NOT EXISTS(SELECT Pesel FROM UCZEN where Pesel = @pesel))
BEGIN
	RAISERROR('UCZEN KTOREGO PESEL TO: %s NIE ISTNIEJE W BAZIE!',16,1,@pesel)
END

DELETE FROM Uczen WHERE Pesel = @pesel

Update Klasa set Liczba_uczniow -= 1 where NrKlasy = @klasa

END TRY
BEGIN CATCH
	DECLARE @ErrorMessage VARCHAR(4000)
	DECLARE @ErrorSeverity INT
	DECLARE @ErrorState INT
	SET @ErrorMessage = ERROR_MESSAGE()
	SET @ErrorSeverity = ERROR_SEVERITY()
	SET @ErrorState = ERROR_STATE()
	RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
END CATCH

GO

/*
exec usunUcznia
@imie = 'Adam',
@nazwisko = 'Pierwszy',
@pesel = '1',
@klasa = '1'
Go
*/
----------------------


--3--

if OBJECT_ID('czyIstniejeProdukt') IS NOT NULL DROP Proc czyIstniejeProdukt

Go

Create proc czyIstniejeProdukt(@nazwa AS VARCHAR(200)) 
AS
BEGIN
IF(EXISTS(SELECT NAZWA FROM Produkt Where Nazwa = @nazwa))
begin
Print 'Produkt ' + @nazwa + ' istnieje'
end
else
begin
Print 'Produkt ' + @nazwa + ' nie istnieje'
end

END

Go



----------------------
/*
IF OBJECT_ID('dodajNauczyciela') IS NOT NULL DROP PROC dodajNauczyciela

GO
CREATE PROC dodajNauczyciela(
@imie char(200),
@nazwisko char(200),
@pesel char(11),
@klasa char(2)
)
AS
BEGIN TRY

IF(EXISTS(SELECT Pesel FROM NAUCZYCIEL where Pesel = @pesel))
BEGIN
	RAISERROR('NAUCZYCIEL KTOREGO PESEL TO: %s JUZ ISTNIEJE W BAZIE!',16,1,@pesel)
END

INSERT INTO Nauczyciel values(@imie, @nazwisko, @pesel, @klasa)

Update Klasa set Liczba_uczniow += 1 where NrKlasy = @klasa

END TRY
BEGIN CATCH
	DECLARE @ErrorMessage VARCHAR(4000)
	DECLARE @ErrorSeverity INT
	DECLARE @ErrorState INT
	SET @ErrorMessage = ERROR_MESSAGE()
	SET @ErrorSeverity = ERROR_SEVERITY()
	SET @ErrorState = ERROR_STATE()
	RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
END CATCH

GO
*/


--4--

IF OBJECT_ID('zakonczRokSzkolny') IS NOT NULL DROP PROC zakonczRokSzkolny

Go
Create Procedure zakonczRokSzkolny
AS
BEGIN
INSERT INTO Absolwenci (Imie, Nazwisko, Pesel)
select Imie, Nazwisko, Pesel from Uczen where NrKlasy = '3'
delete from Uczen where NrKlasy = '3'
update Uczen
set NrKlasy = '3' where NrKlasy = '2'
update Uczen
set NrKlasy = '2' where NrKlasy = '1'

END
Go


--5--

IF OBJECT_ID('DodajOcene') IS NOT NULL DROP PROC DodajOcene

Go
Create Procedure DodajOcene(
@id int,
@imie char(200),
@nazwisko char(200),
@ocena int,
@przedmiot char(200)
)
AS
BEGIN TRY
    DECLARE @pesel char(11)
	DECLARE @id_przedmiotu int
    set @pesel = (select Pesel from Uczen 
         where Imie = @imie and
		       Nazwisko = @nazwisko
		 )
	IF(@pesel is NULL)
    BEGIN
	    RAISERROR('Taki uczen nie istnieje',16,1,@pesel)
    END
	
	set @id_przedmiotu = (select IdPrzedmiotu from Przedmiot
	                       where Nazwa = @przedmiot
						   )
    INSERT INTO Oceny Values(@id,@pesel, @id_przedmiotu, @ocena)
--end

END TRY
BEGIN CATCH
	DECLARE @ErrorMessage VARCHAR(4000)
	DECLARE @ErrorSeverity INT
	DECLARE @ErrorState INT
	SET @ErrorMessage = ERROR_MESSAGE()
	SET @ErrorSeverity = ERROR_SEVERITY()
	SET @ErrorState = ERROR_STATE()
	RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState)
END CATCH

Go
/*
select *from uczen
select *from Oceny
exec DodajOcene
@id = 1
@imie = 'Maciej',
@nazwisko = 'Krzyk',
@ocena = 4,
@przedmiot = 'muzyka'
Go
*/

