--
-- FTEX
--
CONNECT sys/oracle@//localhost/FTEX as sysdba
CREATE TABLESPACE tpe_data DATAFILE '/u02/oradata/FTEX/tep_data01.dbf' SIZE 1G;
CREATE TABLESPACE tpe_index DATAFILE '/u02/oradata/FTEX/tep_index01.dbf' SIZE 1G;

CREATE USER tpe IDENTIFIED BY oracle
DEFAULT TABLESPACE tpe_data;
GRANT DBA TO tpe;
ALTER USER tpe QUOTA UNLIMITED ON tpe_data;
ALTER USER tpe QUOTA UNLIMITED ON tpe_index;

CONNECT tpe/oracle@//localhost/FTEX
CREATE TABLE tpe_objects AS 
SELECT * FROM dba_objects;
CREATE INDEX tpe_index ON tpe_objects(object_name)
TABLESPACE tpe_index;
