CREATE TRIGGER DELETE_Workers ON Workers
INSTEAD OF DELETE
AS
BEGIN
  Select 'Instead of trigger �rne�i' as [Message]
END;

delete from Workers WHERE ID=1
select * from Workers