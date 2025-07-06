SET SERVEROUT ON
SET PAGESIZE 1000
SET LONG 2000000
SET LINESIZE 400
SET FEEDBACK OFF

BEGIN

  DBMS_OUTPUT.PUT_LINE('These AWR snapshots were created today:');
END;
/

SELECT snap_id
FROM dba_hist_snapshot
WHERE to_char(begin_interval_time,'DD-MON-YY') = to_char(sysdate,'DD-MON-YY')
ORDER BY snap_id;

