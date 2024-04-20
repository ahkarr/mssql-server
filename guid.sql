CREATE DATABASE s9demo;

USE [s9demo]
GO

CREATE TABLE CustomerInfor(
CustomerName NVARCHAR(50),
Phone NVARCHAR(20),
Email NVARCHAR(30)
);

INSERT INTO CustomerInfor (CustomerName,Phone,Email)
VALUES
('s9admin','01-123456','s9admin@gmail.com'),
('neptune','01-123456','neptune@gmail.com'),
('optimal9','01-123456','optimal9@gmail.com'),
('mssql-server','01-123456','mssql-server@gmail.com'),
('docker','01-123456','docker@gmail.com'),
('mysql','01-123456','mysql@gmail.com'),
('postgrel','01-123456','postgrel@gmail.com'),
('db2','01-123456','db2@gmail.com');

SELECT * FROM CustomerInfor

ALTER TABLE CustomerInfor
ADD GUID NVARCHAR(50);

BEGIN TRAN;
UPDATE CustomerInfor
SET GUID = NEWID();
COMMIT TRAN;

SELECT * FROM CustomerInfor;

ALTER TABLE CustomerInfor
ALTER COLUMN GUID NVARCHAR(50) NOT NULL;

ALTER TABLE CustomerInfor
ADD CONSTRAINT PK_Customer PRIMARY KEY (GUID);