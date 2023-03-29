CONNECT sys/oracle@//localhost/ftex AS SYSDBA;
GRANT read, write on directory DATA_PUMP_DIR to TPE;
GRANT DATAPUMP_EXP_FULL_DATABASE to TPE;
CONNECT system/oracle@//localhost/ftex
ALTER TABLESPACE tpe_data READ ONLY;
ALTER TABLESPACE tpe_index READ ONLY;
HOST expdp system/oracle@ftex dumpfile=tpe_expdat.dmp directory=data_pump_dir transport_tablespaces=TPE_DATA,TPE_INDEX transport_full_check=y logfile=tts_export.log
