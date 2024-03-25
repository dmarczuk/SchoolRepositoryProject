IF OBJECT_ID('UstawDateDostawy') IS NOT NULL
DROP TRIGGER UstawDateDostawy
GO
create trigger UstawDateDostawy on Sklepik
after insert
AS
begin
Update Sklepik
set Data_dostawy = GETDATE()
FROM inserted
WHERE Sklepik.Id = inserted.Id
END
GO
/*
IF OBJECT_ID('DataUkonczeniaSzkoly') IS NOT NULL
DROP TRIGGER DataUkonczeniaSzkoly
GO
CREATE TRIGGER DataUkonczeniaSzkoly ON Absolwenci
AFTER INSERT
AS
BEGIN
UPDATE Absolwenci
set Data_ukonczenia = GETDATE()
from inserted
where Absolwenci.Pesel = inserted.Pesel
END
GO
*/

IF OBJECT_ID('WypozyczenieKsiazki') IS NOT NULL
DROP TRIGGER WypozyczenieKsiazki
GO
create trigger WypozyczenieKsiazki on Biblioteka
after insert
AS
begin
Update Biblioteka
set Do_kiedy = GETDATE() + 30
FROM inserted
WHERE Biblioteka.Id = inserted.Id
END
GO





