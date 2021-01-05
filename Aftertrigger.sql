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






TRUNCATE TABLE Workers

INSERT INTO Workers VALUES(1,'Ali');
select * from Workers;
UPDATE Workers SET wName='Ahmet';
select * from Workers;

