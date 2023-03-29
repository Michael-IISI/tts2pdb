--
-- Pick a Self-Contained Set of Tablespaces
--
CONNECT sys/oracle@//localhost/ftex as sysdba
-- GRANT EXECUTE_CATALOG_ROLE to system;
-- GRANT EXECUTE ON DBMS_TTS to system;
-- CONNECT system/oracle@//localhost/ftex
EXECUTE DBMS_TTS.TRANSPORT_SET_CHECK('TPE_DATA, TPE_INDEX', TRUE, TRUE)
SELECT * FROM TRANSPORT_SET_VIOLATIONS;
