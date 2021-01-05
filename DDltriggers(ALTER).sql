CREATE TABLE TabloSemaDonusturme (eventDonusum xml, Tarih datetime);







 
CREATE TRIGGER ALTERTABLE ON DATABASE
FOR ALTER_TABLE
AS
BEGIN
 
INSERT INTO TabloSemaDonusturme
SELECT EVENTDATA(),GETDATE()
 
END