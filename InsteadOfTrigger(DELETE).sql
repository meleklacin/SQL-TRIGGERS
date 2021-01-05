CREATE TRIGGER DELETE_Workers ON Workers
INSTEAD OF DELETE
AS
BEGIN
  Select 'Instead of trigger örneði' as [Message]
END;

delete from Workers WHERE ID=1
select * from Workers


----Öncelikle trigger daha sonra aşağıdaki kod çalıştırılır.


delete from Workers WHERE ID=1
select * FROM Workers
---Trigger ile verilen mesaj ekranda görünür.
