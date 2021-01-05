CREATE TRIGGER UPD_Workers ON Workers
FOR UPDATE 
NOT FOR REPLICATION 
AS
 
BEGIN
  INSERT INTO infworker
  SELECT wID
    ,getdate()
  FROM inserted
END;


-----Öncelikle yukarıdaki trigger'ı çalıştırarak oluştururuz.
-----Ardından aşağıdaki kısımları tek tek çalıştırırsak TRUNCATE ile tabloya boşaltıp ekleme yaptığımızda Trigger harekete geçer.



TRUNCATE TABLE Workers

INSERT INTO Workers VALUES(1,'Ali');
select * from Workers;
UPDATE Workers SET wName='Ahmet';
select * from Workers;

